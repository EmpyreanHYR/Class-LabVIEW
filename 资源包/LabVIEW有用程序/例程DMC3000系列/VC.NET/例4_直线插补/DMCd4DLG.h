// DMCd4Dlg.h : header file
//

#if !defined(AFX_DMCd4DLG_H__E9A66667_54F1_459D_8C98_F31BD8A80CB0__INCLUDED_)
#define AFX_DMCd4DLG_H__E9A66667_54F1_459D_8C98_F31BD8A80CB0__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CDMCd4Dlg dialog

class CDMCd4Dlg : public CDialog
{
// Construction
public:
	int status;
	CDMCd4Dlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CDMCd4Dlg)
	enum { IDD = IDD_DMCd4_DIALOG };
	long	m_nXdist;
	long	m_nSpeedrun;
	long	m_nUdist;
	long	m_nUpos;
	long	m_nXpos;
	long	m_nYdist;
	long	m_nYpos;
	long	m_nZdist;
	int		m_nCard;
	int		m_nAxis;
	long	m_nZpos;
	double	m_fTAcc;
	int	m_nCrd;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CDMCd4Dlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CDMCd4Dlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnDestroy();
	afx_msg void OnTimer(UINT nIDEvent);
	afx_msg void OnButtonRun();
	afx_msg void OnButtonDstop();
	afx_msg void OnButtonEstop();
	afx_msg void OnButtonReset();
	afx_msg void OnButtonCancel();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_DMCd4DLG_H__E9A66667_54F1_459D_8C98_F31BD8A80CB0__INCLUDED_)
