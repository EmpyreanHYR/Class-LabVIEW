VERSION 5.00
Begin VB.Form �����λ�˶� 
   Caption         =   "�����λ�˶�"
   ClientHeight    =   7095
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   7605
   LinkTopic       =   "Form1"
   ScaleHeight     =   7095
   ScaleWidth      =   7605
   StartUpPosition =   2  '��Ļ����
   Begin VB.Timer Timer2 
      Interval        =   20
      Left            =   6600
      Top             =   6360
   End
   Begin VB.CommandButton MyDecStop 
      Caption         =   "���ֹͣ"
      Height          =   495
      Left            =   5880
      TabIndex        =   44
      Top             =   5400
      Width           =   1215
   End
   Begin VB.CommandButton MyResetPos 
      Caption         =   "λ������"
      Height          =   495
      Left            =   4320
      TabIndex        =   42
      Top             =   5400
      Width           =   1215
   End
   Begin VB.Timer Timer1 
      Interval        =   20
      Left            =   7080
      Top             =   6360
   End
   Begin VB.CommandButton MyExit 
      Caption         =   "�˳�����"
      Height          =   615
      Left            =   5160
      TabIndex        =   40
      Top             =   6120
      Width           =   1215
   End
   Begin VB.CommandButton MyRevTurn 
      Caption         =   "��ת"
      Height          =   495
      Left            =   6000
      TabIndex        =   39
      Top             =   4440
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.CommandButton MyForTurn 
      Caption         =   "��ת"
      Height          =   495
      Left            =   4320
      TabIndex        =   38
      Top             =   4440
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.OptionButton MyCButton 
      Caption         =   "ģ�ⰴť"
      Height          =   375
      Index           =   0
      Left            =   4440
      TabIndex        =   37
      Top             =   3960
      Width           =   1095
   End
   Begin VB.OptionButton MyCButton 
      Caption         =   "�ⲿIO����"
      Height          =   375
      Index           =   1
      Left            =   5880
      TabIndex        =   36
      Top             =   3960
      Width           =   1215
   End
   Begin VB.Frame Frame2 
      Caption         =   "��ʾ"
      Height          =   3015
      Left            =   4080
      TabIndex        =   25
      Top             =   240
      Width           =   3255
      Begin VB.PictureBox MyRevTurnLed 
         Height          =   375
         Left            =   1920
         ScaleHeight     =   315
         ScaleWidth      =   435
         TabIndex        =   53
         Top             =   720
         Width           =   495
      End
      Begin VB.PictureBox MyForTurnLed 
         Height          =   375
         Left            =   600
         ScaleHeight     =   315
         ScaleWidth      =   435
         TabIndex        =   52
         Top             =   720
         Width           =   495
      End
      Begin VB.TextBox MyMStatus 
         BackColor       =   &H00C0C0C0&
         Height          =   375
         Left            =   1200
         Locked          =   -1  'True
         TabIndex        =   35
         Text            =   "ֹͣ��"
         Top             =   2400
         Width           =   975
      End
      Begin VB.TextBox MyNowPos 
         BackColor       =   &H00C0C0C0&
         Height          =   375
         Left            =   1200
         Locked          =   -1  'True
         TabIndex        =   32
         Text            =   "0"
         Top             =   1920
         Width           =   975
      End
      Begin VB.TextBox MyNowSpe 
         BackColor       =   &H00C0C0C0&
         Height          =   375
         Left            =   1200
         Locked          =   -1  'True
         TabIndex        =   27
         Text            =   "0"
         Top             =   1440
         Width           =   975
      End
      Begin VB.Label Label31 
         Caption         =   "��ת��ʾ��"
         Height          =   255
         Left            =   1800
         TabIndex        =   56
         Top             =   480
         Width           =   975
      End
      Begin VB.Label Label30 
         Caption         =   "��ת��ʾ��"
         Height          =   255
         Left            =   480
         TabIndex        =   55
         Top             =   480
         Width           =   975
      End
      Begin VB.Label Label22 
         Caption         =   "���״̬��"
         Height          =   255
         Left            =   240
         TabIndex        =   34
         Top             =   2520
         Width           =   975
      End
      Begin VB.Label Label21 
         Caption         =   "pulse"
         Height          =   255
         Left            =   2280
         TabIndex        =   33
         Top             =   2040
         Width           =   615
      End
      Begin VB.Label Label20 
         Caption         =   "��ǰλ�ã�"
         Height          =   255
         Left            =   240
         TabIndex        =   31
         Top             =   2040
         Width           =   975
      End
      Begin VB.Label Label19 
         Caption         =   "pulse/s"
         Height          =   255
         Left            =   2280
         TabIndex        =   30
         Top             =   1560
         Width           =   735
      End
      Begin VB.Label Label17 
         Caption         =   "��ǰ�ٶȣ�"
         Height          =   255
         Left            =   240
         TabIndex        =   26
         Top             =   1560
         Width           =   975
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "�������"
      Height          =   5775
      Left            =   360
      TabIndex        =   0
      Top             =   240
      Width           =   3375
      Begin VB.TextBox MyRevTurnOut 
         Height          =   375
         Left            =   1200
         TabIndex        =   50
         Text            =   "2"
         Top             =   4680
         Width           =   1095
      End
      Begin VB.TextBox MyForTurnOut 
         Height          =   375
         Left            =   1200
         TabIndex        =   47
         Text            =   "1"
         Top             =   4200
         Width           =   1095
      End
      Begin VB.TextBox MynAxis 
         Height          =   375
         Left            =   1200
         TabIndex        =   29
         Text            =   "0"
         Top             =   360
         Width           =   1095
      End
      Begin VB.TextBox MyRunDis 
         Height          =   375
         Left            =   1200
         TabIndex        =   23
         Text            =   "10000"
         Top             =   5160
         Width           =   1095
      End
      Begin VB.TextBox MyRevTurnNum 
         Height          =   375
         Left            =   1200
         TabIndex        =   18
         Text            =   "2"
         Top             =   3720
         Width           =   1095
      End
      Begin VB.TextBox MyForTurnNum 
         Height          =   375
         Left            =   1200
         TabIndex        =   17
         Text            =   "1"
         Top             =   3240
         Width           =   1095
      End
      Begin VB.TextBox MyTsacc 
         Height          =   375
         Left            =   1200
         TabIndex        =   14
         Text            =   "0.01"
         Top             =   2760
         Width           =   1095
      End
      Begin VB.TextBox MySTdec 
         Height          =   375
         Left            =   1200
         TabIndex        =   11
         Text            =   "0.1"
         Top             =   2280
         Width           =   1095
      End
      Begin VB.TextBox MySTacc 
         Height          =   375
         Left            =   1200
         TabIndex        =   8
         Text            =   "0.1"
         Top             =   1800
         Width           =   1095
      End
      Begin VB.TextBox MyRunSpe 
         Height          =   375
         Left            =   1200
         TabIndex        =   5
         Text            =   "3000"
         Top             =   1320
         Width           =   1095
      End
      Begin VB.TextBox MyFirSpe 
         Height          =   375
         Left            =   1200
         TabIndex        =   2
         Text            =   "1000"
         Top             =   840
         Width           =   1095
      End
      Begin VB.Label Label28 
         Caption         =   "(�˿ں�)"
         Height          =   255
         Left            =   2400
         TabIndex        =   51
         Top             =   4800
         Width           =   735
      End
      Begin VB.Label Label27 
         Caption         =   "��ת��ʾ����ڣ�"
         Height          =   375
         Left            =   240
         TabIndex        =   49
         Top             =   4680
         Width           =   855
      End
      Begin VB.Label Label26 
         Caption         =   "(�˿ں�)"
         Height          =   255
         Left            =   2400
         TabIndex        =   48
         Top             =   4320
         Width           =   855
      End
      Begin VB.Label Label25 
         Caption         =   "��ת��ʾ����ڣ�"
         Height          =   375
         Left            =   240
         TabIndex        =   46
         Top             =   4200
         Width           =   855
      End
      Begin VB.Label Label24 
         Caption         =   "(0-3)"
         Height          =   255
         Left            =   2400
         TabIndex        =   45
         Top             =   480
         Width           =   735
      End
      Begin VB.Label Label18 
         Caption         =   "�����ţ�"
         Height          =   255
         Left            =   240
         TabIndex        =   28
         Top             =   480
         Width           =   975
      End
      Begin VB.Label Label16 
         Caption         =   "pulse"
         Height          =   255
         Left            =   2400
         TabIndex        =   24
         Top             =   5280
         Width           =   735
      End
      Begin VB.Label Label15 
         Caption         =   "���о��룺"
         Height          =   255
         Left            =   240
         TabIndex        =   22
         Top             =   5280
         Width           =   975
      End
      Begin VB.Label Label14 
         Caption         =   "(�˿ں�)"
         Height          =   255
         Left            =   2400
         TabIndex        =   21
         Top             =   3840
         Width           =   735
      End
      Begin VB.Label Label13 
         Caption         =   "(�˿ں�)"
         Height          =   255
         Left            =   2400
         TabIndex        =   20
         Top             =   3360
         Width           =   735
      End
      Begin VB.Label Label12 
         Caption         =   "���Ʒ�ת����ڣ�"
         Height          =   375
         Left            =   240
         TabIndex        =   19
         Top             =   3720
         Width           =   855
      End
      Begin VB.Label Label11 
         Caption         =   "������ת����ڣ�"
         Height          =   375
         Left            =   240
         TabIndex        =   16
         Top             =   3240
         Width           =   855
      End
      Begin VB.Label Label10 
         Caption         =   "s"
         Height          =   255
         Left            =   2400
         TabIndex        =   15
         Top             =   2880
         Width           =   495
      End
      Begin VB.Label Label9 
         Caption         =   "S��ʱ�䣺"
         Height          =   255
         Left            =   240
         TabIndex        =   13
         Top             =   2880
         Width           =   855
      End
      Begin VB.Label Label8 
         Caption         =   "s"
         Height          =   255
         Left            =   2400
         TabIndex        =   12
         Top             =   2400
         Width           =   495
      End
      Begin VB.Label Label7 
         Caption         =   "����ʱ�䣺"
         Height          =   255
         Left            =   240
         TabIndex        =   10
         Top             =   2400
         Width           =   975
      End
      Begin VB.Label Label6 
         Caption         =   "s"
         Height          =   255
         Left            =   2400
         TabIndex        =   9
         Top             =   1920
         Width           =   615
      End
      Begin VB.Label Label5 
         Caption         =   "����ʱ�䣺"
         Height          =   255
         Left            =   240
         TabIndex        =   7
         Top             =   1920
         Width           =   975
      End
      Begin VB.Label Label4 
         Caption         =   "pulse/s"
         Height          =   255
         Left            =   2400
         TabIndex        =   6
         Top             =   1440
         Width           =   735
      End
      Begin VB.Label Label3 
         Caption         =   "�����ٶȣ�"
         Height          =   255
         Left            =   240
         TabIndex        =   4
         Top             =   1440
         Width           =   975
      End
      Begin VB.Label Label2 
         Caption         =   "pulse/s"
         Height          =   255
         Left            =   2400
         TabIndex        =   3
         Top             =   960
         Width           =   735
      End
      Begin VB.Label Label1 
         Caption         =   "��ʼ�ٶȣ�"
         Height          =   255
         Left            =   240
         TabIndex        =   1
         Top             =   960
         Width           =   975
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "���Ƶ���˶��ķ�ʽ"
      Height          =   1575
      Left            =   4080
      TabIndex        =   41
      Top             =   3600
      Width           =   3255
   End
   Begin VB.Label Label29 
      Caption         =   "LED����ʾ�У���ɫ����״̬��Ч,��ʱ��Ӧ����˿������ƽΪ�͡�"
      Height          =   375
      Left            =   960
      TabIndex        =   54
      Top             =   6480
      Width           =   3135
   End
   Begin VB.Label Label23 
      Caption         =   "˵������ѡ���ⲿ����ʱ���͵�ƽΪ��Ч��ƽ��"
      Height          =   255
      Left            =   360
      TabIndex        =   43
      Top             =   6240
      Width           =   3855
   End
