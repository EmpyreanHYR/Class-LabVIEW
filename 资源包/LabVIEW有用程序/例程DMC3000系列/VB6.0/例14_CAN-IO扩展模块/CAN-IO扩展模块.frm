VERSION 5.00
Begin VB.Form MainForm 
   Caption         =   "CAN-IO��չģ��"
   ClientHeight    =   5235
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   9720
   LinkTopic       =   "Form1"
   ScaleHeight     =   5235
   ScaleWidth      =   9720
   StartUpPosition =   2  '��Ļ����
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   500
      Left            =   7560
      Top             =   4560
   End
   Begin VB.Timer Timer1 
      Interval        =   50
      Left            =   4800
      Top             =   240
   End
   Begin VB.CommandButton myCANIO_Circle 
      Caption         =   "ѭ�����"
      Height          =   495
      Left            =   6360
      TabIndex        =   77
      Top             =   4440
      Width           =   1215
   End
   Begin VB.TextBox myCAN_Num 
      Height          =   375
      Left            =   3480
      TabIndex        =   76
      Text            =   "1"
      Top             =   240
      Width           =   615
   End
   Begin VB.Frame Frame2 
      Caption         =   "CANͨѶ����"
      Height          =   1695
      Left            =   6360
      TabIndex        =   70
      Top             =   2520
      Width           =   3015
      Begin VB.CommandButton myCANDisConnect 
         Caption         =   "�Ͽ�"
         Height          =   495
         Left            =   1560
         TabIndex        =   74
         Top             =   960
         Width           =   1095
      End
      Begin VB.CommandButton myCANConnect 
         Caption         =   "����"
         Height          =   495
         Left            =   240
         TabIndex        =   73
         Top             =   960
         Width           =   1095
      End
      Begin VB.TextBox myCANCount 
         Height          =   375
         Left            =   1440
         TabIndex        =   72
         Text            =   "1"
         Top             =   360
         Width           =   1095
      End
      Begin VB.Label Label4 
         Caption         =   "CAN�ڵ�����"
         Height          =   255
         Left            =   360
         TabIndex        =   71
         Top             =   480
         Width           =   1095
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "CANͨѶ״̬��ʾ"
      Height          =   1815
      Left            =   6360
      TabIndex        =   65
      Top             =   360
      Width           =   3015
      Begin VB.TextBox myCANStatus 
         BackColor       =   &H80000000&
         Height          =   375
         Left            =   1560
         Locked          =   -1  'True
         TabIndex        =   69
         Top             =   1080
         Width           =   1095
      End
      Begin VB.TextBox myGetCANCount 
         BackColor       =   &H80000000&
         Height          =   375
         Left            =   1560
         Locked          =   -1  'True
         TabIndex        =   67
         Top             =   480
         Width           =   1095
      End
      Begin VB.Label Label2 
         Caption         =   "CANͨѶ״̬��"
         Height          =   255
         Left            =   360
         TabIndex        =   68
         Top             =   1200
         Width           =   1215
      End
      Begin VB.Label Label1 
         Caption         =   "CAN�ڵ�����"
         Height          =   255
         Left            =   360
         TabIndex        =   66
         Top             =   600
         Width           =   1095
      End
   End
   Begin VB.PictureBox myPicCAN_OUT 
      Height          =   495
      Index           =   15
      Left            =   5400
      ScaleHeight     =   435
      ScaleWidth      =   435
      TabIndex        =   64
      Top             =   4200
      Width           =   495
   End
   Begin VB.PictureBox myPicCAN_OUT 
      Height          =   495
      Index           =   14
      Left            =   4680
      ScaleHeight     =   435
      ScaleWidth      =   435
      TabIndex        =   62
      Top             =   4200
      Width           =   495
   End
   Begin VB.PictureBox myPicCAN_OUT 
      Height          =   495
      Index           =   13
      Left            =   3960
      ScaleHeight     =   435
      ScaleWidth      =   435
      TabIndex        =   60
      Top             =   4200
      Width           =   495
   End
   Begin VB.PictureBox myPicCAN_OUT 
      Height          =   495
      Index           =   12
      Left            =   3240
      ScaleHeight     =   435
      ScaleWidth      =   435
      TabIndex        =   58
      Top             =   4200
      Width           =   495
   End
   Begin VB.PictureBox myPicCAN_OUT 
      Height          =   495
      Index           =   11
      Left            =   2520
      ScaleHeight     =   435
      ScaleWidth      =   435
      TabIndex        =   56
      Top             =   4200
      Width           =   495
   End
   Begin VB.PictureBox myPicCAN_OUT 
      Height          =   495
      Index           =   10
      Left            =   1800
      ScaleHeight     =   435
      ScaleWidth      =   435
      TabIndex        =   54
      Top             =   4200
      Width           =   495
   End
   Begin VB.PictureBox myPicCAN_OUT 
      Height          =   495
      Index           =   9
      Left            =   1080
      ScaleHeight     =   435
      ScaleWidth      =   435
      TabIndex        =   52
      Top             =   4200
      Width           =   495
   End
   Begin VB.PictureBox myPicCAN_OUT 
      Height          =   495
      Index           =   8
      Left            =   360
      ScaleHeight     =   435
      ScaleWidth      =   435
      TabIndex        =   50
      Top             =   4200
      Width           =   495
   End
   Begin VB.PictureBox myPicCAN_OUT 
      Height          =   495
      Index           =   7
      Left            =   5400
      ScaleHeight     =   435
      ScaleWidth      =   435
      TabIndex        =   48
      Top             =   3240
      Width           =   495
   End
   Begin VB.PictureBox myPicCAN_OUT 
      Height          =   495
      Index           =   6
      Left            =   4680
      ScaleHeight     =   435
      ScaleWidth      =   435
      TabIndex        =   46
      Top             =   3240
      Width           =   495
   End
   Begin VB.PictureBox myPicCAN_OUT 
      Height          =   495
      Index           =   5
      Left            =   3960
      ScaleHeight     =   435
      ScaleWidth      =   435
      TabIndex        =   44
      Top             =   3240
      Width           =   495
   End
   Begin VB.PictureBox myPicCAN_OUT 
      Height          =   495
      Index           =   4
      Left            =   3240
      ScaleHeight     =   435
      ScaleWidth      =   435
      TabIndex        =   42
      Top             =   3240
      Width           =   495
   End
   Begin VB.PictureBox myPicCAN_OUT 
      Height          =   495
      Index           =   3
      Left            =   2520
      ScaleHeight     =   435
      ScaleWidth      =   435
      TabIndex        =   40
      Top             =   3240
      Width           =   495
   End
   Begin VB.PictureBox myPicCAN_OUT 
      Height          =   495
      Index           =   2
      Left            =   1800
      ScaleHeight     =   435
      ScaleWidth      =   435
      TabIndex        =   38
      Top             =   3240
      Width           =   495
   End
   Begin VB.PictureBox myPicCAN_OUT 
      Height          =   495
      Index           =   1
      Left            =   1080
      ScaleHeight     =   435
      ScaleWidth      =   435
      TabIndex        =   36
      Top             =   3240
      Width           =   495
   End
   Begin VB.PictureBox myPicCAN_OUT 
      Height          =   495
      Index           =   0
      Left            =   360
      ScaleHeight     =   435
      ScaleWidth      =   435
      TabIndex        =   34
      Top             =   3240
      Width           =   495
   End
   Begin VB.PictureBox myPicCAN_IN 
      Height          =   495
      Index           =   15
      Left            =   5400
      ScaleHeight     =   435
      ScaleWidth      =   435
      TabIndex        =   31
      Top             =   2160
      Width           =   495
   End
   Begin VB.PictureBox myPicCAN_IN 
      Height          =   495
      Index           =   14
      Left            =   4680
      ScaleHeight     =   435
      ScaleWidth      =   435
      TabIndex        =   29
      Top             =   2160
      Width           =   495
   End
   Begin VB.PictureBox myPicCAN_IN 
      Height          =   495
      Index           =   13
      Left            =   3960
      ScaleHeight     =   435
      ScaleWidth      =   435
      TabIndex        =   27
      Top             =   2160
      Width           =   495
   End
   Begin VB.PictureBox myPicCAN_IN 
      Height          =   495
      Index           =   12
      Left            =   3240
      ScaleHeight     =   435
      ScaleWidth      =   435
      TabIndex        =   25
      Top             =   2160
      Width           =   495
   End
   Begin VB.PictureBox myPicCAN_IN 
      Height          =   495
      Index           =   11
      Left            =   2520
      ScaleHeight     =   435
      ScaleWidth      =   435
      TabIndex        =   23
      Top             =   2160
      Width           =   495
   End
   Begin VB.PictureBox myPicCAN_IN 
      Height          =   495
      Index           =   10
      Left            =   1800
      ScaleHeight     =   435
      ScaleWidth      =   435
      TabIndex        =   21
      Top             =   2160
      Width           =   495
   End
   Begin VB.PictureBox myPicCAN_IN 
      Height          =   495
      Index           =   9
      Left            =   1080
      ScaleHeight     =   435
      ScaleWidth      =   435
      TabIndex        =   19
      Top             =   2160
      Width           =   495
   End
   Begin VB.PictureBox myPicCAN_IN 
      Height          =   495
      Index           =   8
      Left            =   360
      ScaleHeight     =   435
      ScaleWidth      =   435
      TabIndex        =   17
      Top             =   2160
      Width           =   495
   End
   Begin VB.PictureBox myPicCAN_IN 
      Height          =   495
      Index           =   7
      Left            =   5400
      ScaleHeight     =   435
      ScaleWidth      =   435
      TabIndex        =   15
      Top             =   1200
      Width           =   495
   End
   Begin VB.PictureBox myPicCAN_IN 
      Height          =   495
      Index           =   6
      Left            =   4680
      ScaleHeight     =   435
      ScaleWidth      =   435
      TabIndex        =   13
      Top             =   1200
      Width           =   495
   End
   Begin VB.PictureBox myPicCAN_IN 
      Height          =   495
      Index           =   5
      Left            =   3960
      ScaleHeight     =   435
      ScaleWidth      =   435
      TabIndex        =   11
      Top             =   1200
      Width           =   495
   End
   Begin VB.PictureBox myPicCAN_IN 
      Height          =   495
      Index           =   4
      Left            =   3240
      ScaleHeight     =   435
      ScaleWidth      =   435
      TabIndex        =   9
      Top             =   1200
      Width           =   495
   End
   Begin VB.PictureBox myPicCAN_IN 
      Height          =   495
      Index           =   3
      Left            =   2520
      ScaleHeight     =   435
      ScaleWidth      =   435
      TabIndex        =   7
      Top             =   1200
      Width           =   495
   End
   Begin VB.PictureBox myPicCAN_IN 
      Height          =   495
      Index           =   2
      Left            =   1800
      ScaleHeight     =   435
      ScaleWidth      =   435
      TabIndex        =   5
      Top             =   1200
      Width           =   495
   End
   Begin VB.PictureBox myPicCAN_IN 
      Height          =   495
      Index           =   1
      Left            =   1080
      ScaleHeight     =   435
      ScaleWidth      =   435
      TabIndex        =   3
      Top             =   1200
      Width           =   495
   End
   Begin VB.PictureBox myPicCAN_IN 
      Height          =   495
      Index           =   0
      Left            =   360
      ScaleHeight     =   435
      ScaleWidth      =   435
      TabIndex        =   1
      Top             =   1200
      Width           =   495
   End
   Begin VB.CommandButton myExit 
      Caption         =   "�˳�"
      Height          =   495
      Left            =   8040
      TabIndex        =   0
      Top             =   4440
      Width           =   1215
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FF8080&
      X1              =   6120
      X2              =   6120
      Y1              =   0
      Y2              =   5280
   End
   Begin VB.Label Label5 
      Caption         =   "��ǰ������CAN�ڵ�ţ�"
      Height          =   255
      Left            =   1440
      TabIndex        =   75
      Top             =   360
      Width           =   2055
   End
   Begin VB.Label myLabCAN_Out 
      Caption         =   "OUT15"
      Height          =   255
      Index           =   15
      Left            =   5400
      TabIndex        =   63
      Top             =   3960
      Width           =   495
   End
   Begin VB.Label myLabCAN_Out 
      Caption         =   "OUT14"
      Height          =   255
      Index           =   14
      Left            =   4680
      TabIndex        =   61
      Top             =   3960
      Width           =   495
   End
   Begin VB.Label myLabCAN_Out 
      Caption         =   "OUT13"
      Height          =   255
      Index           =   13
      Left            =   3960
      TabIndex        =   59
      Top             =   3960
      Width           =   495
   End
   Begin VB.Label myLabCAN_Out 
      Caption         =   "OUT12"
      Height          =   255
      Index           =   12
      Left            =   3240
      TabIndex        =   57
      Top             =   3960
      Width           =   495
   End
   Begin VB.Label myLabCAN_Out 
      Caption         =   "OUT11"
      Height          =   255
      Index           =   11
      Left            =   2520
      TabIndex        =   55
      Top             =   3960
      Width           =   495
   End
   Begin VB.Label myLabCAN_Out 
      Caption         =   "OUT10"
      Height          =   255
      Index           =   10
      Left            =   1800
      TabIndex        =   53
      Top             =   3960
      Width           =   495
   End
   Begin VB.Label myLabCAN_Out 
      Caption         =   "OUT9"
      Height          =   255
      Index           =   9
      Left            =   1080
      TabIndex        =   51
      Top             =   3960
      Width           =   375
   End
   Begin VB.Label myLabCAN_Out 
      Caption         =   "OUT8"
      Height          =   255
      Index           =   8
      Left            =   360
      TabIndex        =   49
      Top             =   3960
      Width           =   375
   End
   Begin VB.Label myLabCAN_Out 
      Caption         =   "OUT7"
      Height          =   255
      Index           =   7
      Left            =   5400
      TabIndex        =   47
      Top             =   3000
      Width           =   375
   End
   Begin VB.Label myLabCAN_Out 
      Caption         =   "OUT6"
      Height          =   255
      Index           =   6
      Left            =   4680
      TabIndex        =   45
      Top             =   3000
      Width           =   375
   End
   Begin VB.Label myLabCAN_Out 
      Caption         =   "OUT5"
      Height          =   255
      Index           =   5
      Left            =   3960
      TabIndex        =   43
      Top             =   3000
      Width           =   375
   End
   Begin VB.Label myLabCAN_Out 
      Caption         =   "OUT4"
      Height          =   255
      Index           =   4
      Left            =   3240
      TabIndex        =   41
      Top             =   3000
      Width           =   375
   End
   Begin VB.Label myLabCAN_Out 
      Caption         =   "OUT3"
      Height          =   255
      Index           =   3
      Left            =   2520
      TabIndex        =   39
      Top             =   3000
      Width           =   375
   End
   Begin VB.Label myLabCAN_Out 
      Caption         =   "OUT2"
      Height          =   255
      Index           =   2
      Left            =   1800
      TabIndex        =   37
      Top             =   3000
      Width           =   375
   End
   Begin VB.Label myLabCAN_Out 
      Caption         =   "OUT1"
      Height          =   255
      Index           =   1
      Left            =   1080
      TabIndex        =   35
      Top             =   3000
      Width           =   375
   End
   Begin VB.Label myLabCAN_Out 
      Caption         =   "OUT0"
      Height          =   255
      Index           =   0
      Left            =   360
      TabIndex        =   33
      Top             =   3000
      Width           =   375
   End
   Begin VB.Label myLabCAN_IN 
      Caption         =   "IN15"
      Height          =   255
      Index           =   15
      Left            =   5520
      TabIndex        =   32
      Top             =   1920
      Width           =   375
   End
   Begin VB.Label myLabCAN_IN 
      Caption         =   "IN14"
      Height          =   255
      Index           =   14
      Left            =   4800
      TabIndex        =   30
      Top             =   1920
      Width           =   375
   End
   Begin VB.Label myLabCAN_IN 
      Caption         =   "IN13"
      Height          =   255
      Index           =   13
      Left            =   4080
      TabIndex        =   28
      Top             =   1920
      Width           =   375
   End
   Begin VB.Label myLabCAN_IN 
      Caption         =   "IN12"
      Height          =   255
      Index           =   12
      Left            =   3360
      TabIndex        =   26
      Top             =   1920
      Width           =   375
   End
   Begin VB.Label myLabCAN_IN 
      Caption         =   "IN11"
      Height          =   255
      Index           =   11
      Left            =   2640
      TabIndex        =   24
      Top             =   1920
      Width           =   375
   End
   Begin VB.Label myLabCAN_IN 
      Caption         =   "IN10"
      Height          =   255
      Index           =   10
      Left            =   1920
      TabIndex        =   22
      Top             =   1920
      Width           =   375
   End
   Begin VB.Label myLabCAN_IN 
      Caption         =   "IN9"
      Height          =   255
      Index           =   9
      Left            =   1200
      TabIndex        =   20
      Top             =   1920
      Width           =   375
   End
   Begin VB.Label myLabCAN_IN 
      Caption         =   "IN8"
      Height          =   255
      Index           =   8
      Left            =   480
      TabIndex        =   18
      Top             =   1920
      Width           =   375
   End
   Begin VB.Label myLabCAN_IN 
      Caption         =   "IN7"
      Height          =   255
      Index           =   7
      Left            =   5520
      TabIndex        =   16
      Top             =   960
      Width           =   375
   End
   Begin VB.Label myLabCAN_IN 
      Caption         =   "IN6"
      Height          =   255
      Index           =   6
      Left            =   4800
      TabIndex        =   14
      Top             =   960
      Width           =   375
   End
   Begin VB.Label myLabCAN_IN 
      Caption         =   "IN5"
      Height          =   255
      Index           =   5
      Left            =   4080
      TabIndex        =   12
      Top             =   960
      Width           =   375
   End
   Begin VB.Label myLabCAN_IN 
      Caption         =   "IN4"
      Height          =   255
      Index           =   4
      Left            =   3360
      TabIndex        =   10
      Top             =   960
      Width           =   375
   End
   Begin VB.Label myLabCAN_IN 
      Caption         =   "IN3"
      Height          =   255
      Index           =   3
      Left            =   2640
      TabIndex        =   8
      Top             =   960
      Width           =   375
   End
   Begin VB.Label myLabCAN_IN 
      Caption         =   "IN2"
      Height          =   255
      Index           =   2
      Left            =   1920
      TabIndex        =   6
      Top             =   960
      Width           =   375
   End
   Begin VB.Label myLabCAN_IN 
      Caption         =   "IN1"
      Height          =   255
      Index           =   1
      Left            =   1200
      TabIndex        =   4
      Top             =   960
      Width           =   375
   End
   Begin VB.Label myLabCAN_IN 
      Caption         =   "IN0"
      Height          =   255
      Index           =   0
      Left            =   480
      TabIndex        =   2
      Top             =   960
      Width           =   375
   End
