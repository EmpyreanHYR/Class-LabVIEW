VERSION 5.00
Begin VB.Form FormMain 
   Caption         =   "��ԭ���˶�"
   ClientHeight    =   4950
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5535
   LinkTopic       =   "Form1"
   ScaleHeight     =   4950
   ScaleWidth      =   5535
   StartUpPosition =   2  '��Ļ����
   Begin VB.Frame Frame5 
      Caption         =   "��ԭ�㷽��"
      Height          =   615
      Left            =   3120
      TabIndex        =   26
      Top             =   2520
      Width           =   2055
      Begin VB.OptionButton OptionHomeMode 
         Caption         =   "����"
         Height          =   255
         Index           =   0
         Left            =   240
         TabIndex        =   28
         Top             =   240
         Width           =   855
      End
      Begin VB.OptionButton OptionHomeMode 
         Caption         =   "����"
         Height          =   255
         Index           =   1
         Left            =   1080
         TabIndex        =   27
         Top             =   240
         Width           =   855
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "���㷽ʽ"
      Height          =   1455
      Left            =   3120
      TabIndex        =   23
      Top             =   960
      Width           =   2055
      Begin VB.OptionButton OptionHomeSignal 
         Caption         =   "һ�λ���+EZһ�λ���"
         Height          =   375
         Index           =   3
         Left            =   240
         TabIndex        =   32
         Top             =   960
         Width           =   1575
      End
      Begin VB.OptionButton OptionHomeSignal 
         Caption         =   "���λ���"
         Height          =   255
         Index           =   2
         Left            =   240
         TabIndex        =   31
         Top             =   720
         Width           =   1095
      End
      Begin VB.OptionButton OptionHomeSignal 
         Caption         =   "һ�λ���"
         Height          =   255
         Index           =   0
         Left            =   240
         TabIndex        =   25
         Top             =   240
         Width           =   1095
      End
      Begin VB.OptionButton OptionHomeSignal 
         Caption         =   "һ�λ���ӷ���"
         Height          =   255
         Index           =   1
         Left            =   240
         TabIndex        =   24
         Top             =   480
         Width           =   1575
      End
   End
   Begin VB.Frame Frame4 
      Caption         =   "��ԭ���ٶ�ģʽ"
      Height          =   615
      Left            =   360
      TabIndex        =   20
      Top             =   2520
      Width           =   2415
      Begin VB.OptionButton OptionHomeSpeed 
         Caption         =   "����"
         Height          =   255
         Index           =   1
         Left            =   1200
         TabIndex        =   22
         Top             =   240
         Width           =   855
      End
      Begin VB.OptionButton OptionHomeSpeed 
         Caption         =   "����"
         Height          =   255
         Index           =   0
         Left            =   240
         TabIndex        =   21
         Top             =   240
         Width           =   855
      End
   End
   Begin VB.CommandButton BUTTON_CLEAN 
      Caption         =   "λ������"
      Height          =   495
      Left            =   2160
      TabIndex        =   15
      Top             =   3240
      Width           =   1215
   End
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   4920
      Top             =   3360
   End
   Begin VB.CommandButton BUTTON_CLOSE 
      Caption         =   "�˳�"
      Height          =   495
      Left            =   3960
      TabIndex        =   12
      Top             =   3840
      Width           =   1215
   End
   Begin VB.CommandButton BUTTON_EMGSTOP 
      Caption         =   "��ֹͣͣ"
      Height          =   495
      Left            =   2160
      TabIndex        =   10
      Top             =   3840
      Width           =   1215
   End
   Begin VB.CommandButton BUTTON_DELSTOP 
      Caption         =   "����ֹͣ"
      Height          =   495
      Left            =   360
      TabIndex        =   9
      Top             =   3840
      Width           =   1215
   End
   Begin VB.CommandButton BUTTON_MOVE 
      Caption         =   "����"
      Height          =   495
      Left            =   360
      TabIndex        =   8
      Top             =   3240
      Width           =   1215
   End
   Begin VB.Frame Frame2 
      Caption         =   "�˶���"
      Height          =   975
      Left            =   3120
      TabIndex        =   7
      Top             =   0
      Width           =   2055
      Begin VB.OptionButton OptionMoveAxis 
         Caption         =   "U��"
         Height          =   255
         Index           =   3
         Left            =   1080
         TabIndex        =   19
         Top             =   600
         Width           =   615
      End
      Begin VB.OptionButton OptionMoveAxis 
         Caption         =   "Z��"
         Height          =   255
         Index           =   2
         Left            =   240
         TabIndex        =   18
         Top             =   600
         Width           =   615
      End
      Begin VB.OptionButton OptionMoveAxis 
         Caption         =   "Y��"
         Height          =   255
         Index           =   1
         Left            =   1080
         TabIndex        =   17
         Top             =   240
         Width           =   615
      End
      Begin VB.OptionButton OptionMoveAxis 
         Caption         =   "X��"
         Height          =   255
         Index           =   0
         Left            =   240
         TabIndex        =   16
         Top             =   240
         Width           =   615
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "�˶�����"
      Height          =   1815
      Left            =   360
      TabIndex        =   0
      Top             =   480
      Width           =   2415
      Begin VB.TextBox Text_STOPSPD 
         Height          =   285
         Left            =   1200
         TabIndex        =   29
         Text            =   "100"
         Top             =   1080
         Width           =   1095
      End
      Begin VB.TextBox Text_TACC 
         Height          =   270
         Left            =   1200
         TabIndex        =   6
         Text            =   "0.01"
         Top             =   1440
         Width           =   1095
      End
      Begin VB.TextBox Text_RUNSPD 
         Height          =   270
         Left            =   1200
         TabIndex        =   4
         Text            =   "1000"
         Top             =   720
         Width           =   1095
      End
      Begin VB.TextBox Text_STRSPD 
         Height          =   270
         Left            =   1200
         TabIndex        =   2
         Text            =   "500"
         Top             =   360
         Width           =   1095
      End
      Begin VB.Label Label6 
         Caption         =   "ֹͣ�ٶ�"
         Height          =   255
         Left            =   120
         TabIndex        =   30
         Top             =   1080
         Width           =   735
      End
      Begin VB.Label Label5 
         Caption         =   "�Ӽ���ʱ��"
         Height          =   255
         Left            =   120
         TabIndex        =   5
         Top             =   1440
         Width           =   975
      End
      Begin VB.Label Label4 
         Caption         =   "�����ٶ�"
         Height          =   255
         Left            =   120
         TabIndex        =   3
         Top             =   720
         Width           =   855
      End
      Begin VB.Label Label3 
         Caption         =   "��ʼ�ٶ�"
         Height          =   255
         Left            =   120
         TabIndex        =   1
         Top             =   360
         Width           =   855
      End
   End
   Begin VB.Label Lable_STATUS 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "ֹͣ��"
      Height          =   255
      Left            =   1440
      TabIndex        =   14
      Top             =   120
      Width           =   1095
   End
   Begin VB.Label Label_POSITION 
      BorderStyle     =   1  'Fixed Single
      Height          =   375
      Left            =   360
      TabIndex        =   13
      Top             =   4440
      Width           =   4815
   End
   Begin VB.Label Label8 
      Caption         =   "�˶�״̬"
      Height          =   255
      Left            =   480
      TabIndex        =   11
      Top             =   120
      Width           =   735
   End
