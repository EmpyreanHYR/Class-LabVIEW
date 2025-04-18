// 单轴运动1.h : main header file for the 单轴运动1 application
//

#if !defined(AFX_1_H__3CBA9500_ADA0_42FF_AE2B_852F8774FD3D__INCLUDED_)
#define AFX_1_H__3CBA9500_ADA0_42FF_AE2B_852F8774FD3D__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CMy1App:
// See 单轴运动1.cpp for the implementation of this class
//

class CMy1App : public CWinApp
{
public:
	CMy1App();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMy1App)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CMy1App)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_1_H__3CBA9500_ADA0_42FF_AE2B_852F8774FD3D__INCLUDED_)