End
Attribute VB_Name = "�����λ�˶�"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private MyCButtonNum As Integer    '������Ƶ���˶��ķ�ʽ
Private My_CardNum As Integer     '���忨������
Private My_nCard As Integer    '���忨��

Private Sub MySetProfile()    '���õ������
dmc_set_profile My_nCard, Val(MynAxis), Val(MyFirSpe), Val(MyRunSpe), Val(MySTacc), Val(MySTdec), Val(MyFirSpe)
dmc_set_s_profile My_nCard, Val(My_nAxis), 0, Val(MyTsacc)      '���������߲���
End Sub

Private Sub Form_Load()   '����װ�غ���
Dim My_CardList(7) As Integer '���忨������
Dim My_CardTypeList(7) As Long   '���忨��������
My_CardNum = dmc_board_init()                 '�˶����ƿ���ʼ��
If My_CardNum <= 0 Or My_CardNum > 8 Then
    MsgBox "��ʼ���˶����ƿ�ʧ�ܣ�", , "��ʼ���˶����ƿ���ʾ"
Else
    dmc_get_CardInfList My_CardNum, My_CardTypeList(0), My_CardList(0)        '��ȡ����ʹ�õĿ���
    My_nCard = My_CardList(0)
    MsgBox "��ʼ�����ɹ�����ǰѡ��Ŀ���Ϊ��" + Str(My_nCard), , "����ѡ����ʾ"
    dmc_set_pulse_outmode My_nCard, Val(MynAxis), 0     '�����������ģʽ
    MySetProfile   '�����˶�����
    dmc_write_outbit My_nCard, Val(MyForTurnOut), 1
    dmc_write_outbit My_nCard, Val(MyRevTurnOut), 1   '��ʼ������˿ڵ�ƽ
