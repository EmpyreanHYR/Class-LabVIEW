// DMCd1Dlg.cpp : implementation file
//

#include "stdafx.h"
#include "DMCd1.h"
#include "DMCd1Dlg.h"
#include "LTDMC.h"


#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CDMCd1Dlg dialog

CDMCd1Dlg::CDMCd1Dlg(CWnd* pParent /*=NULL*/)
	: CDialog(CDMCd1Dlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CDMCd1Dlg)
	m_bLogic = TRUE;
	m_nPulse = 6400;
	m_nActionst = 0;
	m_nAxis = 0;
	m_nAcc = 0.1;
	m_nDec = 0.1;
	m_nSPara = 0.0;
	m_nSpeed = 0.0;
	m_nSpeedMin = 0.0;
	//}}AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CDMCd1Dlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CDMCd1Dlg)
	DDX_Check(pDX, IDC_CHECK_LOGIC, m_bLogic);
	DDX_Text(pDX, IDC_EDIT_PULSE, m_nPulse);
	DDX_Radio(pDX, IDC_RADIO_ACTIONST, m_nActionst);
	DDX_Radio(pDX, IDC_RADIO_AXISX, m_nAxis);
	DDX_Text(pDX, IDC_EDIT_ACC, m_nAcc);
	DDX_Text(pDX, IDC_EDIT_DEC, m_nDec);
	DDX_Text(pDX, IDC_EDIT_SPara, m_nSPara);
	DDX_Text(pDX, IDC_EDIT_SPEED, m_nSpeed);
	DDX_Text(pDX, IDC_EDIT_SPEEDMin, m_nSpeedMin);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CDMCd1Dlg, CDialog)
	//{{AFX_MSG_MAP(CDMCd1Dlg)
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_WM_TIMER()
	ON_BN_CLICKED(IDC_BUTTON_DO, OnButtonDo)
	ON_BN_CLICKED(IDC_BUTTON_CLEAR, OnButtonClear)
	ON_BN_CLICKED(IDC_BUTTON_DECSTOP, OnButtonDecstop)
	ON_BN_CLICKED(IDC_BUTTON_EMGSTOP, OnButtonEmgstop)
	ON_BN_CLICKED(IDC_CHECK_LOGIC, OnCheckLogic)
	ON_BN_CLICKED(IDC_RADIO_ACTIONST, OnRadioActionst)
	ON_BN_CLICKED(IDC_RADIO_CMOVE, OnRadioCmove)
	ON_WM_DESTROY()
	ON_BN_CLICKED(IDC_RADIO_AXISX, OnRadioAxisX)
	ON_BN_CLICKED(IDC_RADIO_AXISY, OnRadioAxisY)
	ON_BN_CLICKED(IDC_RADIO_AXISZ, OnRadioAxisZ)
	ON_BN_CLICKED(IDC_RADIO_AXISU, OnRadioAxisU)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CDMCd1Dlg message handlers

BOOL CDMCd1Dlg::OnInitDialog()
{
	CDialog::OnInitDialog();

	// Set the icon for this dialog.  The framework does this automatically
	//  when the application's main window is not a dialog
	SetIcon(m_hIcon, TRUE);			// Set big icon
	SetIcon(m_hIcon, FALSE);		// Set small icon

	// TODO: Add extra initialization here
	WORD My_CardNum ;      //���忨��
	WORD My_CardList[8];   //���忨������
	DWORD My_CardTypeList[8];   //�����������
	if( dmc_board_init() <= 0 )      //���ƿ��ĳ�ʼ������
		MessageBox("��ʼ�����ƿ�ʧ�ܣ�","����");
	dmc_get_CardInfList(&My_CardNum, My_CardTypeList, My_CardList);    //��ȡ����ʹ�õĿ����б�
	m_nCard = My_CardList[0]; 
		UpdateControl();
	    SetTimer( IDC_TIMER, 100, NULL );

	m_nSpeed=3000;
	m_nSpeedMin=1000;
	m_nAcc=0.01;
	m_nDec=0.01;
	m_nSPara=0;      //��ʼ�������ٶ����߲���
	UpdateData(false);
	return TRUE;  // return TRUE  unless you set the focus to a control
}

// If you add a minimize button to your dialog, you will need the code below
//  to draw the icon.  For MFC applications using the document/view model,
//  this is automatically done for you by the framework.

void CDMCd1Dlg::OnPaint() 
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
HCURSOR CDMCd1Dlg::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}

void CDMCd1Dlg::UpdateControl()
{
	GetDlgItem( IDC_CHECK_LOGIC )->SetWindowText( m_bLogic?"�߼�������":"�߼����򣺷�");
}

