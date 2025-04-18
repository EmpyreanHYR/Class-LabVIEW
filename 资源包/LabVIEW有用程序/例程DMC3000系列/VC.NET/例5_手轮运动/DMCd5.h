// DMCd5.h : main header file for the DMCd5 application
//

#if !defined(AFX_DMCd5_H__98055913_094D_4EA2_8B2F_4ED6242F0CAC__INCLUDED_)
#define AFX_DMCd5_H__98055913_094D_4EA2_8B2F_4ED6242F0CAC__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CDMCd5App:
// See DMCd5.cpp for the implementation of this class
//

class CDMCd5App : public CWinApp
{
public:
	CDMCd5App();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CDMCd5App)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CDMCd5App)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_DMCd5_H__98055913_094D_4EA2_8B2F_4ED6242F0CAC__INCLUDED_)
