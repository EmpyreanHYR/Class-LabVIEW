//==============================================================================
//
// Title:		demo dll
// Purpose:		A short description of the interface.
//
// Created on:	2013/2/20 at 8:46:25 by Î¢ÈíÖÐ¹ú.
// Copyright:	Microsoft. All Rights Reserved.
//
//==============================================================================

#ifndef __demodll_H__
#define __demodll_H__

#ifdef __cplusplus
    extern "C" {
#endif

//==============================================================================
// Include files

#include "cvidef.h"
		
#include "userint.h"
		

//==============================================================================
// Constants

//==============================================================================
// Types
		
typedef struct
{
   Point LeftTopPoint;
   Point RighBottomPoint;
	
} TwoPointsRect;


typedef struct
{

  double SampleRate;
  double Scale;
  double WaveForm[256];

}ADWaveForm;



typedef struct{
	
	char U8;
	int  I32;
	double DBL;

}CStruct;

#pragma pack(push)   

#pragma pack(1)

typedef struct{
	
	char U8;
	int  I32;
	double DBL;

} LVCluster;



#pragma pack(pop)





//==============================================================================
// External variables

//==============================================================================
// Global functions

double add(double x,double y); 
void __stdcall CircleArea(double radius,double *area);
void __stdcall RandomArray(double array[],int size,double min,double max);
void __stdcall Random2DArray(double *Array,int row,int col,double min,double max);
void __stdcall OffsetRect(Rect *rectangle,int dx,int dy);
void __stdcall AreaOfRect(Rect rectangle,double *area);
void __stdcall StrcatString(char *str1,char *str2,char *strcatstring);	 
void __stdcall OffsetTwoPointsRect(TwoPointsRect *rect,Point *OffsetPoint);
void __stdcall ReadADWaveForm(ADWaveForm *ADData);

void __stdcall LVClusterPack1(LVCluster *pCluster);
void __stdcall CStructNoPack(CStruct *Cluster);

LVCluster __stdcall ReturnLVClusterPack1(void);

LVCluster * __stdcall ReturnLVClusterPack1Pointer(void);  
void __stdcall ReadLVClusterByPara(LVCluster *p);  
	
	
/////////////////////////////////////////////////////
	
int _stdcall CheckByteAlign(void) ;

																		 
																			 

#ifdef __cplusplus
    }
#endif

#endif  /* ndef __demodll_H__ */
