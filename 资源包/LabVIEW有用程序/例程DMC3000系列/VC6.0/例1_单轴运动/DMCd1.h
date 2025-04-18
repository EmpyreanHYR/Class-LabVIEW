// DMCd1.h : main header file for the DMCd1 application
//

#if !defined(AFX_DMCd1_H__80B2CBCA_E9EB_4F4A_8DF4_5FAA384FAAC3__INCLUDED_)
#define AFX_DMCd1_H__80B2CBCA_E9EB_4F4A_8DF4_5FAA384FAAC3__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CDMCd1App:
// See DMCd1.cpp for the implementation of this class
//

class CDMCd1App : public CWinApp
{
public:
	CDMCd1App();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CDMCd1App)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CDMCd1App)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_DMCd1_H__80B2CBCA_E9EB_4F4A_8DF4_5FAA384FAAC3__INCLUDED_)