End
Attribute VB_Name = "MainForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private My_nCard As Integer    '���忨��
Private MyCAN_CountBuf, MyCAN_StatusBuf As Integer
Private MyT1Count, MyT2i, MyT2j As Integer
Private IfMyIOCircle As Boolean

Private Sub Form_Load()     '����װ�غ���
    Dim My_CardNum As Integer     '���忨��
    Dim My_CardList(7) As Integer '���忨������
    Dim My_CardTypeList(7) As Long  '�����������
    My_CardNum = dmc_board_init()
    If ((My_CardNum <= 0) Or (My_CardNum > 8)) Then
       MsgBox "δ�ҵ����ƿ���࿨�����ص���", , "���ƿ���ʼ����ʾ"
    Else
        dmc_get_CardInfList My_CardNum, My_CardTypeList(0), My_CardList(0)  '��ȡ����ʹ�õĿ����б�
        My_nCard = My_CardList(0)
        MsgBox "��ǰѡ��Ŀ���Ϊ��" + Str(My_nCard), , "����ѡ����ʾ"
        IfMyIOCircle = False
    End If
End Sub

Private Sub Form_Unload(Cancel As Integer)   '����ж�غ���
    dmc_board_close       '�رտ��ƿ�
End Sub

Private Sub myCANConnect_Click()   '���Ӱ�ť
    dmc_set_can_state My_nCard, Val(myCANCount), 1    'CANͨѶ����
End Sub

Private Sub myCANDisConnect_Click()  '�Ͽ���ť
    dmc_set_can_state My_nCard, Val(myCANCount), 0    'CANͨѶ�Ͽ�
End Sub

Private Sub myCANIO_Circle_Click()   'ѭ����ư�ť
    If (IfMyIOCircle = False) Then
        If (MyCAN_StatusBuf = 1) Then     '���CAN��������
            Dim i As Integer
            For i = 1 To MyCAN_CountBuf
                dmc_write_can_outport My_nCard, i, 0, &HFFFF  '���ȫ��Ϊ�ߵ�ƽ
            Next i
            myCANIO_Circle.Caption = "ֹͣѭ��"
            IfMyIOCircle = True
            Timer2.Enabled = True
            MyT2i = 1: MyT2j = 0
        Else               '�����ʱCANͨѶ�Ͽ��������쳣
            MsgBox "CANͨѶ�Ͽ��������쳣!", , "CANͨѶ�쳣��ʾ"
    End If
    Else
        IfMyIOCircle = False
        Timer2.Enabled = False
        myCANIO_Circle.Caption = "ѭ�����"
    End If
End Sub

Private Sub myExit_Click()    '�˳���ť
    dmc_board_close       '�رտ��ƿ�
    End
End Sub

