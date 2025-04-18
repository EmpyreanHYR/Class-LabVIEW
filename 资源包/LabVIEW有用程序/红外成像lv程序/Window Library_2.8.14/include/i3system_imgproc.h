/** @file
@brief  This file defines functions for thermal image processing. It uses opencv (opencv_core and opencv_imgproc).
*/
#pragma once
#ifndef I3SYSTEM_IMGPROC_H
#define I3SYSTEM_IMGPROC_H

#ifdef I3_DLL_EXPORT
#ifndef I3_LIB_API
#define I3_LIB_API __declspec(dllexport)
#endif
#else
#ifndef I3_LIB_API
#define I3_LIB_API __declspec(dllimport)
#endif
#endif

#pragma warning(disable:4297)

// used opencv library
#ifdef _DEBUG
#pragma comment(lib, "opencv_core249d.lib")
#pragma comment(lib, "opencv_imgproc249d.lib")
#else
#pragma comment(lib, "opencv_core249.lib")
#pragma comment(lib, "opencv_imgproc249.lib")
#endif

#include "opencv2/core/core.hpp"
#include "opencv2/imgproc/imgproc.hpp"

namespace i3 {

	/**
	@brief Apply AIE algorithm
	@param _srcImg : Source image to apply AIE algorithm (cv::Mat with CV_8UC1)
	@param _dstImg : AIE applied Output image (cv::Mat with CV_8UC1)
	@param _factor : Edge enhancement factor. As the _factor value is set  higher, edge will be more enhanced but image will be more noisier.
	@remark This function applies AIE algorithm to enhance edge in _srcImg and returns output image in _dstImg. This function get 8bit gray image, so 16bit image data which is received from TE should be converted to 8bit before apply AIE.
	*/
	extern "C" I3_LIB_API void AIE(cv::Mat &_srcImg, cv::Mat &_dstImg, double _factor);

	extern "C" I3_LIB_API bool TProcessing(unsigned short *result, unsigned short *input, int height, int width, int filterSize, double lambda, bool denoise, bool ams_remove, bool he, bool denoise2, int agc);

	extern "C" I3_LIB_API void InitBilateralFilter();
	extern "C" I3_LIB_API void ChangeBilateralFilter(int sigma);
}
#endif // I3SYSTEM_IMGPROC_H

