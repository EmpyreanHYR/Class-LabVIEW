/*
 * MATLAB Compiler: 6.3 (R2016b)
 * Date: Mon Jan 21 10:24:55 2019
 * Arguments: "-B" "macro_default" "-v" "-B" "csharedlib:exampleScript" "-W"
 * "lib:exampleScript" "-T" "link:lib" "exampleScript.m" 
 */

#ifndef __exampleScript_h
#define __exampleScript_h 1

#if defined(__cplusplus) && !defined(mclmcrrt_h) && defined(__linux__)
#  pragma implementation "mclmcrrt.h"
#endif
#include "mclmcrrt.h"
#ifdef __cplusplus
extern "C" {
#endif

#if defined(__SUNPRO_CC)
/* Solaris shared libraries use __global, rather than mapfiles
 * to define the API exported from a shared library. __global is
 * only necessary when building the library -- files including
 * this header file to use the library do not need the __global
 * declaration; hence the EXPORTING_<library> logic.
 */

#ifdef EXPORTING_exampleScript
#define PUBLIC_exampleScript_C_API __global
#else
#define PUBLIC_exampleScript_C_API /* No import statement needed. */
#endif

#define LIB_exampleScript_C_API PUBLIC_exampleScript_C_API

#elif defined(_HPUX_SOURCE)

#ifdef EXPORTING_exampleScript
#define PUBLIC_exampleScript_C_API __declspec(dllexport)
#else
#define PUBLIC_exampleScript_C_API __declspec(dllimport)
#endif

#define LIB_exampleScript_C_API PUBLIC_exampleScript_C_API


#else

#define LIB_exampleScript_C_API

#endif

/* This symbol is defined in shared libraries. Define it here
 * (to nothing) in case this isn't a shared library. 
 */
#ifndef LIB_exampleScript_C_API 
#define LIB_exampleScript_C_API /* No special import/export declaration */
#endif

extern LIB_exampleScript_C_API 
bool MW_CALL_CONV exampleScriptInitializeWithHandlers(
       mclOutputHandlerFcn error_handler, 
       mclOutputHandlerFcn print_handler);

extern LIB_exampleScript_C_API 
bool MW_CALL_CONV exampleScriptInitialize(void);

extern LIB_exampleScript_C_API 
void MW_CALL_CONV exampleScriptTerminate(void);



extern LIB_exampleScript_C_API 
void MW_CALL_CONV exampleScriptPrintStackTrace(void);

extern LIB_exampleScript_C_API 
bool MW_CALL_CONV mlxExampleScript(int nlhs, mxArray *plhs[], int nrhs, mxArray *prhs[]);



extern LIB_exampleScript_C_API bool MW_CALL_CONV mlfExampleScript(int nargout, mxArray** mOut2dArray, mxArray* mIn2dArray);

#ifdef __cplusplus
}
#endif
#endif
