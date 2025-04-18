// DMCd2Dlg.cpp : implementation file
//

#include "stdafx.h"
#include "DMCd2.h"
#include "DMCd2Dlg.h"

#include "LTDMC.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CDMCd2Dlg dialog

CDMCd2Dlg::CDMCd2Dlg(CWnd* pParent /*=NULL*/)
	: CDialog(CDMCd2Dlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CDMCd2Dlg)
	m_nUposition = 0;
	m_nXposition = 0;
	m_nYposition = 0;
	m_nZposition = 0;
	m_nLowspeed = 0;
	m_nPositive = 0;
	m_nXaixs = 0;
	m_nSPara = 0.0;
	m_nAcc = 0.1;
	m_nDec = 0.1;
	m_nSpeedmax = 5000;
	m_nHome = 0;
	m_NowSpe = 0.0;
	m_nSpeedmin = 0.0;
	//}}AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CDMCd2Dlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CDMCd2Dlg)
	DDX_Text(pDX, IDC_EDIT_UPOSITION, m_nUposition);
	DDX_Text(pDX, IDC_EDIT_XPOSITION, m_nXposition);
	DDX_Text(pDX, IDC_EDIT_YPOSITION, m_nYposition);
	DDX_Text(pDX, IDC_EDIT_ZPOSITION, m_nZposition);
	DDX_Radio(pDX, IDC_RADIO_LOWSPEED, m_nLowspeed);
	DDX_Radio(pDX, IDC_RADIO_POSITIVE, m_nPositive);
	DDX_Radio(pDX, IDC_RADIO_XAIXS, m_nXaixs);
	DDX_Text(pDX, IDC_EDIT_ACC, m_nAcc);
	DDX_Text(pDX, IDC_EDIT_DEC, m_nDec);
	DDX_Text(pDX, IDC_EDIT_SPEEDMAX, m_nSpeedmax);
	DDX_Radio(pDX, IDC_RADIO_HOME, m_nHome);
	DDX_Text(pDX, IDC_EDIT_MyNowSpe, m_NowSpe);
	DDX_Text(pDX, IDC_EDIT_SPEEDMin, m_nSpeedmin);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CDMCd2Dlg, CDialog)
	//{{AFX_MSG_MAP(CDMCd2Dlg)
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_WM_DESTROY()
	ON_WM_TIMER()
	ON_BN_CLICKED(IDC_BUTTON1, OnZero)
	ON_BN_CLICKED(IDC_BUTTON4, OnReset)
	ON_BN_CLICKED(IDC_BUTTON2, OnStop)
	ON_BN_CLICKED(IDC_BUTTON3, OnEstop)
	ON_BN_CLICKED(IDC_BUTTON5, OnClose)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CDMCd2Dlg message handlers

BOOL CDMCd2Dlg::OnInitDialog()
{
	CDialog::OnInitDialog();
	// Set the icon for this dialog.  The framework does this automatically
	//  when the application's main window is not a dialog
	SetIcon(m_hIcon, TRUE);			// Set big icon
	SetIcon(m_hIcon, FALSE);		// Set small icon
	
	// TODO: Add extra initialization here
	WORD My_CardNum ;      //定义卡数
	WORD My_CardList[8];   //定义卡号数组
	DWORD My_CardTypeList[8];   //定义各卡类型
	if( dmc_board_init() <= 0 )   //控制卡的初始化操作
		MessageBox("初始化DMC卡失败！","出错");
	dmc_get_CardInfList(&My_CardNum, My_CardTypeList, My_CardList);    //获取正在使用的卡号列表
	m_Card = My_CardList[0];
	    SetTimer( IDC_TIMER, 100, NULL );
	m_nPositive=1;                    //初始化回零方向为正方向
	m_nSpeedmin = 500;                //初始化起始速度
	UpdateData(false);
	
	return TRUE;  // return TRUE  unless you set the focus to a control
}

