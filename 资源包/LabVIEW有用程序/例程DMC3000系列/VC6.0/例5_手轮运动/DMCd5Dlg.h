// DMCd5Dlg.h : header file
//

#if !defined(AFX_DMCd5DLG_H__7773F49D_990C_4167_AB4B_BBED782425AF__INCLUDED_)
#define AFX_DMCd5DLG_H__7773F49D_990C_4167_AB4B_BBED782425AF__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CDMCd5Dlg dialog

class CDMCd5Dlg : public CDialog
{
// Construction
public:
	CDMCd5Dlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CDMCd5Dlg)
	enum { IDD = IDD_DMCd5_DIALOG };
	long	m_nPos;
	int     m_nCard;
	int		m_nAxis;
	int 	m_nMulti;
	int		m_nMode;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CDMCd5Dlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CDMCd5Dlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnDestroy();
	afx_msg void OnTimer(UINT nIDEvent);
	afx_msg void OnButton1Run();
	afx_msg void OnButton2Estop();
	afx_msg void OnButton3Cancel();
	afx_msg void OnRADIOAxis0();
	afx_msg void OnRADIOAxis1();
	afx_msg void OnRADIOAxis2();
	afx_msg void OnRADIOAxis3();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_DMCd5DLG_H__7773F49D_990C_4167_AB4B_BBED782425AF__INCLUDED_)
