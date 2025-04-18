// DMCd7Dlg.cpp : implementation file
//

#include "stdafx.h"
#include "DMCd3.h"
#include "DMCd3Dlg.h"

#include "LTDMC.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CDMCd3Dlg dialog

CDMCd3Dlg::CDMCd3Dlg(CWnd* pParent /*=NULL*/)
	: CDialog(CDMCd3Dlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CDMCd3Dlg)
	m_bSvon = FALSE;
	m_bOut0 = FALSE;
	m_bOut1 = FALSE;
	m_bOut2 = FALSE;
	m_bOut3 = FALSE;
	//}}AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CDMCd3Dlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CDMCd3Dlg)
	DDX_Check(pDX, IDC_CHECK5_SVON, m_bSvon);
	DDX_Check(pDX, IDC_CHECK1_OUT0, m_bOut0);
	DDX_Check(pDX, IDC_CHECK2_OUT1, m_bOut1);
	DDX_Check(pDX, IDC_CHECK3_OUT2, m_bOut2);
	DDX_Check(pDX, IDC_CHECK4_OUT3, m_bOut3);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CDMCd3Dlg, CDialog)
	//{{AFX_MSG_MAP(CDMCd3Dlg)
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_WM_DESTROY()
	ON_WM_TIMER()
	ON_BN_CLICKED(IDC_CHECK1_OUT1, OnCheck1Out1)
	ON_BN_CLICKED(IDC_CHECK2_OUT2, OnCheck2Out2)
	ON_BN_CLICKED(IDC_CHECK3_OUT3, OnCheck3Out3)
	ON_BN_CLICKED(IDC_CHECK4_OUT4, OnCheck4Out4)
	ON_BN_CLICKED(IDC_CHECK5_SVON, OnCheck5Svon)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CDMCd3Dlg message handlers

BOOL CDMCd3Dlg::OnInitDialog()
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
	if( dmc_board_init() <= 0 )//���ƿ��ĳ�ʼ������
		MessageBox("��ʼ��DMC��ʧ�ܣ�","����");
	else
	dmc_get_CardInfList(&My_CardNum, My_CardTypeList, My_CardList);    //��ȡ����ʹ�õĿ����б�
	m_Card = My_CardList[0];

	UpdateControl();
	SetTimer( IDC_TIMER, 100, NULL );
	
	return TRUE;  // return TRUE  unless you set the focus to a control
}

// If you add a minimize button to your dialog, you will need the code below
//  to draw the icon.  For MFC applications using the document/view model,
//  this is automatically done for you by the framework.

void CDMCd3Dlg::OnPaint() 
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
HCURSOR CDMCd3Dlg::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}

void CDMCd3Dlg::OnDestroy() 
{
	dmc_board_close();	//�ǳ�֮��Ҫ���ͷ���ռ�õ�ϵͳ��Դ
	KillTimer( IDC_TIMER );
	CDialog::OnDestroy();
	
}

void CDMCd3Dlg::OnTimer(UINT nIDEvent) 
{
	// TODO: Add your message handler code here and/or call default
	CString sPInput;
	sPInput.Format( "����0(%d),����1(%d),����2(%d),����3(%d)", 
		
		dmc_read_inbit(m_Card,0),
		dmc_read_inbit(m_Card,1),
		dmc_read_inbit(m_Card,2),
		dmc_read_inbit(m_Card,3)     
	
		);         //��ȡ����IO�ź�
	GetDlgItem( IDC_STATIC_PINPUT )->SetWindowText( sPInput );

	CString sSInput;
	int nOrg=dmc_axis_io_status(m_Card,0) & 0x10;     //��ȡָ�����й��˶��źŵ�״̬
	GetDlgItem( IDC_STATIC_SINPUT )->SetWindowText( nOrg?"X��ԭ���ź�:ON":"X��ԭ���źţ�OFF");
	
	CDialog::OnTimer(nIDEvent);
}

void CDMCd3Dlg::UpdateControl()
{
	dmc_write_outbit(m_Card,0,m_bOut0);
	dmc_write_outbit(m_Card,1,m_bOut1);
	dmc_write_outbit(m_Card,2,m_bOut2);
	dmc_write_outbit(m_Card,3,m_bOut3);      //����ͨ��IO�˿ڵ�ƽ״̬
	dmc_write_sevon_pin(m_Card,0,!m_bSvon);   //����0�����ŷ��˿ڵ�ƽ״̬
	
	GetDlgItem( IDC_CHECK1_OUT0 )->SetWindowText( m_bOut0?"���0:�ߵ�ƽ":"���0:�͵�ƽ");
	GetDlgItem( IDC_CHECK2_OUT1 )->SetWindowText( m_bOut1?"���1:�ߵ�ƽ":"���1:�͵�ƽ");
	GetDlgItem( IDC_CHECK3_OUT2 )->SetWindowText( m_bOut2?"���2:�ߵ�ƽ":"���2:�͵�ƽ");
	GetDlgItem( IDC_CHECK4_OUT3 )->SetWindowText( m_bOut3?"���3:�ߵ�ƽ":"���3:�͵�ƽ");
	GetDlgItem( IDC_CHECK5_SVON )->SetWindowText( m_bSvon?"�ŷ�ʹ��:�͵�ƽ":"�ŷ�ʹ��:�ߵ�ƽ");
	
}

void CDMCd3Dlg::OnCheck1Out1() 
{
	// TODO: Add your control notification handler code here
	UpdateData(TRUE);
	UpdateControl();
	
}

void CDMCd3Dlg::OnCheck2Out2() 
{
	// TODO: Add your control notification handler code here
	UpdateData(TRUE);
	UpdateControl();
	
}

void CDMCd3Dlg::OnCheck3Out3() 
{
	// TODO: Add your control notification handler code here
	UpdateData(TRUE);
	UpdateControl();
	
}

void CDMCd3Dlg::OnCheck4Out4() 
{
	// TODO: Add your control notification handler code here
	UpdateData(TRUE);
	UpdateControl();
	
}

void CDMCd3Dlg::OnCheck5Svon() 
{
	// TODO: Add your control notification handler code here
	UpdateData(TRUE);
	UpdateControl();
	
}