End If
MyCButton(1).Value = True
MyCButtonNum = 1   '��ʼ�����Ƶ���˶��ķ�ʽΪ�ⲿ����
End Sub

Private Sub Form_Unload(Cancel As Integer)  '����ж�غ���
dmc_board_close    '�رտ��ƿ�
End Sub

Private Sub MyCButton_Click(index As Integer)   'ѡ����Ƶ���˶���ʽ
MyCButtonNum = index  'ѡ����Ƶ���˶��ķ�ʽΪ�ⲿIO����
If MyCButtonNum = 1 Then  '�ж�ѡ��Ĳ���
    MyForTurn.Visible = False
    MyRevTurn.Visible = False   '���ذ�ť
Else
    MyForTurn.Visible = True
    MyRevTurn.Visible = True   '��ʾ��ť
End If
End Sub

Private Sub MyDecStop_Click()  '���ֹͣ��ť
dmc_stop My_nCard, Val(MynAxis), 1        '����ֹͣ
End Sub

Private Sub MyExit_Click()      '�˳�����ť
dmc_board_close   '�رտ��ƿ�
End
End Sub

Private Sub MyForTurn_Click()  '��ת��ť
If (dmc_check_done(My_nCard, Val(MynAxis)) = 0) Then   '�жϵ����ʱ״̬
    MsgBox "��������˶������Ժ��ٳ��ԣ�", , "���������ʾ"
