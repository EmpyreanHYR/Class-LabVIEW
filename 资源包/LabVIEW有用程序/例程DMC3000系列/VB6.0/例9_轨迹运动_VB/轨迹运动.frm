VERSION 5.00
Begin VB.Form �켣�˶� 
   Caption         =   "�켣�˶�"
   ClientHeight    =   7650
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10080
   LinkTopic       =   "Form1"
   ScaleHeight     =   7650
   ScaleWidth      =   10080
   StartUpPosition =   2  '��Ļ����
   Begin VB.Frame Frame3 
      Caption         =   "ͼ����ʾ"
      Height          =   6975
      Left            =   240
      TabIndex        =   28
      Top             =   240
      Width           =   6015
      Begin VB.PictureBox MyShapeDraw 
         BorderStyle     =   0  'None
         Height          =   6500
         Left            =   120
         ScaleHeight     =   6495
         ScaleWidth      =   5700
         TabIndex        =   29
         Top             =   360
         Width           =   5700
      End
   End
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   7920
      Top             =   6360
   End
   Begin VB.Frame Frame2 
      Caption         =   "��ʾ"
      Height          =   3015
      Left            =   6480
      TabIndex        =   13
      Top             =   2880
      Width           =   3255
      Begin VB.TextBox MyMulCoor0Sta 
         BackColor       =   &H00C0C0C0&
         Height          =   375
         Left            =   1080
         Locked          =   -1  'True
         TabIndex        =   27
         Text            =   "ֹͣ��"
         Top             =   2400
         Width           =   975
      End
      Begin VB.TextBox MyNowYPos 
         BackColor       =   &H00C0C0C0&
         Height          =   375
         Left            =   1080
         Locked          =   -1  'True
         TabIndex        =   24
         Text            =   "0"
         Top             =   1920
         Width           =   975
      End
      Begin VB.TextBox MyNowXPos 
         BackColor       =   &H00C0C0C0&
         Height          =   375
         Left            =   1080
         Locked          =   -1  'True
         TabIndex        =   21
         Text            =   "0"
         Top             =   1440
         Width           =   975
      End
      Begin VB.TextBox MyNowYSpe 
         BackColor       =   &H00C0C0C0&
         Height          =   375
         Left            =   1080
         Locked          =   -1  'True
         TabIndex        =   17
         Text            =   "0"
         Top             =   960
         Width           =   975
      End
      Begin VB.TextBox MyNowXSpe 
         BackColor       =   &H00C0C0C0&
         Height          =   375
         Left            =   1080
         Locked          =   -1  'True
         TabIndex        =   15
         Text            =   "0"
         Top             =   480
         Width           =   975
      End
      Begin VB.Label Label19 
         Caption         =   "����ϵ0״̬��"
         Height          =   375
         Left            =   240
         TabIndex        =   26
         Top             =   2400
         Width           =   735
      End
      Begin VB.Label Label18 
         Caption         =   "pulse"
         Height          =   255
         Left            =   2160
         TabIndex        =   25
         Top             =   2040
         Width           =   615
      End
      Begin VB.Label Label17 
         Caption         =   "Y����ǰλ�ã�"
         Height          =   375
         Left            =   240
         TabIndex        =   23
         Top             =   1920
         Width           =   735
      End
      Begin VB.Label Label16 
         Caption         =   "pulse"
         Height          =   255
         Left            =   2160
         TabIndex        =   22
         Top             =   1560
         Width           =   615
      End
      Begin VB.Label Label15 
         Caption         =   "X����ǰλ�ã�"
         Height          =   375
         Left            =   240
         TabIndex        =   20
         Top             =   1440
         Width           =   735
      End
      Begin VB.Label Label14 
         Caption         =   "pulse/s"
         Height          =   255
         Left            =   2160
         TabIndex        =   19
         Top             =   1080
         Width           =   735
      End
      Begin VB.Label Label13 
         Caption         =   "pulse/s"
         Height          =   255
         Left            =   2160
         TabIndex        =   18
         Top             =   600
         Width           =   735
      End
      Begin VB.Label Label12 
         Caption         =   "Y����ǰ�ٶȣ�"
         Height          =   375
         Left            =   240
         TabIndex        =   16
         Top             =   960
         Width           =   735
      End
      Begin VB.Label Label11 
         Caption         =   "X����ǰ�ٶȣ�"
         Height          =   375
         Left            =   240
         TabIndex        =   14
         Top             =   480
         Width           =   735
      End
   End
   Begin VB.CommandButton MyExit 
      Caption         =   "�˳�����"
      Height          =   615
      Left            =   8400
      TabIndex        =   12
      Top             =   6240
      Width           =   1335
   End
   Begin VB.CommandButton MyRunPro 
      Caption         =   "ִ�й켣�˶�"
      Height          =   615
      Left            =   6480
      TabIndex        =   11
      Top             =   6240
      Width           =   1335
   End
   Begin VB.Frame Frame1 
      Caption         =   "�岹��������"
      Height          =   2415
      Left            =   6480
      TabIndex        =   0
      Top             =   240
      Width           =   3255
      Begin VB.TextBox MyVTacc 
         Height          =   375
         Left            =   1320
         TabIndex        =   9
         Text            =   "0.1"
         Top             =   1800
         Width           =   975
      End
      Begin VB.TextBox MyVRunSpe 
         Height          =   375
         Left            =   1320
         TabIndex        =   6
         Text            =   "1000"
         Top             =   1320
         Width           =   975
      End
      Begin VB.TextBox MyYAxis 
         Height          =   375
         Left            =   1320
         TabIndex        =   4
         Text            =   "1"
         Top             =   840
         Width           =   975
      End
      Begin VB.TextBox MyXAxis 
         Height          =   375
         Left            =   1320
         TabIndex        =   2
         Text            =   "0"
         Top             =   360
         Width           =   975
      End
      Begin VB.Label Label22 
         Caption         =   "(0-3)"
         Height          =   255
         Left            =   2400
         TabIndex        =   31
         Top             =   960
         Width           =   615
      End
      Begin VB.Label Label21 
         Caption         =   "(0-3)"
         Height          =   255
         Left            =   2400
         TabIndex        =   30
         Top             =   480
         Width           =   615
      End
      Begin VB.Label Label8 
         Caption         =   "s"
         Height          =   255
         Left            =   2400
         TabIndex        =   10
         Top             =   1920
         Width           =   495
      End
      Begin VB.Label Label7 
         Caption         =   "�Ӽ���ʱ�䣺"
         Height          =   375
         Left            =   240
         TabIndex        =   8
         Top             =   1800
         Width           =   855
      End
      Begin VB.Label Label6 
         Caption         =   "pulse/s"
         Height          =   255
         Left            =   2400
         TabIndex        =   7
         Top             =   1440
         Width           =   735
      End
      Begin VB.Label Label5 
         Caption         =   "�����ٶȣ�"
         Height          =   255
         Left            =   240
         TabIndex        =   5
         Top             =   1440
         Width           =   975
      End
      Begin VB.Label Label2 
         Caption         =   "Y������ţ�"
         Height          =   255
         Left            =   240
         TabIndex        =   3
         Top             =   960
         Width           =   1095
      End
      Begin VB.Label Label1 
         Caption         =   "X������ţ�"
         Height          =   255
         Left            =   240
         TabIndex        =   1
         Top             =   480
         Width           =   1095
      End
   End
   Begin VB.Label Label3 
      Caption         =   "ע�⣺��ִ��ֱ�߲岹�˶�ʱ����ȡ��X��Y�����ٶ�Ϊʸ���ٶȣ���ִ��Բ���岹�˶�ʱ����ȡ��X��Y�����ٶ�Ϊ���ٶȡ�"
      Height          =   255
      Left            =   120
      TabIndex        =   32
      Top             =   7320
      Width           =   9735
   End
