// DMCd6Dlg.h : header file
//
#include "LTDMC.h"	// Added by ClassView
//#include "BtnST.h"
#if !defined(AFX_1DLG_H__3964CE6E_7D18_4B64_A040_03582A3C6588__INCLUDED_)
#define AFX_1DLG_H__3964CE6E_7D18_4B64_A040_03582A3C6588__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CMy1Dlg dialog

class CMy1Dlg : public CDialog
{
// Construction
public:
	BOOL CIrStatus;
	CMy1Dlg(CWnd* pParent = NULL);	// standard constructor
	WORD m_axis;
	WORD m_Card;
// Dialog Data
	//{{AFX_DATA(CMy1Dlg)
	enum { IDD = IDD_MY1_DIALOG };
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMy1Dlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CMy1Dlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	virtual void OnOK();
	virtual void OnCancel();
	afx_msg void OnBUTTONcls();
	afx_msg void OnBUTTONdec();
	afx_msg void OnBUTTONstop();
	afx_msg void OnTimer(UINT nIDEvent);
	afx_msg HBRUSH OnCtlColor(CDC* pDC, CWnd* pWnd, UINT nCtlColor);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
private:
	void DoEvents();
	CFont m_font;
	CBrush m_brush;
	CBrush m_Bkbrush;
	CBrush m_fkbrush;
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_1DLG_H__3964CE6E_7D18_4B64_A040_03582A3C6588__INCLUDED_)
