// testView.cpp : implementation of the CTestView class
//

#include "stdafx.h"
#include "test.h"

#include "testDoc.h"
#include "testView.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CTestView

IMPLEMENT_DYNCREATE(CTestView, CView)

BEGIN_MESSAGE_MAP(CTestView, CView)
	//{{AFX_MSG_MAP(CTestView)
	ON_COMMAND(ID_DrawBlock, OnDrawBlock)
	ON_COMMAND(ID_DrawPath, OnDrawPath)
	ON_COMMAND(ID_DrawBox, OnDrawBox)
	ON_COMMAND(ID_DrawCircle, OnDrawCircle)
	ON_COMMAND(ID_DrawPlus, OnDrawPlus)
	ON_COMMAND(ID_DrawFace, OnDrawFace)
	ON_UPDATE_COMMAND_UI(ID_DrawBlock, OnUpdateSelect_Item)
	ON_WM_LBUTTONDOWN()
	ON_WM_MOUSEMOVE()
	ON_WM_LBUTTONUP()
	ON_UPDATE_COMMAND_UI(ID_DrawPath, OnUpdateSelect_Item)
	ON_UPDATE_COMMAND_UI(ID_DrawBox, OnUpdateSelect_Item)
	ON_UPDATE_COMMAND_UI(ID_DrawCircle, OnUpdateSelect_Item)
	ON_UPDATE_COMMAND_UI(ID_DrawPlus, OnUpdateSelect_Item)
	ON_UPDATE_COMMAND_UI(ID_DrawFace, OnUpdateSelect_Item)
	ON_COMMAND(IDS_FILE_NEW, OnFileNew)
	ON_COMMAND(IDS_FILE_OPEN, OnFileOpen)
	ON_COMMAND(IDS_FILE_SAVE, OnFileSave)
	//}}AFX_MSG_MAP
	// Standard printing commands
	ON_COMMAND(ID_FILE_PRINT, CView::OnFilePrint)
	ON_COMMAND(ID_FILE_PRINT_DIRECT, CView::OnFilePrint)
	ON_COMMAND(ID_FILE_PRINT_PREVIEW, CView::OnFilePrintPreview)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CTestView construction/destruction

CTestView::CTestView()
{
	// TODO: add construction code here
	ini_map();
}

CTestView::~CTestView()
{
}

BOOL CTestView::PreCreateWindow(CREATESTRUCT& cs)
{
	// TODO: Modify the Window class or styles here by modifying
	//  the CREATESTRUCT cs

	return CView::PreCreateWindow(cs);
}

/////////////////////////////////////////////////////////////////////////////
// CTestView drawing

void CTestView::OnDraw(CDC* pDC)
{
	CTestDoc* pDoc = GetDocument();
	ASSERT_VALID(pDoc);

	CWnd *m_pMainWnd;
    m_pMainWnd = AfxGetMainWnd();
	m_pMainWnd->SetWindowText("Boxman-MapEditor");

	int i,j;
	for(i=0;i<8;i++)
		for(j=0;j<10;j++)
		{
			display_rect(i*20,j*20,status[i][j]);
		}

}

/////////////////////////////////////////////////////////////////////////////
// CTestView printing

BOOL CTestView::OnPreparePrinting(CPrintInfo* pInfo)
{
	// default preparation
	return DoPreparePrinting(pInfo);
}

void CTestView::OnBeginPrinting(CDC* /*pDC*/, CPrintInfo* /*pInfo*/)
{
	// TODO: add extra initialization before printing
}

void CTestView::OnEndPrinting(CDC* /*pDC*/, CPrintInfo* /*pInfo*/)
{
	// TODO: add cleanup after printing
}

/////////////////////////////////////////////////////////////////////////////
// CTestView diagnostics

#ifdef _DEBUG
void CTestView::AssertValid() const
{
	CView::AssertValid();
}

void CTestView::Dump(CDumpContext& dc) const
{
	CView::Dump(dc);
}

