// DMCd6Dlg.cpp : implementation file
//

#include "stdafx.h"
#include "DMCd6.h"
#include "DMCd6Dlg.h"
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
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMy1Dlg dialog

CMy1Dlg::CMy1Dlg(CWnd* pParent /*=NULL*/)
	: CDialog(CMy1Dlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CMy1Dlg)
	//}}AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
}

void CMy1Dlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CMy1Dlg)
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CMy1Dlg, CDialog)
	//{{AFX_MSG_MAP(CMy1Dlg)
	ON_WM_SYSCOMMAND()
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_BN_CLICKED(IDC_BUTTON_cls, OnBUTTONcls)
	ON_BN_CLICKED(IDC_BUTTON_dec, OnBUTTONdec)
	ON_BN_CLICKED(IDC_BUTTON_stop, OnBUTTONstop)
	ON_WM_TIMER()
	ON_WM_CTLCOLOR()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMy1Dlg message handlers

BOOL CMy1Dlg::OnInitDialog()
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
		MessageBox("初始化控制卡失败！","出错");
	dmc_get_CardInfList(&My_CardNum, My_CardTypeList, My_CardList);    //获取正在使用的卡号列表
	m_Card = My_CardList[0];	
	m_axis = 0;
	SetTimer( IDC_TIMER, 100, NULL );
	return TRUE;  // return TRUE  unless you set the focus to a control
}

void CMy1Dlg::OnSysCommand(UINT nID, LPARAM lParam)
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

void CMy1Dlg::OnPaint() 
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
HCURSOR CMy1Dlg::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}


void CMy1Dlg::OnOK() 
{
	// TODO: Add extra validation here
	try{
		if( !UpdateData(true) )
			throw "";
	}
	catch( char * ){
		return;
	}
	int iret;
	int i;	
	WORD cmp_dir = 0;
	int cmp_pos = 10000;
	int cur_pos = 0;
	int TempPos = 0;
	long remain_pointnum = 0;
	cur_pos = dmc_get_position(m_Card,m_axis);

	iret = dmc_set_profile(m_Card,m_axis,0, 2000,0.01, 0.01,0);//设置速度、加速度，减速度
	if(iret!=0)
	{
		MessageBox("dmc_set_profile返回错误！","出错");
		return;
	}
	dmc_compare_get_points_remained(m_Card,m_axis,&remain_pointnum); 
	while(dmc_check_done(m_Card,m_axis)==0||remain_pointnum==0)
	{
		dmc_compare_get_points_remained(m_Card,m_axis,&remain_pointnum); 
		AfxGetApp()->PumpMessage();	
	}

	if(cur_pos>cmp_pos)
		cmp_dir = 0;
	else
		cmp_dir = 1;
	for(i=0;i<10;i++)	//中间添加10个比较点
	{	
		
		if(cmp_dir==0)	
		{
			TempPos = cur_pos-abs(cmp_pos-cur_pos)/10*(i+1);
			iret = dmc_compare_add_point(m_Card,m_axis,TempPos,cmp_dir,3, 1);
		}
		else
		{
			TempPos = cur_pos+abs(cmp_pos-cur_pos)/10*(i+1);
			iret = dmc_compare_add_point(m_Card,m_axis,TempPos,cmp_dir,3, 1);
		}
		if(iret!=0)
		{
			MessageBox("dmc_compare_add_point返回错误！","出错");
			return;
		}
	}
	iret = dmc_pmove(m_Card,m_axis,cmp_pos,1);	
	if(iret!=0)
	{
		MessageBox("dmc_pmove返回错误！","出错");
		return;
	}
}

void CMy1Dlg::OnCancel() 
{
	// TODO: Add extra cleanup here
	dmc_board_close();
	KillTimer( IDC_TIMER );
	CDialog::OnCancel();
}

void CMy1Dlg::OnBUTTONcls() 
{
	// TODO: Add your control notification handler code here
	short iret;
	dmc_set_position(m_Card,m_axis,0);
	dmc_compare_set_config(m_Card,m_axis,1, 0);
	iret = dmc_compare_clear_points(m_Card,m_axis);
	if(iret!=0)
	{
		MessageBox("dmc_compare_clear_points返回错误！","出错");
		return;
	}
}

void CMy1Dlg::OnBUTTONdec() 
{
	// TODO: Add your control notification handler code here
	dmc_stop(m_Card,m_axis,0);
	CIrStatus=FALSE;
}

void CMy1Dlg::OnBUTTONstop() 
{
	// TODO: Add your control notification handler code here
	dmc_emg_stop(m_Card);
}

void CMy1Dlg::OnTimer(UINT nIDEvent) 
{
	// TODO: Add your message handler code here and/or call default
	CString string;
	
	long remain_pointnum;
	long runned_pointnum;
	long cmp_point;

	long position = dmc_get_position(m_Card, m_axis );
	string.Format("当前指令位置：%ld", position );	
	GetDlgItem( IDC_STATIC_POSITION )->SetWindowText( string );
	
	long out1 = dmc_read_outbit( m_Card,1 );
	string =  out1?"OUT1输出状态：高电平":"OUT1输出状态：低电平";
	GetDlgItem( IDC_STATIC_OUT1 )->SetWindowText( string );

	CString stemp ="";
	dmc_compare_get_current_point(m_Card,m_axis,&cmp_point);
	dmc_compare_get_points_runned(  m_Card ,m_axis,&runned_pointnum);
	dmc_compare_get_points_remained(m_Card,m_axis,&remain_pointnum);
	

	string.Format("已比较点数：%ld 剩余点数：%ld 比较位置：%ld", runned_pointnum,remain_pointnum,cmp_point );
	GetDlgItem( IDC_STATIC_RUNNEDPOINTS )->SetWindowText( string );

	DWORD status = dmc_check_done(m_Card, m_axis );
	if (status == 1)
	{
		GetDlgItem( IDC_STATIC_STATUS )->SetWindowText( "当前状态：静止" );
	}else
	{
		GetDlgItem( IDC_STATIC_STATUS )->SetWindowText( "当前状态：运动" );
	}
	CDialog::OnTimer(nIDEvent);
}

HBRUSH CMy1Dlg::OnCtlColor(CDC* pDC, CWnd* pWnd, UINT nCtlColor) 
{
	HBRUSH hbr = CDialog::OnCtlColor(pDC, pWnd, nCtlColor);	
	// TODO: Change any attributes of the DC here
	return hbr;
}