void CDMCd1Dlg::OnTimer(UINT nIDEvent) 
{
	// TODO: Add your message handler code here and/or call default
	CString string;
	long position = dmc_get_position( m_nCard,m_nAxis );          //��ȡ��ǰ��λ��
	string.Format("��ǰλ�ã�%ld", position );
	GetDlgItem( IDC_STATIC_POSITION )->SetWindowText( string );

    double NowSpe = dmc_read_current_speed( m_nCard,m_nAxis );          //��ȡ��ǰ���ٶ�
	string.Format("��ǰ�ٶȣ�%.2f", NowSpe );
	GetDlgItem( IDC_STATIC_NowSpe)->SetWindowText( string );

	DWORD status = dmc_check_done(m_nCard, m_nAxis );           //�жϵ�ǰ��״̬
	if (status == 1)
	{
		GetDlgItem( IDC_STATIC_STATUS )->SetWindowText( "��ǰ״̬����ֹ" );
	}else
	{
		GetDlgItem( IDC_STATIC_STATUS )->SetWindowText( "��ǰ״̬���˶�" );
	}
	CDialog::OnTimer(nIDEvent);
}

void CDMCd1Dlg::OnButtonDo() 
{
	// TODO: Add your control notification handler code here
	UpdateData(true);//ˢ�²���
	//////////////////////////
	if (dmc_check_done( m_nCard,m_nAxis ) == 0) //�Ѿ����˶���
		return; 
	//�趨����ģʽ���߼����򣨴˴�����ģʽ�̶�ΪP+D��������+����	
	dmc_set_pulse_outmode(m_nCard, m_nAxis, 0);
	
	dmc_set_profile(m_nCard,m_nAxis,m_nSpeedMin,m_nSpeed,m_nAcc,m_nDec,0);
	//�趨S��ʱ��
	dmc_set_s_profile(m_nCard,m_nAxis,0,m_nSPara);
	if( m_nActionst == 0 )
	{//�㶯(λ��ģʽ)
		dmc_pmove(m_nCard, m_nAxis, m_nPulse*(m_bLogic?1:-1), 0);
	}
	else
	{//��������(�ٶ�ģʽ)
		dmc_vmove(m_nCard, m_nAxis, m_bLogic?1:0);	
	}
	UpdateData(false);
}

void CDMCd1Dlg::OnButtonClear() 
{
	// TODO: Add your control notification handler code here
	for (int i=0;i<4;i++) 
	{
		dmc_set_position(m_nCard,i,0);        //�������
	}

	
}

void CDMCd1Dlg::OnButtonDecstop() 
{
	// TODO: Add your control notification handler code here
	dmc_stop(m_nCard,m_nAxis,0);          //����ֹͣ
	
}

void CDMCd1Dlg::OnButtonEmgstop() 
{
	// TODO: Add your control notification handler code here
	//ȫ����ͣ
		dmc_emg_stop(m_nCard);
	
}

void CDMCd1Dlg::OnCheckLogic() 
{
	// TODO: Add your control notification handler code here
	//�߼�����
	m_bLogic=~m_bLogic;
	UpdateData( TRUE );
	UpdateControl();
	
}


void CDMCd1Dlg::OnRadioActionst() 
{
	// TODO: Add your control notification handler code here
	UpdateData( true );
	UpdateControl();
	
}

void CDMCd1Dlg::OnRadioCmove() 
{
	// TODO: Add your control notification handler code here
	UpdateData( true );
	UpdateControl();
	
}



void CDMCd1Dlg::OnDestroy() 
{
	// TODO: Add your message handler code here
	dmc_board_close();	//�ǳ�֮��Ҫ���ͷ���ռ�õ�ϵͳ��Դ
	KillTimer( IDC_TIMER );
	CDialog::OnDestroy();
	
}
 


void CDMCd1Dlg::OnRadioAxisX() 
{
	// TODO: Add your control notification handler code here
	UpdateData( true );
	m_nAxis = 0;
	UpdateData( false );
}
void CDMCd1Dlg::OnRadioAxisY() 
{
	// TODO: Add your control notification handler code here
	UpdateData( true );
	m_nAxis = 1;
	UpdateData( false );
}
void CDMCd1Dlg::OnRadioAxisZ() 
{
	// TODO: Add your control notification handler code here
	UpdateData( true );
	m_nAxis = 2;
	UpdateData( false );
}
void CDMCd1Dlg::OnRadioAxisU() 
{
	// TODO: Add your control notification handler code here
	UpdateData( true );
	m_nAxis = 3;
	UpdateData( false );
}
