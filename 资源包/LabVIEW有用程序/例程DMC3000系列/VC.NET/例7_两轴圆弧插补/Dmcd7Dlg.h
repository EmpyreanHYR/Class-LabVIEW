// Dmcd7Dlg.h : header file
//

#if !defined(AFX_DMCD7DLG_H__C8144BC9_811F_404A_9510_066AD992BA50__INCLUDED_)
#define AFX_DMCD7DLG_H__C8144BC9_811F_404A_9510_066AD992BA50__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CDmcd7Dlg dialog

class CDmcd7Dlg : public CDialog
{
// Construction
public:
	CDmcd7Dlg(CWnd* pParent = NULL);	// standard constructor
	WORD m_nCard;

// Dialog Data
	//{{AFX_DATA(CDmcd7Dlg)
	enum { IDD = IDD_DMCD7_DIALOG };
	long	m_Xpos;
	long	m_Ypos;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CDmcd7Dlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CDmcd7Dlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnRun();
	afx_msg void OnTimer(UINT nIDEvent);
	afx_msg void OnDestroy();
	afx_msg void OnExit();
	afx_msg void OnSetZoro();
	afx_msg void OnMStop();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_DMCD7DLG_H__C8144BC9_811F_404A_9510_066AD992BA50__INCLUDED_)
