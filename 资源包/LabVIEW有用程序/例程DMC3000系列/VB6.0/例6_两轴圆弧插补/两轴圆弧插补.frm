VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "����Բ���岹"
   ClientHeight    =   5010
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5745
   LinkTopic       =   "Form1"
   ScaleHeight     =   5010
   ScaleWidth      =   5745
   StartUpPosition =   3  '����ȱʡ
   Begin VB.Timer Timer1 
      Interval        =   50
      Left            =   3840
      Top             =   2880
   End
   Begin VB.CommandButton BUTTON_CLOSE 
      Caption         =   "�˳�"
      Height          =   495
      Left            =   2040
      TabIndex        =   4
      Top             =   2760
      Width           =   1335
   End
   Begin VB.CommandButton BUTTON_CLEAN 
      Caption         =   "λ������"
      Height          =   495
      Left            =   3360
      TabIndex        =   3
      Top             =   1800
      Width           =   1335
   End
   Begin VB.CommandButton BUTTON_EMGSTOP 
      Caption         =   "��ͣ"
      Height          =   495
      Left            =   840
      TabIndex        =   2
      Top             =   1800
      Width           =   1335
   End
   Begin VB.CommandButton BUTTON_DELSTOP 
      Caption         =   "����ֹͣ"
      Height          =   495
      Left            =   3360
      TabIndex        =   1
      Top             =   720
      Width           =   1335
   End
   Begin VB.CommandButton BUTTON_MOVE 
      Caption         =   "����"
      Height          =   495
      Left            =   840
      TabIndex        =   0
      Top             =   720
      Width           =   1335
   End
   Begin VB.Label Label_POSITION 
      BorderStyle     =   1  'Fixed Single
      Height          =   375
      Left            =   720
      TabIndex        =   5
      Top             =   3960
      Width           =   4455
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public m_UseCard As Integer         '��ǰʹ�õĿ���

'λ������
Private Sub BUTTON_CLEAN_Click()
  dmc_set_position m_UseCard, 0, 0
  dmc_set_position m_UseCard, 1, 0
  dmc_set_position m_UseCard, 2, 0
  dmc_set_position m_UseCard, 3, 0
End Sub

'�رտ��ƽ���
Private Sub BUTTON_CLOSE_Click()
    dmc_board_close
    Unload Me
End Sub

'����ֹͣ
Private Sub BUTTON_DELSTOP_Click()

    dmc_stop_multicoor m_UseCard, 0, 1     '����ֹͣ

End Sub

'����ֹͣ
Private Sub BUTTON_EMGSTOP_Click()
   dmc_emg_stop m_UseCard
End Sub

'��������
Private Sub BUTTON_MOVE_Click()

    Dim CardNo As Integer
    Dim axis_array(1) As Integer
    Dim target_array(1) As Long
    Dim cen_array(1) As Long
    Dim Arc_Dir As Integer


    axis_array(0) = 0       '�趨Ϊ0, 1��Բ���岹
    axis_array(1) = 1
    target_array(0) = 4000
    target_array(1) = 0       '�趨Բ���岹�յ�����
    cen_array(0) = 2000
    cen_array(1) = 0        '�趨Բ���岹Բ������
    Arc_Dir = 0             '�趨Բ���岹����˳ʱ��

    
    dmc_set_vector_profile_multicoor m_UseCard, 0, 0, 1000, 0.1, 0, 0  '���ò岹ʸ���ٶȡ����ٶ�
    dmc_arc_move_multicoor m_UseCard, 0, axis_array(0), target_array(0), cen_array(0), Arc_Dir, 0 '�Ե�ǰ��Ϊ��㣬�뾶Ϊ2000 pulse,��һ����Բ�����ģʽ
        
End Sub

Private Sub Form_Load()
    Dim My_CardNum As Integer     '���忨��
    Dim My_CardList(7) As Integer '���忨������
    Dim My_CardTypeList(7) As Long  '�����������
    
    My_CardNum = dmc_board_init()                  '���ƿ��ĳ�ʼ�����������ú����ʹ��d5480_board_close�رտ���
                                            '�м䲻���ٴε��øó�ʼ��������
    
    If (My_CardNum <= 0) Or (My_CardNum > 8) Then             '�����Ŀ�����1- 8֮��
        MsgBox "��ʼ����ʧ�ܣ�", vbOKOnly, "����"
    End If

    dmc_get_CardInfList My_CardNum, My_CardTypeList(0), My_CardList(0)  '��ȡ����ʹ�õĿ����б�
    m_UseCard = My_CardList(0)
    dmc_set_pulse_outmode m_UseCard, 0, 0   '�趨�������ģʽ
    dmc_set_pulse_outmode m_UseCard, 1, 0   '�趨�������ģʽ
    
End Sub

Private Sub Form_Unload(Cancel As Integer)  '�ͷ�ϵͳ������忨����Դ
    dmc_board_close
End Sub


'ˢ��λ��
Private Sub Timer1_Timer()
   Dim pos As Long
   Dim str_DisplayPos As String
   Dim cardStatus As Boolean
   
   pos = dmc_get_position(m_UseCard, 0)         '��ʾλ����Ϣ
   str_DisplayPos = "X=" + Str(pos)
   pos = dmc_get_position(m_UseCard, 1)
   str_DisplayPos = str_DisplayPos + "   Y=" + Str(pos)
    pos = dmc_get_position(m_UseCard, 2)
   str_DisplayPos = str_DisplayPos + "   Z=" + Str(pos)
    pos = dmc_get_position(m_UseCard, 3)
   str_DisplayPos = str_DisplayPos + "  U=" + Str(pos)
   Label_POSITION.Caption = str_DisplayPos
End Sub
