// DMCd4.h : main header file for the DMCd4 application
//

#if !defined(AFX_DMCd4_H__13A6B64D_5DB3_4B5A_B841_9CDF6F5347D7__INCLUDED_)
#define AFX_DMCd4_H__13A6B64D_5DB3_4B5A_B841_9CDF6F5347D7__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CDMCd4App:
// See DMCd4.cpp for the implementation of this class
//

class CDMCd4App : public CWinApp
{
public:
	CDMCd4App();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CDMCd4App)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CDMCd4App)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_DMCd4_H__13A6B64D_5DB3_4B5A_B841_9CDF6F5347D7__INCLUDED_)