Else
    MySetProfile    '���õ������
    MyForTurnDir = 1  ' ��ʱΪ��ת״̬
    dmc_pmove My_nCard, Val(MynAxis), Val(MyRunDis), 0 '�����˶�
    dmc_write_outbit My_nCard, Val(MyForTurnOut), 0 '��Ӧ�˿�����͵�ƽ
    While (dmc_check_done(My_nCard, Val(MynAxis)) = 0)  '�жϵ����ʱ״̬
        DoEvents
    Wend
    dmc_write_outbit My_nCard, Val(MyForTurnOut), 1  '��Ӧ�˿�����ߵ�ƽ
End If
End Sub

Private Sub MyRevTurn_Click()  '��ת��ť
If (dmc_check_done(My_nCard, Val(MynAxis)) = 0) Then   '�жϵ����ʱ״̬
    MsgBox "��������˶������Ժ��ٳ��ԣ�", , "���������ʾ"
Else
    MySetProfile   '���õ������
    MyRevTurnDir = 1   '��ʱΪ��ת״̬
    dmc_pmove My_nCard, Val(MynAxis), -Val(MyRunDis), 0 '�����˶�
    dmc_write_outbit My_nCard, Val(MyRevTurnOut), 0 '��Ӧ�˿�����͵�ƽ
    While (dmc_check_done(My_nCard, Val(MynAxis)) = 0)  '�жϵ����ʱ״̬
        DoEvents
    Wend
    dmc_write_outbit My_nCard, Val(MyRevTurnOut), 1 '��Ӧ�˿�����ߵ�ƽ
