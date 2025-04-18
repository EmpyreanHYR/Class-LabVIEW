#include<stdio.h>
#include "exampleScript.h"

/*Wrapper for function exported by the MATLAB-generated DLL*/     

/*Function to initialize the called DLL*/
void loadExampleScript(void) {
	exampleScriptInitialize();
}

/*Function to terminate the called DLL*/
void unloadExampleScript(void) {
	exampleScriptTerminate();
}

/*Function that wraps the top-level m function and converts C types to/from the MATLAB mxArray type*/
int wmlfExampleScript(double* c2dArray, int numRows, int numColumns){
    
	/*Define variables*/
	int nargout=1;
	int result=1;
    
	/*Define pointers to MATLAB mxArray data*/
	mxArray *mIn2dArray;
	mxArray *mOut2Array=NULL;
    
	/*Convert C data to MATLAB data*/
	mIn2dArray=mxCreateDoubleMatrix(numRows, numColumns, mxREAL);
	memcpy(mxGetPr(mIn2dArray), c2dArray, numRows*numColumns*sizeof(double));
	
	/*Call the M function*/
	result=mlfExampleScript(nargout, &mOut2Array, mIn2dArray);
    
	/*Convert returned  MATLAB data to C data*/
	memcpy(c2dArray, mxGetPr(mOut2Array), numRows*numColumns*sizeof(double));
	
	/*Clean up MATLAB variables*/
	mxDestroyArray(mIn2dArray);
	mxDestroyArray(mOut2Array);
	
	return result;
}
