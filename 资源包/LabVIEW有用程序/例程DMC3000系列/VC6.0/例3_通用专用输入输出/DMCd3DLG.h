// DMCd3Dlg.h : header file
//

#if !defined(AFX_DMCd3DLG_H__3C4DF6F6_71A7_4488_9076_E033B1751055__INCLUDED_)
#define AFX_DMCd3DLG_H__3C4DF6F6_71A7_4488_9076_E033B1751055__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CDMCd3Dlg dialog

class CDMCd3Dlg : public CDialog
{
// Construction
public:
	void UpdateControl();
	CDMCd3Dlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CDMCd3Dlg)
	enum { IDD = IDD_DMCd3_DIALOG };
	BOOL	m_bSvon;
	WORD m_Card;
	BOOL	m_bOut0;
	BOOL	m_bOut1;
	BOOL	m_bOut2;
	BOOL	m_bOut3;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CDMCd3Dlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CDMCd3Dlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnDestroy();
	afx_msg void OnTimer(UINT nIDEvent);
	afx_msg void OnCheck1Out1();
	afx_msg void OnCheck2Out2();
	afx_msg void OnCheck3Out3();
	afx_msg void OnCheck4Out4();
	afx_msg void OnCheck5Svon();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_DMCd3DLG_H__3C4DF6F6_71A7_4488_9076_E033B1751055__INCLUDED_)
