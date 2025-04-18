#include "extcode.h"
#pragma pack(push)
#pragma pack(1)

#ifdef __cplusplus
extern "C" {
#endif

/*!
 * BooleanOperation
 */
void __stdcall BooleanOperation(LVBoolean A, LVBoolean B, LVBoolean *AandB);
/*!
 * StrcatAndReverse
 */
void __stdcall StrcatAndReverse(LStrHandle *stringA, LStrHandle *stringB, 
	LStrHandle *CatAndReverse);

long __cdecl LVDLLStatus(char *errStr, int errStrLen, void *module);

#ifdef __cplusplus
} // extern "C"
#endif

#pragma pack(pop)