End If
End Sub

Private Sub MyResetPos_Click()  'λ�����㰴ť
dmc_set_position My_nCard, Val(MynAxis), 0    '����ԭ��
End Sub

Private Sub Timer1_Timer()   '��ʱ��1����
MyNowSpe = Str(dmc_read_current_speed(My_nCard, Val(MynAxis)))  '��ȡ��ǰ�ٶ�
MyNowPos = Str(dmc_get_position(My_nCard, Val(MynAxis)))    '��ȡ��ǰλ��
If (dmc_check_done(My_nCard, Val(MynAxis)) = 0) Then   '�жϵ����ʱ״̬
    MyMStatus = "������"
Else
    MyMStatus = "ֹͣ��"
End If
If (dmc_read_outbit(My_nCard, Val(MyForTurnOut)) = 0) Then '��ȡ��ת��ʾ����˿�
    MyForTurnLed.BackColor = RGB(0, 255, 0)    'LED����ʾΪ��ɫ
Else
    MyForTurnLed.BackColor = RGB(255, 0, 0)    'LED����ʾΪ��ɫ
End If
If (dmc_read_outbit(My_nCard, Val(MyRevTurnOut)) = 0) Then '��ȡ��ת��ʾ����˿�
    MyRevTurnLed.BackColor = RGB(0, 255, 0)    'LED����ʾΪ��ɫ
Else
    MyRevTurnLed.BackColor = RGB(255, 0, 0)    'LED����ʾΪ��ɫ
End If
End Sub

Private Sub Timer2_Timer()    '��ʱ��2����
If (MyCButtonNum = 1) Then   '������Ƶ���˶���ʽΪ�ⲿIO����
    If (dmc_read_inbit(My_nCard, Val(MyForTurnNum)) = False) Then  '�жϴ�ʱ������ת������ڵ�ƽ�Ƿ�Ϊ��
        MyForTurn_Click   '��ת��ť����
    ElseIf (dmc_read_inbit(My_nCard, Val(MyRevTurnNum)) = False) Then  '�жϴ�ʱ���Ʒ�ת������ڵ�ƽ�Ƿ�Ϊ��
        MyRevTurn_Click   '��ת��ť����
    End If
End If
End Sub
