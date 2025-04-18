// testView.h : interface of the CTestView class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_TESTVIEW_H__4395402C_F774_4BE2_9586_3E3FD7405AA5__INCLUDED_)
#define AFX_TESTVIEW_H__4395402C_F774_4BE2_9586_3E3FD7405AA5__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000


class CTestView : public CView
{
protected: // create from serialization only
	CTestView();
	DECLARE_DYNCREATE(CTestView)

// Attributes
public:
	CTestDoc* GetDocument();

// Operations
public:
	UCHAR status[8][10];
	BOOL flag_block,flag_alleyway,flag_box,
		 flag_circle,flag_face,flag_plus;

	BOOL flag_LBDown;
	int select_item;
	int pre_x,pre_y;
	int pre_sel_item;

	void ResetAllFlags();
	void ini_map();
	void display_rect(int x,int y,int n);
	BOOL detect_side(int x,int y);
	void MapToFile(UCHAR *sz_map,UCHAR *sz_file,int length);
	void FileToMap(UCHAR *sz_map,UCHAR *sz_file,int length);
	// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CTestView)
	public:
	virtual void OnDraw(CDC* pDC);  // overridden to draw this view
	virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
	protected:
	virtual BOOL OnPreparePrinting(CPrintInfo* pInfo);
	virtual void OnBeginPrinting(CDC* pDC, CPrintInfo* pInfo);
	virtual void OnEndPrinting(CDC* pDC, CPrintInfo* pInfo);
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CTestView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// Generated message map functions
protected:
	//{{AFX_MSG(CTestView)
	afx_msg void OnDrawBlock();
	afx_msg void OnDrawPath();
	afx_msg void OnDrawBox();
	afx_msg void OnDrawCircle();
	afx_msg void OnDrawPlus();
	afx_msg void OnDrawFace();
	afx_msg void OnUpdateSelect_Item(CCmdUI* pCmdUI);
	afx_msg void OnLButtonDown(UINT nFlags, CPoint point);
	afx_msg void OnMouseMove(UINT nFlags, CPoint point);
	afx_msg void OnLButtonUp(UINT nFlags, CPoint point);
	afx_msg void OnFileNew();
	afx_msg void OnFileOpen();
	afx_msg void OnFileSave();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

#ifndef _DEBUG  // debug version in testView.cpp
inline CTestDoc* CTestView::GetDocument()
   { return (CTestDoc*)m_pDocument; }
#endif

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_TESTVIEW_H__4395402C_F774_4BE2_9586_3E3FD7405AA5__INCLUDED_)
