// DMCd5Dlg.cpp : implementation file
//

#include "stdafx.h"
#include "DMCd5.h"
#include "DMCd5Dlg.h"

#include "LTDMC.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CDMCd5Dlg dialog

CDMCd5Dlg::CDMCd5Dlg(CWnd* pParent /*=NULL*/)
	: CDialog(CDMCd5Dlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CDMCd5Dlg)
	m_nPos = 0;
	m_nCard = 0;
	m_nAxis = 0;
	m_nMulti = 1;
	m_nMode = 0;
	//}}AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CDMCd5Dlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CDMCd5Dlg)
	DDX_Text(pDX, IDC_EDIT1_POS, m_nPos);
	DDX_Radio(pDX, IDC_RADIO1_AXIS, m_nAxis);
	DDX_Text(pDX, IDC_EDIT_MULTI, m_nMulti);
	DDX_Radio(pDX, IDC_RADIO5_PULSE, m_nMode);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CDMCd5Dlg, CDialog)
	//{{AFX_MSG_MAP(CDMCd5Dlg)
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_WM_DESTROY()
	ON_WM_TIMER()
	ON_BN_CLICKED(IDC_BUTTON1_RUN, OnButton1Run)
	ON_BN_CLICKED(IDC_BUTTON2_ESTOP, OnButton2Estop)
	ON_BN_CLICKED(IDC_BUTTON3_CANCEL, OnButton3Cancel)
	ON_BN_CLICKED(IDC_RADIO1_AXIS, OnRADIOAxis0)
	ON_BN_CLICKED(IDC_RADIO2_AXIS, OnRADIOAxis1)
	ON_BN_CLICKED(IDC_RADIO3_AXIS, OnRADIOAxis2)
	ON_BN_CLICKED(IDC_RADIO4_AXIS, OnRADIOAxis3)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CDMCd5Dlg message handlers

BOOL CDMCd5Dlg::OnInitDialog()
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
	{
		MessageBox("初始化控制卡失败！","出错");
	}
	dmc_get_CardInfList(&My_CardNum, My_CardTypeList, My_CardList);    //获取正在使用的卡号列表
	m_nCard = My_CardList[0];

	SetTimer( IDC_TIMER, 100, NULL );
	
	return TRUE;  // return TRUE  unless you set the focus to a control
}

// If you add a minimize button to your dialog, you will need the code below
//  to draw the icon.  For MFC applications using the document/view model,
//  this is automatically done for you by the framework.

void CDMCd5Dlg::OnPaint() 
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
HCURSOR CDMCd5Dlg::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}

void CDMCd5Dlg::OnDestroy() 
{
	dmc_board_close();       //释放控制卡资源
	KillTimer( IDC_TIMER );
	CDialog::OnDestroy();	
}

void CDMCd5Dlg::OnTimer(UINT nIDEvent) 
{
	// TODO: Add your message handler code here and/or call default
	CString Pos;
	m_nPos=dmc_get_position(m_nCard,m_nAxis);       //获取当前轴位置
	Pos.Format("%d",m_nPos);
	GetDlgItem( IDC_EDIT1_POS )->SetWindowText( Pos );

	CDialog::OnTimer(nIDEvent);
}

void CDMCd5Dlg::OnButton1Run() 
{
	// TODO: Add your control notification handler code here
	UpdateData(TRUE);
	dmc_set_handwheel_inmode(m_nCard,m_nAxis,m_nMode,m_nMulti,0);    //设置手轮输入方式
	dmc_handwheel_move(m_nCard,m_nAxis);           //启动手轮
}

void CDMCd5Dlg::OnButton2Estop() 
{
	// TODO: Add your control notification handler code here
	dmc_emg_stop(m_nCard);        //紧急停止
	dmc_set_position(m_nCard,m_nAxis,0);   //设置零点
	
}

void CDMCd5Dlg::OnButton3Cancel() 
{
	// TODO: Add your control notification handler code here
	dmc_board_close();      //释放控制卡资源
	KillTimer( IDC_TIMER );
	CDialog::OnCancel();	
}

void CDMCd5Dlg::OnRADIOAxis0() 
{
	// TODO: Add your control notification handler code here
	UpdateData(TRUE);
	m_nAxis = 0;
	UpdateData(FALSE);	
}
void CDMCd5Dlg::OnRADIOAxis1() 
{
	// TODO: Add your control notification handler code here
	UpdateData(TRUE);
	m_nAxis = 1;
	UpdateData(FALSE);	
}
void CDMCd5Dlg::OnRADIOAxis2() 
{
	// TODO: Add your control notification handler code here
	UpdateData(TRUE);
	m_nAxis = 2;
	UpdateData(FALSE);	
}
void CDMCd5Dlg::OnRADIOAxis3() 
{
	// TODO: Add your control notification handler code here
	UpdateData(TRUE);
	m_nAxis = 3;
	UpdateData(FALSE);	
}
