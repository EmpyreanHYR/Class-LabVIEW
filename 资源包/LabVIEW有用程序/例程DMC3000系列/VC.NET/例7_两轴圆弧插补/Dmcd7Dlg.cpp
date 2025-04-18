// Dmcd7Dlg.cpp : implementation file
//

#include "stdafx.h"
#include "Dmcd7.h"
#include "Dmcd7Dlg.h"

#include "LTDMC.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CAboutDlg dialog used for App About

class CAboutDlg : public CDialog
{
public:
	CAboutDlg();

// Dialog Data
	//{{AFX_DATA(CAboutDlg)
	enum { IDD = IDD_ABOUTBOX };
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CAboutDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	//{{AFX_MSG(CAboutDlg)
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

CAboutDlg::CAboutDlg() : CDialog(CAboutDlg::IDD)
{
	//{{AFX_DATA_INIT(CAboutDlg)
	//}}AFX_DATA_INIT
}

void CAboutDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CAboutDlg)
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CAboutDlg, CDialog)
	//{{AFX_MSG_MAP(CAboutDlg)
		// No message handlers
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CDmcd7Dlg dialog

CDmcd7Dlg::CDmcd7Dlg(CWnd* pParent /*=NULL*/)
	: CDialog(CDmcd7Dlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CDmcd7Dlg)
	m_Xpos = 0;
	m_Ypos = 0;
	//}}AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CDmcd7Dlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CDmcd7Dlg)
	DDX_Text(pDX, IDC_Xposition, m_Xpos);
	DDX_Text(pDX, IDC_Yposition, m_Ypos);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CDmcd7Dlg, CDialog)
	//{{AFX_MSG_MAP(CDmcd7Dlg)
	ON_WM_SYSCOMMAND()
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_BN_CLICKED(ID_Run, OnRun)
	ON_WM_TIMER()
	ON_WM_DESTROY()
	ON_BN_CLICKED(ID_Exit, OnExit)
	ON_BN_CLICKED(ID_SetZoro, OnSetZoro)
	ON_BN_CLICKED(ID_MStop, OnMStop)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CDmcd7Dlg message handlers

BOOL CDmcd7Dlg::OnInitDialog()
{
	CDialog::OnInitDialog();

	// Add "About..." menu item to system menu.

	// IDM_ABOUTBOX must be in the system command range.
	ASSERT((IDM_ABOUTBOX & 0xFFF0) == IDM_ABOUTBOX);
	ASSERT(IDM_ABOUTBOX < 0xF000);

	CMenu* pSysMenu = GetSystemMenu(FALSE);
	if (pSysMenu != NULL)
	{
		CString strAboutMenu;
		strAboutMenu.LoadString(IDS_ABOUTBOX);
		if (!strAboutMenu.IsEmpty())
		{
			pSysMenu->AppendMenu(MF_SEPARATOR);
			pSysMenu->AppendMenu(MF_STRING, IDM_ABOUTBOX, strAboutMenu);
		}
	}

	// Set the icon for this dialog.  The framework does this automatically
	//  when the application's main window is not a dialog
	SetIcon(m_hIcon, TRUE);			// Set big icon
	SetIcon(m_hIcon, FALSE);		// Set small icon
	
	// TODO: Add extra initialization here
	WORD My_CardNum ;      //定义卡数
	WORD My_CardList[8];   //定义卡号数组
	DWORD My_CardTypeList[8];   //定义各卡类型
	if( dmc_board_init() <= 0 )//控制卡的初始化操作
		MessageBox("初始化LTDMC卡失败！","出错");
	dmc_get_CardInfList(&My_CardNum, My_CardTypeList, My_CardList);    //获取正在使用的卡号列表
	m_nCard = My_CardList[0];
	SetTimer( 1, 100, NULL );
	
	return TRUE;  // return TRUE  unless you set the focus to a control
}

void CDmcd7Dlg::OnSysCommand(UINT nID, LPARAM lParam)
{
	if ((nID & 0xFFF0) == IDM_ABOUTBOX)
	{
		CAboutDlg dlgAbout;
		dlgAbout.DoModal();
	}
	else
	{
		CDialog::OnSysCommand(nID, lParam);
	}
}

// If you add a minimize button to your dialog, you will need the code below
//  to draw the icon.  For MFC applications using the document/view model,
//  this is automatically done for you by the framework.

void CDmcd7Dlg::OnPaint() 
{
	if (IsIconic())
	{
		CPaintDC dc(this); // device context for painting

		SendMessage(WM_ICONERASEBKGND, (WPARAM) dc.GetSafeHdc(), 0);

		// Center icon in client rectangle
		int cxIcon = GetSystemMetrics(SM_CXICON);
		int cyIcon = GetSystemMetrics(SM_CYICON);
		CRect rect;
		GetClientRect(&rect);
		int x = (rect.Width() - cxIcon + 1) / 2;
		int y = (rect.Height() - cyIcon + 1) / 2;

		// Draw the icon
		dc.DrawIcon(x, y, m_hIcon);
	}
	else
	{
		CDialog::OnPaint();
	}
}

// The system calls this to obtain the cursor to display while the user drags
//  the minimized window.
HCURSOR CDmcd7Dlg::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}

void CDmcd7Dlg::OnRun() 
{
	// TODO: Add your control notification handler code here
	dmc_set_vector_profile_multicoor(m_nCard,0,0,1000,0.1,0,0);      //设置插补速度
	WORD axis[2]={0,1};
	long Tardist[2] = {4000,0};
	long MyCen[2]={2000,0};

	dmc_arc_move_multicoor(m_nCard, 0, axis,Tardist,MyCen, 0, 0); //以当前点为起点，半径为2000 pulse,顺时针走一个半圆，相对模式
}

void CDmcd7Dlg::OnTimer(UINT nIDEvent) 
{
	// TODO: Add your message handler code here and/or call default
	if (nIDEvent==1)
	{
		CString Xpos;
		CString Ypos;
		
		m_Xpos=dmc_get_position(m_nCard,0);
		m_Ypos=dmc_get_position(m_nCard,1);      //获取当前位置
		
		Xpos.Format("%d",m_Xpos);
		Ypos.Format("%d",m_Ypos);
		
		GetDlgItem( IDC_Xposition )->SetWindowText( Xpos );
		GetDlgItem( IDC_Yposition )->SetWindowText( Ypos );
	}

	CDialog::OnTimer(nIDEvent);
}

void CDmcd7Dlg::OnDestroy() 
{
	dmc_board_close();       //释放控制卡资源
	KillTimer( 1 );

	CDialog::OnDestroy();
	
	// TODO: Add your message handler code here
	
}

void CDmcd7Dlg::OnExit() 
{
	// TODO: Add your control notification handler code here
	dmc_board_close();       //释放控制卡资源
	KillTimer( 1 );
	OnOK();
}

void CDmcd7Dlg::OnSetZoro() 
{
	// TODO: Add your control notification handler code here
	for (int i=0;i<2;i++)
	{
		dmc_set_position(m_nCard,i,0);    //设置零点
	}
}

void CDmcd7Dlg::OnMStop() 
{
	// TODO: Add your control notification handler code here
	dmc_stop_multicoor(m_nCard,0,1);      //立即停止
}