End
Attribute VB_Name = "FormMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public m_UseCard As Integer         '��ǰʹ�õĿ���
Public m_UseAxis As Integer         '��ǰʹ�õ����

'λ������
Private Sub BUTTON_CLEAN_Click()
  dmc_set_position m_UseCard, m_UseAxis, 0
End Sub

'�رտ��ƽ���
Private Sub BUTTON_CLOSE_Click()
    dmc_board_close
    Unload Me
End Sub

'����ͣ
Private Sub BUTTON_DELSTOP_Click()
    dmc_stop m_UseCard, m_UseAxis, 0
End Sub

'����ֹͣ
Private Sub BUTTON_EMGSTOP_Click()
   dmc_emg_stop m_UseCard
End Sub

'��������
Private Sub BUTTON_MOVE_Click()
    Dim m_nStart As Double
    Dim m_nSpeed As Double
    Dim m_nStop As Double
    Dim m_nTAcc As Double
    
    Dim home_signal As Integer
    Dim home_speed As Integer
    Dim home_mode As Integer
    
    m_nStart = Val(Text_STRSPD.Text)  '��ȡ������Ϣ
    m_nSpeed = Val(Text_RUNSPD.Text)
    m_nStop = Val(Text_STOPSPD.Text)
    m_nTAcc = Val(Text_TACC.Text)
    
    If OptionHomeSpeed(0).Value Then        '���û�ԭ����ٶ�ģʽ
        home_speed = 0
    Else
        home_speed = 1
    End If
    
    If OptionHomeSignal(0).Value Then       '���û��㷽ʽ
        home_signal = 0
    ElseIf OptionHomeSignal(1).Value Then
        home_signal = 1
    ElseIf OptionHomeSignal(2).Value Then
        home_signal = 2
    Else
        home_signal = 3
    End If
    
    If OptionHomeMode(0).Value Then         '���û�ԭ�㷽��
        home_mode = 1                       '�����ԭ��
    ElseIf OptionHomeMode(1).Value Then
        home_mode = 0                       '�����ԭ��
    Else
    End If
    dmc_set_home_pin_logic m_UseCard, m_UseAxis, 0, 0 '����ԭ��͵�ƽ��Ч
    dmc_set_profile m_UseCard, m_UseAxis, m_nStart, m_nSpeed, m_nTAcc, m_nTAcc, m_nStop    '�����ٶȡ����ٶ�
    dmc_set_homemode m_UseCard, m_UseAxis, home_mode, home_speed, home_signal, 0
    dmc_home_move m_UseCard, m_UseAxis                '������ԭ���˶�
        
