// DMCd4Dlg.cpp : implementation file
//

#include "stdafx.h"
#include "DMCd4.h"
#include "DMCd4Dlg.h"

#include "LTDMC.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CDMCd4Dlg dialog

CDMCd4Dlg::CDMCd4Dlg(CWnd* pParent /*=NULL*/)
	: CDialog(CDMCd4Dlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CDMCd4Dlg)
	m_nXdist = 1000;
	m_nSpeedrun = 1000;
	m_nUdist = 4000;
	m_nUpos = 0;
	m_nXpos = 0;
	m_nYdist = 2000;
	m_nYpos = 0;
	m_nZdist = 3000;
	m_nCard = 0;
	m_nAxis = 0;
	m_nZpos = 0;
	m_fTAcc = 0.1;
	m_nCrd = 0;
	//}}AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CDMCd4Dlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CDMCd4Dlg)
	DDX_Text(pDX, IDC_EDIT_XDIST, m_nXdist);
	DDX_Text(pDX, IDC_EDIT_SPEEDRUN, m_nSpeedrun);
	DDX_Text(pDX, IDC_EDIT_UDIST, m_nUdist);
	DDX_Text(pDX, IDC_EDIT_UPOS, m_nUpos);
	DDX_Text(pDX, IDC_EDIT_XPOS, m_nXpos);
	DDX_Text(pDX, IDC_EDIT_YDIST, m_nYdist);
	DDX_Text(pDX, IDC_EDIT_YPOS, m_nYpos);
	DDX_Text(pDX, IDC_EDIT_ZDIST, m_nZdist);
	DDX_Radio(pDX, IDC_RADIO_AXIS, m_nAxis);
	DDX_Text(pDX, IDC_EDIT_ZPOS, m_nZpos);
	DDX_Text(pDX, IDC_EDIT_ACC, m_fTAcc);
	DDX_Text(pDX, IDC_EDIT_Crd, m_nCrd);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CDMCd4Dlg, CDialog)
	//{{AFX_MSG_MAP(CDMCd4Dlg)
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_WM_DESTROY()
	ON_WM_TIMER()
	ON_BN_CLICKED(IDC_BUTTON_RUN, OnButtonRun)
	ON_BN_CLICKED(IDC_BUTTON_DSTOP, OnButtonDstop)
	ON_BN_CLICKED(IDC_BUTTON_ESTOP, OnButtonEstop)
	ON_BN_CLICKED(IDC_BUTTON_RESET, OnButtonReset)
	ON_BN_CLICKED(IDC_BUTTON_CANCEL, OnButtonCancel)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CDMCd4Dlg message handlers

BOOL CDMCd4Dlg::OnInitDialog()
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
	if( dmc_board_init() <= 0 )//控制卡的初始化操作
		MessageBox("初始化LTDMC卡失败！","出错");
	dmc_get_CardInfList(&My_CardNum, My_CardTypeList, My_CardList);    //获取正在使用的卡号列表
	m_nCard = My_CardList[0];
	SetTimer( IDC_TIMER, 100, NULL );
	
	return TRUE;  // return TRUE  unless you set the focus to a control
}

// If you add a minimize button to your dialog, you will need the code below
//  to draw the icon.  For MFC applications using the document/view model,
//  this is automatically done for you by the framework.

void CDMCd4Dlg::OnPaint() 
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
HCURSOR CDMCd4Dlg::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}

void CDMCd4Dlg::OnDestroy() 
{
	dmc_board_close();       //释放控制卡资源
	KillTimer( IDC_TIMER );
		
	CDialog::OnDestroy();
}

void CDMCd4Dlg::OnTimer(UINT nIDEvent) 
{
	// TODO: Add your message handler code here and/or call default
	status=dmc_check_done(m_nCard,m_nAxis);       //判断当前轴状态
	GetDlgItem( IDC_EDIT1 )->SetWindowText( status?"静止":"运动中");

	CString Xpos;
	CString Ypos;
	CString Zpos;
	CString Upos;

	m_nXpos=dmc_get_position(m_nCard,0);
	m_nYpos=dmc_get_position(m_nCard,1);
	m_nZpos=dmc_get_position(m_nCard,2);
	m_nUpos=dmc_get_position(m_nCard,3);       //获取当前位置
	
	Xpos.Format("%d",m_nXpos);
	Ypos.Format("%d",m_nYpos);
	Zpos.Format("%d",m_nZpos);
	Upos.Format("%d",m_nUpos);

	GetDlgItem( IDC_EDIT_XPOS )->SetWindowText( Xpos );
	GetDlgItem( IDC_EDIT_YPOS )->SetWindowText( Ypos );
	GetDlgItem( IDC_EDIT_ZPOS )->SetWindowText( Zpos );
	GetDlgItem( IDC_EDIT_UPOS )->SetWindowText( Upos );

	TRACE("X轴速度：%d",dmc_read_vector_speed(m_nCard));
	
	CDialog::OnTimer(nIDEvent);
}

void CDMCd4Dlg::OnButtonRun() 
{
	// TODO: Add your control notification handler code here
	UpdateData(true);//刷新参数
	dmc_set_vector_profile_multicoor(m_nCard,m_nCrd,0,m_nSpeedrun,m_fTAcc,0,0);      //设置插补速度
	WORD axis[4]={0,1,2,3};
	long dist[4] = {m_nXdist,m_nYdist,m_nZdist,m_nUdist};
	switch(m_nAxis) 
	{
	case 0:
		dmc_line_multicoor(m_nCard,m_nCrd,2,axis,dist,0);//两轴直线插补
		break;
	case 1:
		dmc_line_multicoor(m_nCard,m_nCrd,3,axis,dist,0);//三轴直线插补
		break;
	case 2:
		dmc_line_multicoor(m_nCard,m_nCrd,4,axis,dist,0);;//四轴直线插补
		break;
    //default:
	}
}

void CDMCd4Dlg::OnButtonDstop() 
{
	// TODO: Add your control notification handler code here
	dmc_stop_multicoor(m_nCard,m_nCrd,0);      //减速停止
}

void CDMCd4Dlg::OnButtonEstop() 
{
	// TODO: Add your control notification handler code here
		dmc_emg_stop(m_nCard);	      //紧急停止
}

void CDMCd4Dlg::OnButtonReset() 
{
	// TODO: Add your control notification handler code here
	for (int i=0;i<4;i++)
	{
		dmc_set_position(m_nCard,i,0);    //设置零点
	}	
}

void CDMCd4Dlg::OnButtonCancel() 
{
	// TODO: Add your control notification handler code here
	dmc_board_close();      //释放控制卡资源
	KillTimer( IDC_TIMER );
	CDialog::OnCancel();	
}