End
Attribute VB_Name = "�켣�˶�"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private My_CardNum As Integer     '���忨������
Private My_nCard As Integer    '���忨��
Private PosNow(1), PosPast(1) As Double '�����ͼ����

Private Sub Form_Load()   '����װ�غ���
Dim My_CardList(7) As Integer '���忨������
Dim My_CardTypeList(7) As Long  '�����������
My_CardNum = dmc_board_init()                 '�˶����ƿ���ʼ��
If My_CardNum <= 0 Or My_CardNum > 8 Then
    MsgBox "��ʼ���˶����ƿ�ʧ�ܣ�", , "��ʼ���˶����ƿ���ʾ"
Else
    dmc_get_CardInfList My_CardNum, My_CardTypeList(0), My_CardList(0)  '��ȡ����ʹ�õĿ����б�
    My_nCard = My_CardList(0)
    MsgBox "��ʼ�����ɹ�����ǰѡ��Ŀ���Ϊ��" + Str(My_nCard), , "����ѡ����ʾ"
    dmc_set_pulse_outmode My_nCard, Val(MyXAxis), 0     '�趨X�����������ģʽ
    dmc_set_pulse_outmode My_nCard, Val(MyYAxis), 0     '�趨Y�����������ģʽ
    dmc_set_position My_nCard, Val(MyXAxis), 0
    dmc_set_position My_nCard, Val(MyYAxis), 0    '��ǰλ����Ϊ���
    MySetProfile   '�����˶�����
End If
End Sub

Private Sub Form_Unload(Cancel As Integer)  '����ж�غ���
dmc_board_close       '�رտ��ƿ�
End Sub

Private Sub MySetProfile()    '���õ������
dmc_set_vector_profile_multicoor My_nCard, 0, 0, Val(MyVRunSpe), Val(MyVTacc), 0, 0 '�趨�岹����
End Sub

Private Sub MyExit_Click()  '�˳�����ť
dmc_board_close       '�رտ��ƿ�
End
End Sub

Private Sub MyRunPro_Click()  'ִ�й켣�˶���ť
Dim MynAxis(1) As Integer   '�����������
Dim DistList(1) As Long   '����ֱ�߲岹������������
Dim MyCen(1) As Long   '����Բ���岹Բ�ľ�����������
Dim MyTar(1) As Long   '����Բ���岹�յ������������

MynAxis(0) = Val(MyXAxis)
MynAxis(1) = Val(MyYAxis)   '��ֵ�˶������
MySetXYLine_Normal          '������ͨ��ʾ��������

If (dmc_check_done_multicoor(My_nCard, 0) = 0) Then '�ж�����ϵ0��ʱ״̬
    MsgBox "��������˶������Ժ��ٳ��ԣ�", , "���������ʾ"
Else
    MySetProfile     '���õ������
    dmc_set_position My_nCard, Val(MyXAxis), 0
    dmc_set_position My_nCard, Val(MyYAxis), 0    '��ǰλ����Ϊ���
    PosPast(0) = 0: PosPast(1) = 0       '���û�ͼ������㿪ʼ
    
    DistList(0) = 1000: DistList(1) = 3000  'OA��ֱ�߲岹�յ����긳ֵ
    dmc_line_multicoor My_nCard, 0, 2, MynAxis(0), DistList(0), 1     'OA���˶�������ģʽֱ�߲岹
    While (dmc_check_done_multicoor(My_nCard, 0) = 0)  '�ж�����ϵ0״̬
        DoEvents
    Wend
    
    DistList(0) = 1866: DistList(1) = 5000  'AB��ֱ�߲岹�յ����긳ֵ
    dmc_line_multicoor My_nCard, 0, 2, MynAxis(0), DistList(0), 1     'AB���˶�������ģʽֱ�߲岹
    While (dmc_check_done_multicoor(My_nCard, 0) = 0)   '�ж�����ϵ0״̬
        DoEvents
    Wend
    
    MyCen(0) = 2732: MyCen(1) = 4500 '��ֵBC��Բ���岹Բ�ľ�������
    MyTar(0) = 3598: MyTar(1) = 5000 '��ֵBC��Բ���岹�յ��������
    dmc_arc_move_multicoor My_nCard, 0, MynAxis(0), MyTar(0), MyCen(0), 0, 1  'BC���˶�������ģʽ˳ʱ��Բ���岹
    While (dmc_check_done_multicoor(My_nCard, 0) = 0)    '�ж�����ϵ0״̬
        DoEvents
    Wend
    DistList(0) = 4464: DistList(1) = 3000  'CD��ֱ�߲岹�յ����긳ֵ
    dmc_line_multicoor My_nCard, 0, 2, MynAxis(0), DistList(0), 1     'CD���˶�������ģʽֱ�߲岹
    While (dmc_check_done_multicoor(My_nCard, 0) = 0)    '�ж�����ϵ0״̬
        DoEvents
    Wend
    MyCen(0) = 2732: MyCen(1) = 1994 '��ֵDA��Բ���岹Բ�ľ�������
    MyTar(0) = 1000: MyTar(1) = 3000 '��ֵDA��Բ���岹�յ��������
    dmc_arc_move_multicoor My_nCard, 0, MynAxis(0), MyTar(0), MyCen(0), 0, 1   'DA���˶�������ģʽ˳ʱ��Բ���岹
    While (dmc_check_done_multicoor(My_nCard, 0) = 0)   '�ж�����ϵ0״̬
        DoEvents
    Wend