Private Sub myPicCAN_OUT_Click(index As Integer)    '����CAN-IO���
    If (dmc_read_can_outbit(My_nCard, Val(myCAN_Num), index) = 0) Then '������Ϊ�͵�ƽ
        dmc_write_can_outbit My_nCard, Val(myCAN_Num), index, 1  '����ߵ�ƽ
    Else    '������Ϊ�ߵ�ƽ
        dmc_write_can_outbit My_nCard, Val(myCAN_Num), index, 0  '����͵�ƽ
    End If
End Sub

Private Sub Timer1_Timer()     '��ʱ��1����
    dmc_get_can_state My_nCard, MyCAN_CountBuf, MyCAN_StatusBuf    '��ȡCANͨѶ״̬
    myGetCANCount.Text = Str(MyCAN_CountBuf)    '��ʾ
    Select Case MyCAN_StatusBuf     '�ж�ͨѶ����״̬
        Case 0
            myCANStatus.Text = "ͨѶ�ѶϿ�"
        Case 1
            myCANStatus.Text = "ͨѶ������"
        Case 2
            myCANStatus.Text = "ͨѶ�쳣"
        Case Else
    End Select
    
    For MyT1Count = 0 To 15     'ѭ��
        If (dmc_read_can_inbit(My_nCard, Val(myCAN_Num), MyT1Count) = 0) Then '�������Ϊ�͵�ƽ
            myPicCAN_IN(MyT1Count).BackColor = RGB(0, 255, 0)     '��ʾ��ɫ
        Else    '�������Ϊ�ߵ�ƽ
            myPicCAN_IN(MyT1Count).BackColor = RGB(255, 0, 0)    '��ʾ��ɫ
        End If
        
        If (dmc_read_can_outbit(My_nCard, Val(myCAN_Num), MyT1Count) = 0) Then '������Ϊ�͵�ƽ
            myPicCAN_OUT(MyT1Count).BackColor = RGB(0, 255, 0)     '��ʾ��ɫ
        Else    '������Ϊ�ߵ�ƽ
            myPicCAN_OUT(MyT1Count).BackColor = RGB(255, 0, 0)    '��ʾ��ɫ
        End If
    Next MyT1Count
    
End Sub

Private Sub Timer2_Timer()    '��ʱ��2����
    dmc_write_can_outbit My_nCard, MyT2i, MyT2j, 0   '����͵�ƽ
    If (MyT2j > 0) Then
        dmc_write_can_outbit My_nCard, MyT2i, MyT2j - 1, 1 'ǰһ����˿���Ϊ�ߵ�ƽ
    End If
    If (MyT2j < 16) Then      '�����ǰ�ڵ�δѭ����
        MyT2j = MyT2j + 1
    Else
        dmc_write_can_outbit My_nCard, MyT2i, MyT2j - 1, 1    'ǰһ�ڵ����һ������˿���Ϊ�ߵ�ƽ
        MyT2j = 0
        If (MyT2i < MyCAN_CountBuf) Then
            MyT2i = MyT2i + 1
            myCAN_Num.Text = Str(MyT2i)    '���½����ı���ǰ������CAN�ڵ��
        Else
            MyT2i = 1
            myCAN_Num.Text = Str(MyT2i)    '���½����ı���ǰ������CAN�ڵ��
        End If
    End If
    
End Sub
