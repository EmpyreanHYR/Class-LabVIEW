VERSION 5.00
Begin VB.Form FormMain 
   Caption         =   "�����˶�"
   ClientHeight    =   4950
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5805
   LinkTopic       =   "Form1"
   ScaleHeight     =   4950
   ScaleWidth      =   5805
   StartUpPosition =   2  '��Ļ����
   Begin VB.CommandButton BUTTON_CHANGESPEED 
      Caption         =   "���߱���"
      Height          =   495
      Left            =   4200
      TabIndex        =   27
      Top             =   3000
      Width           =   1215
   End
   Begin VB.Frame Frame3 
      Caption         =   "�˶�����"
      Height          =   735
      Left            =   480
      TabIndex        =   24
      Top             =   2040
      Width           =   2055
      Begin VB.OptionButton OptionMoveDir 
         Caption         =   "����"
         Height          =   375
         Index           =   0
         Left            =   1080
         TabIndex        =   26
         Top             =   240
         Width           =   735
      End
      Begin VB.OptionButton OptionMoveDir 
         Caption         =   "����"
         Height          =   375
         Index           =   1
         Left            =   240
         TabIndex        =   25
         Top             =   240
         Width           =   735
      End
   End
   Begin VB.CommandButton BUTTON_ImdStop 
      Caption         =   "����ֹͣ"
      Height          =   495
      Left            =   2400
      TabIndex        =   21
      Top             =   3720
      Width           =   1215
   End
   Begin VB.CommandButton BUTTON_CLEAN 
      Caption         =   "λ������"
      Height          =   495
      Left            =   2400
      TabIndex        =   12
      Top             =   3000
      Width           =   1215
   End
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   2520
      Top             =   360
   End
   Begin VB.CommandButton BUTTON_CLOSE 
      Caption         =   "�˳�"
      Height          =   495
      Left            =   4200
      TabIndex        =   9
      Top             =   3720
      Width           =   1215
   End
   Begin VB.CommandButton BUTTON_DELSTOP 
      Caption         =   "����ֹͣ"
      Height          =   495
      Left            =   480
      TabIndex        =   7
      Top             =   3720
      Width           =   1215
   End
   Begin VB.CommandButton BUTTON_MOVE 
      Caption         =   "����"
      Height          =   495
      Left            =   480
      TabIndex        =   6
      Top             =   3000
      Width           =   1215
   End
   Begin VB.Frame Frame2 
      Caption         =   "�˶���"
      Height          =   1215
      Left            =   480
      TabIndex        =   5
      Top             =   720
      Width           =   2055
      Begin VB.OptionButton OptionMoveAxis 
         Caption         =   "U��"
         Height          =   255
         Index           =   3
         Left            =   1080
         TabIndex        =   16
         Top             =   720
         Width           =   615
      End
      Begin VB.OptionButton OptionMoveAxis 
         Caption         =   "Z��"
         Height          =   255
         Index           =   2
         Left            =   240
         TabIndex        =   15
         Top             =   720
         Width           =   615
      End
      Begin VB.OptionButton OptionMoveAxis 
         Caption         =   "Y��"
         Height          =   255
         Index           =   1
         Left            =   1080
         TabIndex        =   14
         Top             =   360
         Width           =   615
      End
      Begin VB.OptionButton OptionMoveAxis 
         Caption         =   "X��"
         Height          =   255
         Index           =   0
         Left            =   240
         TabIndex        =   13
         Top             =   360
         Width           =   615
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "�˶�����"
      Height          =   2535
      Left            =   3000
      TabIndex        =   0
      Top             =   240
      Width           =   2415
      Begin VB.TextBox Text_TDEC 
         Height          =   270
         Left            =   1080
         TabIndex        =   22
         Text            =   "0.1"
         Top             =   1920
         Width           =   1095
      End
      Begin VB.TextBox Text_STARTSPD 
         Height          =   285
         Left            =   1080
         TabIndex        =   19
         Text            =   "500"
         Top             =   480
         Width           =   1095
      End
      Begin VB.TextBox Text_STOPSPD 
         Height          =   285
         Left            =   1080
         TabIndex        =   17
         Text            =   "100"
         Top             =   1170
         Width           =   1095
      End
      Begin VB.TextBox Text_TACC 
         Height          =   270
         Left            =   1080
         TabIndex        =   4
         Text            =   "0.1"
         Top             =   1560
         Width           =   1095
      End
      Begin VB.TextBox Text_RUNSPD 
         Height          =   270
         Left            =   1080
         TabIndex        =   2
         Text            =   "1000"
         Top             =   840
         Width           =   1095
      End
      Begin VB.Label Label6 
         Caption         =   "����ʱ��"
         Height          =   255
         Left            =   240
         TabIndex        =   23
         Top             =   1920
         Width           =   735
      End
      Begin VB.Label Label3 
         Caption         =   "��ʼ�ٶ�"
         Height          =   255
         Left            =   240
         TabIndex        =   20
         Top             =   480
         Width           =   735
      End
      Begin VB.Label Label2 
         Caption         =   "ֹͣ�ٶ�"
         Height          =   255
         Left            =   240
         TabIndex        =   18
         Top             =   1200
         Width           =   735
      End
      Begin VB.Label Label5 
         Caption         =   "����ʱ��"
         Height          =   255
         Left            =   240
         TabIndex        =   3
         Top             =   1560
         Width           =   735
      End
      Begin VB.Label Label4 
         Caption         =   "�����ٶ�"
         Height          =   255
         Left            =   240
         TabIndex        =   1
         Top             =   840
         Width           =   855
      End
   End
   Begin VB.Label Lable_STATUS 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "ֹͣ��"
      Height          =   255
      Left            =   1440
      TabIndex        =   11
      Top             =   360
      Width           =   1095
   End
   Begin VB.Label Label_POSITION 
      BorderStyle     =   1  'Fixed Single
      Height          =   375
      Left            =   360
      TabIndex        =   10
      Top             =   4440
      Width           =   5055
   End
   Begin VB.Label Label8 
      Caption         =   "�˶�״̬"
      Height          =   255
      Left            =   480
      TabIndex        =   8
      Top             =   360
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
Public m_MoveDir As Integer         '�˶�����

Private Sub BUTTON_CHANGESPEED_Click()
Dim m_nSpeed As Double
m_nSpeed = Val(Text_RUNSPD.Text)
dmc_change_speed m_UseCard, m_UseAxis, m_nSpeed, 0    '���߱���
End Sub

'λ������
Private Sub BUTTON_CLEAN_Click()
  dmc_set_position m_UseCard, m_UseAxis, 0    'λ������
End Sub

'�رտ��ƽ���
Private Sub BUTTON_CLOSE_Click()
    dmc_board_close
    Unload Me
End Sub

'����ͣ
Private Sub BUTTON_DELSTOP_Click()
    dmc_stop m_UseCard, m_UseAxis, 0    '����ֹͣ
End Sub

'����ֹͣ
Private Sub BUTTON_ImdStop_Click()
    dmc_stop m_UseCard, m_UseAxis, 1    '����ֹͣ
End Sub

'��������
Private Sub BUTTON_MOVE_Click()
    Dim m_nStart As Double
    Dim m_nSpeed As Double
    Dim m_nStop As Double
    Dim m_nTAcc As Double
    Dim m_nTDec As Double
    Dim m_nDist As Long
    m_nStart = Val(Text_STARTSPD.Text)
    m_nSpeed = Val(Text_RUNSPD.Text)
    m_nStop = Val(Text_STOPSPD.Text)
    m_nTAcc = Val(Text_TACC.Text)
    m_nTDec = Val(Text_TDEC.Text)
    dmc_set_s_profile m_UseCard, m_UseAxis, 0, 0.01  '����ƽ��ʱ�䣨0-0.05s)
    dmc_set_profile m_UseCard, m_UseAxis, m_nStart, m_nSpeed, m_nTAcc, m_nTDec, m_nStop
    '������ʼ�ٶȡ������ٶȡ�ֹͣ�ٶȡ�����ʱ�䡢����ʱ��
    dmc_vmove m_UseCard, m_UseAxis, m_MoveDir    '�����˶�
End Sub



Private Sub Form_Load()
    Dim My_CardNum As Integer     '���忨��
    Dim My_CardList(7) As Integer '���忨������
    Dim My_CardTypeList(7) As Long  '�����������
    
    My_CardNum = dmc_board_init()             '���ƿ��ĳ�ʼ�����������ú����ʹ��dmc_board_close�رտ���
                                            '�м䲻���ٴε��øó�ʼ��������
         
    If (My_CardNum <= 0) Or (My_CardNum > 8) Then              '�����Ŀ�����1- 8֮��
        MsgBox "��ʼ��LTDMC��ʧ�ܣ�", vbOKOnly, "����"
    End If
    dmc_get_CardInfList My_CardNum, My_CardTypeList(0), My_CardList(0)  '��ȡ����ʹ�õĿ����б�
    m_UseCard = My_CardList(0)
    m_UseAxis = 0                           'Ĭ��ѡ��X��
    OptionMoveAxis(0).Value = True
    OptionMoveDir(1).Value = True
    dmc_set_pulse_outmode m_UseCard, m_UseAxis, 0    '�趨�������ģʽ
 
    
End Sub

Private Sub Form_Unload(Cancel As Integer)  '�ͷ�ϵͳ������忨����Դ
    dmc_board_close
End Sub

'ѡ�����
Private Sub OptionMoveAxis_Click(index As Integer)
    m_UseAxis = index
End Sub


Private Sub OptionMoveDir_Click(index As Integer)
    m_MoveDir = index
End Sub

'ˢ��λ��
Private Sub Timer1_Timer()
   Dim pos As Long
   Dim str_DisplayPos As String
   Dim cardStatus As Boolean
   
   pos = dmc_read_current_speed(m_UseCard, m_UseAxis)            '��ʾλ����Ϣ
   str_DisplayPos = "Speed =" + Str(pos)
   
   
   pos = dmc_get_position(m_UseCard, 0)       '��ʾλ����Ϣ
   str_DisplayPos = str_DisplayPos + "  X=" + Str(pos)
   pos = dmc_get_position(m_UseCard, 1)
   str_DisplayPos = str_DisplayPos + "  Y=" + Str(pos)
   pos = dmc_get_position(m_UseCard, 2)
   str_DisplayPos = str_DisplayPos + "  Z=" + Str(pos)
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

