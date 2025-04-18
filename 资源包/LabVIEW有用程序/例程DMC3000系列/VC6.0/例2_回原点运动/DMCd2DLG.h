// DMCd2Dlg.h : header file
//

#if !defined(AFX_DMCd2DLG_H__2B500BA3_B2B9_4692_B69C_12445D6E4345__INCLUDED_)
#define AFX_DMCd2DLG_H__2B500BA3_B2B9_4692_B69C_12445D6E4345__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CDMCd2Dlg dialog

class CDMCd2Dlg : public CDialog
{
// Construction
public:
	CDMCd2Dlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CDMCd2Dlg)
	enum { IDD = IDD_DMCd2_DIALOG };
	long	m_nUposition;
	long	m_nXposition;
	long	m_nYposition;
	long	m_nZposition;
	int		m_nLowspeed;
	int		m_nPositive;
	int		m_nXaixs;
	int     m_nStatus;
	double	m_nSPara;
	double	m_nAcc;
	double	m_nDec;
	double	m_nSpeedmax;
	int		m_nHome;
	WORD m_Card;
	double	m_NowSpe;
	double	m_nSpeedmin;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CDMCd2Dlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CDMCd2Dlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnDestroy();
	afx_msg void OnTimer(UINT nIDEvent);
	afx_msg void OnZero();
	afx_msg void OnReset();
	afx_msg void OnStop();
	afx_msg void OnEstop();
	afx_msg void OnClose();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_DMCd2DLG_H__2B500BA3_B2B9_4692_B69C_12445D6E4345__INCLUDED_)
