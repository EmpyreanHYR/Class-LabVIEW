
// Include files

#include "toolbox.h"
#include <utility.h>
#include "demo dll.h"

const double pi=3.1415926;

double  add (double x,double y)
{
	return x+y;
}


void __stdcall CircleArea(double radius,double * area)
{
	
	  *area=pi*radius*radius;
	
}



void _stdcall RandomArray(double array[],int size,double min,double max)
{

	for(int i=0;i<size;i++) array[i]=Random(min,max);
	 
}

void __stdcall Random2DArray(double *array,int row,int col,double min,double max)
{
	
    double offset=0;
	for(int i=0;i<row;i++)
		{
		
		   offset++=(double)i*(max-min);    
		   for(int j=0;j<col;j++)
		   {
			array[i*col+j]=Random(min,max)+offset;   
			   
		   }
		   
		  
		
	}
	
		
	}

  void __stdcall OffsetRect(Rect *rectangle,int dx,int dy)
  {
	  
    	rectangle->left+=dx;
		rectangle->top+=dy;
		
	  
  }

  void __stdcall AreaOfRect(Rect rectangle,double *area)
  {
	  
  	*area=rectangle.width * rectangle.height;	  
	  
  }
  
  void __stdcall StrcatString(char *str1,char *str2,char *strcatstring)
  {
	  
   	  strcpy(strcatstring,str1);
	  strcat(strcatstring,str2);
	  
	  				   
  }
	  
 void __stdcall OffsetTwoPointsRect(TwoPointsRect *rect,Point *OffsetPoint)
 {
	 
    rect->LeftTopPoint.x+=OffsetPoint->x;
	rect->LeftTopPoint.y+=OffsetPoint->y ;
	rect->RighBottomPoint.x+=OffsetPoint->x;
	rect->RighBottomPoint.y+=OffsetPoint->y;
	
	 
 }
  
 void __stdcall ReadADWaveForm(ADWaveForm *ADData)
 {
		
 	ADData->SampleRate=1000;
	
	for(int i=0;i<256;i++) ADData->WaveForm[i]=Random(0,1)*(ADData->Scale);
		
 }
  
  ///////////////////////////////////////////
  
  int _stdcall CheckByteAlign(void)
  {
	  
    struct Align
	{
		
	   char a;
	   int b;
  	   double c;
       char d;
		
	}  TestAlign;
	
	return sizeof(TestAlign);
	  
	  
  }
  
 void __stdcall LVClusterPack1(LVCluster *cluster)
{
    cluster->U8=0x17;
	cluster->I32=123;
	cluster->DBL=3.1315926;
	
	
}
  
void __stdcall CStructNoPack(CStruct *pCluster)
{
    pCluster->U8=0x17;
	pCluster->I32=123;
	pCluster->DBL=3.1315926;
	
}

///////////////////////////////////////////////

LVCluster __stdcall ReturnLVClusterPack1(void)
{
	
   LVCluster cluster;
   cluster.U8=0x17;
   cluster.I32=128;
   cluster.DBL=3.1415926;
   
   return cluster;
	
	
}


LVCluster * __stdcall ReturnLVClusterPack1Pointer(void)
{
	
       LVCluster *p=(LVCluster *)malloc(sizeof(LVCluster));
		   
	   *p=ReturnLVClusterPack1();
	   
	   return p;
	   	   
	
}

void __stdcall ReadLVClusterByPara(LVCluster *p)
{
	
   
	*p=*(ReturnLVClusterPack1Pointer());	
	
	
}



	
  
//==============================================================================
// DLL main entry-point functions

int __stdcall DllMain (HINSTANCE hinstDLL, DWORD fdwReason, LPVOID lpvReserved)
{
	switch (fdwReason) {
		case DLL_PROCESS_ATTACH:
			if (InitCVIRTE (hinstDLL, 0, 0) == 0)
				return 0;	  /* out of memory */
			break;
		case DLL_PROCESS_DETACH:
			CloseCVIRTE ();
			break;
	}
	
	return 1;
}

int __stdcall DllEntryPoint (HINSTANCE hinstDLL, DWORD fdwReason, LPVOID lpvReserved)
{
	/* Included for compatibility with Borland */

	return DllMain (hinstDLL, fdwReason, lpvReserved);
}
