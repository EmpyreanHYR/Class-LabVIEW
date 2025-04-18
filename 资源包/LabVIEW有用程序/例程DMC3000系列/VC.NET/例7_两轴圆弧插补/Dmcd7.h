// Dmcd7.h : main header file for the DMCD7 application
//

#if !defined(AFX_DMCD7_H__53127932_EB57_405F_A08D_2E41DB9468C3__INCLUDED_)
#define AFX_DMCD7_H__53127932_EB57_405F_A08D_2E41DB9468C3__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CDmcd7App:
// See Dmcd7.cpp for the implementation of this class
//

class CDmcd7App : public CWinApp
{
public:
	CDmcd7App();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CDmcd7App)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CDmcd7App)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_DMCD7_H__53127932_EB57_405F_A08D_2E41DB9468C3__INCLUDED_)