End If
End Sub

Private Sub MySet_NormalShapeDraw()           '������ʾ��ͼ�������
MyShapeDraw.ScaleLeft = -300
MyShapeDraw.ScaleTop = 6200
MyShapeDraw.ScaleWidth = 5700
MyShapeDraw.ScaleHeight = -6500
End Sub

Private Sub MySetXYLine_Normal()          '������ͨ��ʾ��������
Dim k As Double
MySet_NormalShapeDraw                     '������ʾ��ͼ�������
MyShapeDraw.Cls
MyShapeDraw.DrawWidth = 1
MyShapeDraw.DrawStyle = 2

For k = 0 To (MyShapeDraw.ScaleWidth + MyShapeDraw.ScaleLeft) Step 1000                           '����ͼ����������
    MyShapeDraw.Line (k, MyShapeDraw.ScaleHeight + MyShapeDraw.ScaleTop)-(k, MyShapeDraw.ScaleTop), RGB(0, 250, 5)
    MyShapeDraw.CurrentX = k - 220: MyShapeDraw.CurrentY = -80
    MyShapeDraw.Print Str(k)
Next k
'For k = 0 To -MyShapeDraw.ScaleLeft Step 1000
   ' MyShapeDraw.Line (-k - 1000, MyShapeDraw.ScaleHeight + MyShapeDraw.ScaleTop)-(-k - 1000, MyShapeDraw.ScaleTop), RGB(0, 250, 5)
'Next k
For k = 1000 To MyShapeDraw.ScaleTop Step 1000
    MyShapeDraw.Line (MyShapeDraw.ScaleLeft, k)-(MyShapeDraw.ScaleLeft + MyShapeDraw.ScaleWidth, k), RGB(0, 250, 5)
    MyShapeDraw.CurrentX = 0: MyShapeDraw.CurrentY = k
    MyShapeDraw.Print Str(k)
Next k
'For k = 0 To -MyShapeDraw.ScaleHeight - MyShapeDraw.ScaleTop Step 1000
 '   MyShapeDraw.Line (MyShapeDraw.ScaleLeft, -k - 1000)-(MyShapeDraw.ScaleLeft + MyShapeDraw.ScaleWidth, -k - 1000), RGB(0, 250, 5)
'Next k
MyShapeDraw.DrawStyle = 0
MyShapeDraw.Line (0, MyShapeDraw.ScaleHeight + MyShapeDraw.ScaleTop)-(0, MyShapeDraw.ScaleTop), RGB(255, 0, 0)
MyShapeDraw.Line (MyShapeDraw.ScaleLeft, 0)-(MyShapeDraw.ScaleLeft + MyShapeDraw.ScaleWidth, 0), RGB(255, 0, 0)
End Sub

Private Sub MyDrawLine()                        '��ͼ����
PosNow(0) = dmc_get_position(My_nCard, Val(MyXAxis))
PosNow(1) = dmc_get_position(My_nCard, Val(MyYAxis))
MyShapeDraw.Line (PosPast(0), PosPast(1))-(PosNow(0), PosNow(1))
PosPast(0) = PosNow(0): PosPast(1) = PosNow(1)
End Sub

Private Sub Timer1_Timer()   '��ʱ������
MyNowXSpe = Str(dmc_read_current_speed(My_nCard, Val(MyXAxis)))
MyNowYSpe = Str(dmc_read_current_speed(My_nCard, Val(MyYAxis))) '��ȡ��ǰ�ٶ�
MyNowXPos = Str(dmc_get_position(My_nCard, Val(MyXAxis)))
MyNowYPos = Str(dmc_get_position(My_nCard, Val(MyYAxis))) '��ȡ��ǰλ��
If (dmc_check_done_multicoor(My_nCard, 0) = 0) Then   '�ж�����ϵ0��ʱ״̬
    MyMulCoor0Sta = "������"
Else
    MyMulCoor0Sta = "ֹͣ��"
End If
MyDrawLine                        '��ͼ����
End Sub