// If you add a minimize button to your dialog, you will need the code below
//  to draw the icon.  For MFC applications using the document/view model,
//  this is automatically done for you by the framework.

void CDMCd2Dlg::OnPaint() 
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
HCURSOR CDMCd2Dlg::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}

void CDMCd2Dlg::OnDestroy() 
{
	
	
	// TODO: Add your message handler code here
	dmc_board_close();                 //释放控制卡资源
	KillTimer( IDC_TIMER );
	CDialog::OnDestroy();
}

void CDMCd2Dlg::OnTimer(UINT nIDEvent) 
{
	// TODO: Add your message handler code here and/or call default
	m_nStatus=dmc_check_done(m_Card,m_nXaixs);               //判断当前轴状态
	GetDlgItem( IDC_EDIT_STATUS )->SetWindowText( m_nStatus?"静止":"运动");

	CString Xpos;
	CString Ypos;
	CString Zpos;
	CString Upos;
	CString NSpe;

	m_nXposition=dmc_get_position(m_Card,0);
	m_nYposition=dmc_get_position(m_Card,1);
	m_nZposition=dmc_get_position(m_Card,2);
	m_nUposition=dmc_get_position(m_Card,3);                //获取轴位置

	m_NowSpe=dmc_read_current_speed(m_Card,m_nXaixs);   //获取当前轴速度
	
	Xpos.Format("%d",m_nXposition);
	Ypos.Format("%d",m_nYposition);
	Zpos.Format("%d",m_nZposition);
	Upos.Format("%d",m_nUposition);
	NSpe.Format("%.2f",m_NowSpe);

	GetDlgItem( IDC_EDIT_XPOSITION )->SetWindowText( Xpos );
	GetDlgItem( IDC_EDIT_YPOSITION )->SetWindowText( Ypos );
	GetDlgItem( IDC_EDIT_ZPOSITION )->SetWindowText( Zpos );
	GetDlgItem( IDC_EDIT_UPOSITION )->SetWindowText( Upos );
	GetDlgItem( IDC_EDIT_MyNowSpe )->SetWindowText( NSpe );
	
	CDialog::OnTimer(nIDEvent);
	
}

void CDMCd2Dlg::OnZero() 
{
	// TODO: Add your control notification handler code here
	UpdateData(true);//刷新参数
	dmc_set_pulse_outmode(m_Card,m_nXaixs,0);  //设置脉冲输出模式
	dmc_set_profile(m_Card,m_nXaixs,m_nSpeedmin,m_nSpeedmax,m_nAcc,m_nDec,500);//设置速度曲线
	dmc_set_homemode(m_Card,m_nXaixs,m_nPositive,m_nLowspeed,m_nHome,1);//设置回零方式
	dmc_home_move(m_Card,m_nXaixs);//回零动作
	while (dmc_check_done(m_Card,m_nXaixs)==0)      //判断当前轴状态
	{
		AfxGetApp()->PumpMessage();
		GetDlgItem(IDC_BUTTON1)->EnableWindow(false); 
	}
	GetDlgItem(IDC_BUTTON1)->EnableWindow(true); 
	UpdateData(false);
}

void CDMCd2Dlg::OnReset() 
{
	// TODO: Add your control notification handler code here
	for (int i=0;i<4;i++)
	{
		dmc_set_position(m_Card,i,0);         //设置零点
	}	
}

void CDMCd2Dlg::OnStop() 
{
	// TODO: Add your control notification handler code here
	dmc_stop(m_Card,m_nXaixs,0);	       //减速停止
}

void CDMCd2Dlg::OnEstop() 
{
	dmc_emg_stop(m_Card);            //紧急停止
}

void CDMCd2Dlg::OnClose() 
{
	// TODO: Add your control notification handler code here
	dmc_board_close();            //释放控制卡资源
	KillTimer( IDC_TIMER );
	CDialog::OnCancel();	
}