CTestDoc* CTestView::GetDocument() // non-debug version is inline
{
	ASSERT(m_pDocument->IsKindOf(RUNTIME_CLASS(CTestDoc)));
	return (CTestDoc*)m_pDocument;
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CTestView message handlers
void CTestView::display_rect(int x,int y,int n)		
{
	int nID;
	switch(n)
	{
		case 1:	nID = IDB_block ;	break;
		case 2: nID = IDB_alleyway; break;
		case 3: nID = IDB_box;		break;
		case 4: nID = IDB_circle;	break;
		case 5: nID = IDB_plus;		break;
		case 6: nID = IDB_face;		break;
	}

	CClientDC dc(this);	

	CBitmap m_Bitmap; 
    m_Bitmap.LoadBitmap(nID);

    CDC MemDC;
	MemDC.CreateCompatibleDC(&dc);
	MemDC.SelectObject(&m_Bitmap);
	dc.BitBlt(x+50,y+50,20,20,&MemDC,0,0,SRCCOPY);
	
	m_Bitmap.DeleteObject();
	ReleaseDC(&dc);
	ReleaseDC(&MemDC);

}

void CTestView::OnDrawBlock() 
{
	ResetAllFlags();
	flag_block=TRUE;
	select_item=1;
}

void CTestView::OnDrawPath() 
{
	ResetAllFlags();
	flag_alleyway=TRUE;
	select_item=2;
}

void CTestView::OnDrawBox() 
{
	ResetAllFlags();
	flag_box=TRUE;
	select_item=3;
}

void CTestView::OnDrawCircle() 
{
	ResetAllFlags();
	flag_circle=TRUE;
	select_item=4;
}

void CTestView::OnDrawPlus() 
{
	ResetAllFlags();
	flag_plus=TRUE;
	select_item=5;
}

void CTestView::OnDrawFace() 
{
	ResetAllFlags();
	flag_face=TRUE;
	select_item=6;
}

void CTestView::ResetAllFlags()
{
	flag_block = FALSE;
	flag_alleyway = FALSE;
	flag_box = FALSE;
	flag_circle = FALSE;
	flag_face = FALSE;
	flag_plus = FALSE;
}

void CTestView::OnUpdateSelect_Item(CCmdUI* pCmdUI) 
{
	// TODO: Add your command update UI handler code here
	switch (pCmdUI->m_nID)
	{
		case ID_DrawBlock:
			pCmdUI->SetRadio(flag_block);
			break;

		case ID_DrawPath:
			pCmdUI->SetRadio(flag_alleyway);
			break;

		case ID_DrawBox:
			pCmdUI->SetRadio(flag_box);
			break;

		case ID_DrawCircle:
			pCmdUI->SetRadio(flag_circle);
			break;

		case ID_DrawPlus:
			pCmdUI->SetRadio(flag_plus);
			break;
			
		case ID_DrawFace:
			pCmdUI->SetRadio(flag_face);
			break;
	}
}

void CTestView::OnLButtonDown(UINT nFlags, CPoint point) 
{
if(select_item != 0 && detect_side(point.x,point.y))
{
	int cur_x,cur_y;
	cur_x = (point.x-50)/20;
	cur_y = (point.y-50)/20;
	if( cur_x == pre_x && cur_y == pre_y 
		&& select_item == pre_sel_item)
		return;

	status[cur_x][cur_y]=select_item;
	display_rect(cur_x*20,cur_y*20,select_item);

	pre_x=cur_x;
	pre_y=cur_y;
	pre_sel_item = select_item;

	flag_LBDown=TRUE;
}
	CView::OnLButtonDown(nFlags, point);
}

void CTestView::OnLButtonUp(UINT nFlags, CPoint point) 
{
	// TODO: Add your message handler code here and/or call default
	flag_LBDown=FALSE;
	CView::OnLButtonUp(nFlags, point);
}

void CTestView::OnMouseMove(UINT nFlags, CPoint point) 
{
	// TODO: Add your message handler code here and/or call default
if( flag_LBDown && select_item != 0 
    &&  detect_side(point.x,point.y))
{
	int cur_x,cur_y;
	cur_x = (point.x-50)/20;
	cur_y = (point.y-50)/20;
	if( cur_x != pre_x && cur_y != pre_y 
		&& select_item != pre_sel_item)
		return;
		
	status[cur_x][cur_y]=select_item;
	display_rect(cur_x*20,cur_y*20,select_item);
		
	pre_x=cur_x;
	pre_y=cur_y;
	pre_sel_item = select_item;

}	
	CView::OnMouseMove(nFlags, point);
}
BOOL CTestView::detect_side(int x,int y)
{
	if( x>50 && x<50+20*8 && y>50 && y<50+20*10)
		return TRUE;
	else
		return FALSE;
}

void CTestView::ini_map()
{
	int i,j;
	for(i=0;i<8;i++)
		for(j=0;j<10;j++)
		{
			status[i][j]=1;
		}

	ResetAllFlags();
	pre_x=pre_y=30;
	select_item = 0;
	pre_sel_item = 10;
	flag_LBDown=FALSE;
}

void CTestView::OnFileNew() 
{
	ini_map();
	Invalidate(true);	
}

void CTestView::OnFileOpen() 
{
	// TODO: Add your command handler code here
	UCHAR readbuf[40];
	UCHAR buf[80];
	
	int	nRC,length;

	CString	m_str;
	CFile	m_file;
	CFileException	e;

	CFileDialog m_OpenDlg(TRUE,"","",0,"map files (*.map)|*.map|");

	if (m_OpenDlg.DoModal() == IDOK) 
	   {	
			m_str=m_OpenDlg.GetPathName();
		

			nRC = m_file.Open (m_str,CFile::modeRead,&e);
	
			if (nRC == 0)
			{
				MessageBox(" can not open file! ");
				return;
			}
	
			length=m_file.GetLength();

			if( length != 40 )
			{
				MessageBox("bad file length! ");
				return;
			}
	
			m_file.Read (readbuf,40);
			m_file.Close ();

			FileToMap(buf,readbuf,80);
			memcpy(status,buf,80);
					
			Invalidate(true);
		}
	else return;
}

void CTestView::OnFileSave() 
{
	UCHAR writebuf[40];
	UCHAR buf[80];
	
	int	nRC;
	CString	m_str;
	CFile	m_file;
	CFileException	e;

	CFileDialog m_OpenDlg(FALSE,"","",0,"map files (*.map)|*.map|");

	if (m_OpenDlg.DoModal() == IDOK) 
	   {	
			m_str=m_OpenDlg.GetPathName();

			nRC = m_file.Open(m_str,CFile::modeCreate+CFile::modeWrite,&e);	
			
			if (nRC == 0)
			{
				MessageBox(" can not open file! ");
				return;
			}
	
			memcpy(buf,status,80);
			MapToFile(buf,writebuf,80);
			m_file.Write(writebuf,40);
			m_file.Close();
		}
	else return;
}

void CTestView::MapToFile(UCHAR *sz_map,UCHAR *sz_file,int length)
{
	int i,j=0;
	for(i=0;i<length;i+=2)
	{
		*(sz_file+j)= *(sz_map+i)*16+*(sz_map+i+1);
		j++;
	}
}

void CTestView::FileToMap(UCHAR *sz_map,UCHAR *sz_file,int length)
{
	int i,j=0;
	for(i=0;i<length/2;i++)
	{
		*(sz_map+j++)=( *(sz_file+i) & 0xF0 )/16;
		*(sz_map+j++)=*(sz_file+i) & 0x0F;
	}
}