End Sub

Private Sub Form_Load()
    Dim My_CardNum As Integer     '���忨��
    Dim My_CardList(7) As Integer '���忨������
    Dim My_CardTypeList(7) As Long  '�����������
    My_CardNum = dmc_board_init()                  '���ƿ��ĳ�ʼ�����������ú����ʹ��dmc_board_close�رտ���
                                            '�м䲻���ٴε��øó�ʼ��������
    
    If (My_CardNum <= 0) Or (My_CardNum > 8) Then            '�����Ŀ�����1- 8֮��
        MsgBox "��ʼ��LTDMC��ʧ�ܣ�", vbOKOnly, "����"
    End If
    dmc_get_CardInfList My_CardNum, My_CardTypeList(0), My_CardList(0)  '��ȡ����ʹ�õĿ����б�
    m_UseCard = My_CardList(0)
    m_UseAxis = 0                           'Ĭ��ѡ��X��
    OptionMoveAxis(0).Value = True
    
    OptionHomeSignal(0).Value = True
    OptionHomeMode(1).Value = True          '�����ԭ��
    OptionHomeSpeed(0).Value = True         '�趨Ϊ����
    
    dmc_set_pulse_outmode m_UseCard, m_UseAxis, 0    '�趨�������ģʽ
End Sub

Private Sub Form_Unload(Cancel As Integer)  '�ͷ�ϵͳ������忨����Դ
    dmc_board_close
End Sub


'ѡ�����
Private Sub OptionMoveAxis_Click(index As Integer)
    m_UseAxis = index
End Sub

'ˢ��λ��
Private Sub Timer1_Timer()
   Dim pos As Long
   Dim speed As Double
   Dim str_DisplayPos As String
   Dim cardStatus As Boolean
   speed = dmc_read_current_speed(m_UseCard, m_UseAxis)
   str_DisplayPos = "Speed=" + Str(speed)
   pos = dmc_get_position(m_UseCard, 0)          '��ʾλ����Ϣ
   str_DisplayPos = str_DisplayPos + "   X=" + Str(pos)
   pos = dmc_get_position(m_UseCard, 1)
   str_DisplayPos = str_DisplayPos + "   Y=" + Str(pos)
    pos = dmc_get_position(m_UseCard, 2)
   str_DisplayPos = str_DisplayPos + "   Z=" + Str(pos)
    pos = dmc_get_position(m_UseCard, 3)
   str_DisplayPos = str_DisplayPos + "  U=" + Str(pos)
   Label_POSITION.Caption = str_DisplayPos
   
   cardStatus = (1 = dmc_check_done(m_UseCard, 0)) And (1 = dmc_check_done(m_UseCard, 1)) And (1 = dmc_check_done(m_UseCard, 2)) And (1 = dmc_check_done(m_UseCard, 3))
   If cardStatus Then                   '��ʾ�������
     Lable_STATUS.Caption = "ֹͣ"
   Else
     Lable_STATUS.Caption = "����"
   End If

End Sub

