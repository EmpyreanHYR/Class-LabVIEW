// DMCd3.h : main header file for the DMCd3 application
//

#if !defined(AFX_DMCd3_H__2C4ED6B2_17B2_4659_8058_500EDD3867A8__INCLUDED_)
#define AFX_DMCd3_H__2C4ED6B2_17B2_4659_8058_500EDD3867A8__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CDMCd3App:
// See DMCd3.cpp for the implementation of this class
//

class CDMCd3App : public CWinApp
{
public:
	CDMCd3App();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CDMCd3App)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CDMCd3App)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_DMCd3_H__2C4ED6B2_17B2_4659_8058_500EDD3867A8__INCLUDED_)
