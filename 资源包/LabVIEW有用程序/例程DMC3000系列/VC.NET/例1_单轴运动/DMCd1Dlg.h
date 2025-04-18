// DMCd1Dlg.h : header file
//

#if !defined(AFX_DMCd1DLG_H__916DC54F_7A09_4953_8006_E6FF4EA47261__INCLUDED_)
#define AFX_DMCd1DLG_H__916DC54F_7A09_4953_8006_E6FF4EA47261__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CDMCd1Dlg dialog

class CDMCd1Dlg : public CDialog
{
// Construction
public:
	void UpdateControl();
	CDMCd1Dlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CDMCd1Dlg)
	enum { IDD = IDD_DMCd1_DIALOG };
	BOOL	m_bLogic;
	long	m_nPulse;
	int		m_nActionst;
	int		m_nAxis;
	WORD	m_nCard;
	double	m_nAcc;
	double	m_nDec;
	double	m_nSPara;
	double	m_nSpeed;
	double	m_nSpeedMin;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CDMCd1Dlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CDMCd1Dlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnTimer(UINT nIDEvent);
	afx_msg void OnButtonDo();
	afx_msg void OnButtonClear();
	afx_msg void OnButtonDecstop();
	afx_msg void OnButtonEmgstop();
	afx_msg void OnCheckLogic();
	afx_msg void OnRadioActionst();
	afx_msg void OnRadioCmove();
	afx_msg void OnDestroy();
	afx_msg void OnRadioSs();
	afx_msg void OnRadioAxisX();
	afx_msg void OnRadioAxisY();
	afx_msg void OnRadioAxisZ();
	afx_msg void OnRadioAxisU();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_DMCd1DLG_H__916DC54F_7A09_4953_8006_E6FF4EA47261__INCLUDED_)
