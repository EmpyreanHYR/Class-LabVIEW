// DMCd2.h : main header file for the DMCd2 application
//

#if !defined(AFX_DMCd2_H__E0CE5B4E_7420_4C1F_A192_8EEEC87101C0__INCLUDED_)
#define AFX_DMCd2_H__E0CE5B4E_7420_4C1F_A192_8EEEC87101C0__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CDMCd2App:
// See DMCd2.cpp for the implementation of this class
//

class CDMCd2App : public CWinApp
{
public:
	CDMCd2App();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CDMCd2App)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CDMCd2App)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_DMCd2_H__E0CE5B4E_7420_4C1F_A192_8EEEC87101C0__INCLUDED_)
