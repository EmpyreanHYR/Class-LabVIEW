VERSION 5.00
Begin VB.Form dmc3000 
   Caption         =   "��ά����λ�ñȽϣ�DMC3000��"
   ClientHeight    =   5265
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10215
   LinkTopic       =   "Form1"
   ScaleHeight     =   5265
   ScaleWidth      =   10215
   StartUpPosition =   2  '��Ļ����
   Begin VB.CommandButton MySetIO3Low 
      Caption         =   "���IO��3��Ϊ�͵�ƽ"
      Height          =   615
      Left            =   1560
      TabIndex        =   14
      Top             =   3360
      Width           =   1215
   End
   Begin VB.PictureBox MyLED0 
      Height          =   615
      Left            =   840
      ScaleHeight     =   555
      ScaleWidth      =   555
      TabIndex        =   7
      Top             =   960
      Width           =   615
   End
   Begin VB.PictureBox MyLED1 
      Height          =   615
      Left            =   2160
      ScaleHeight     =   555
      ScaleWidth      =   555
      TabIndex        =   6
      Top             =   960
      Width           =   615
   End
   Begin VB.TextBox My_NowPos 
      Height          =   375
      Left            =   1200
      TabIndex        =   5
      Top             =   2040
      Width           =   1695
   End
   Begin VB.CommandButton My_Run 
      Caption         =   "����"
      Height          =   615
      Left            =   120
      TabIndex        =   4
      Top             =   3360
      Width           =   1215
   End
   Begin VB.CommandButton My_Exit 
      Caption         =   "�˳�����"
      Height          =   615
      Left            =   3000
      TabIndex        =   3
      Top             =   3360
      Width           =   1215
   End
   Begin VB.Timer Timer1 
      Interval        =   50
      Left            =   3480
      Top             =   480
   End
   Begin VB.TextBox My_NowPosY 
      Height          =   375
      Left            =   1200
      TabIndex        =   2
      Top             =   2520
      Width           =   1695
   End
   Begin VB.Frame Frame7 
      Caption         =   "�켣ͼ��(X-Y)"
      Height          =   4005
      Left            =   4440
      TabIndex        =   0
      Top             =   120
      Width           =   5565
      Begin VB.PictureBox My_ShapeDrawPic 
         BorderStyle     =   0  'None
         FillStyle       =   0  'Solid
         Height          =   3500
         Left            =   120
         ScaleHeight     =   3495
         ScaleWidth      =   5205
         TabIndex        =   1
         Top             =   240
         Width           =   5200
      End
   End
   Begin VB.Timer Timer2 
      Interval        =   150
      Left            =   3480
      Top             =   1200
   End
   Begin VB.Label Label9 
      Caption         =   "��һ���Ƚϵ㴥��ʱ�����IO��0��ƽȡ�����ڶ����Ƚϵ㴥��ʱ�����IO��3��Ϊ�ߵ�ƽ��"
      Height          =   255
      Left            =   840
      TabIndex        =   17
      Top             =   4800
      Width           =   7335
   End
   Begin VB.Label Label8 
      Caption         =   "��άλ�ñȽϵ��ڹ켣ͼ�����Ժ�ɫСԲ���ʾ����������"
      Height          =   255
      Left            =   840
      TabIndex        =   16
      Top             =   4560
      Width           =   4815
   End
   Begin VB.Label Label7 
      Caption         =   "˵������ʼ��ʱ�����IO��0�����ϴεĵ�ƽ״̬�����IO��3��Ϊ�͵�ƽ��ͼ��LED�ƺ�ɫ��ʾ�ߵ�ƽ����ɫ��ʾ�͵�ƽ��"
      Height          =   255
      Left            =   240
      TabIndex        =   15
      Top             =   4320
      Width           =   9735
   End
   Begin VB.Label Label1 
      Caption         =   "���IO��0"
      Height          =   375
      Left            =   840
      TabIndex        =   13
      Top             =   480
      Width           =   615
   End
   Begin VB.Label Label2 
      Caption         =   "���IO��3"
      Height          =   375
      Left            =   2280
      TabIndex        =   12
      Top             =   480
      Width           =   615
   End
   Begin VB.Label Label3 
      Caption         =   "X����ǰλ�ã�"
      Height          =   375
      Left            =   360
      TabIndex        =   11
      Top             =   2040
      Width           =   735
   End
   Begin VB.Label Label4 
      Caption         =   "pulse"
      Height          =   255
      Left            =   3120
      TabIndex        =   10
      Top             =   2160
      Width           =   975
   End
   Begin VB.Label Label5 
      Caption         =   "pulse"
      Height          =   255
      Left            =   3120
      TabIndex        =   9
      Top             =   2640
      Width           =   975
   End
   Begin VB.Label Label6 
      Caption         =   "Y����ǰλ�ã�"
      Height          =   375
      Left            =   360
      TabIndex        =   8
      Top             =   2520
      Width           =   735
   End
End
Attribute VB_Name = "dmc3000"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private My_nCard As Integer    '���忨��
Private ShapeNow(1), ShapePast(1) As Double '�켣ͼ����

Private Sub Form_Load()
Dim My_CardNum As Integer     '���忨��
Dim My_CardList(7) As Integer '���忨������
Dim My_CardTypeList(7) As Long   '���忨��������
My_CardNum = dmc_board_init()
If ((My_CardNum <= 0) Or (My_CardNum > 8)) Then
    MsgBox "δ�ҵ����ƿ���࿨�����ص���", , "���ƿ���ʼ����ʾ"
Else
    dmc_get_CardInfList My_CardNum, My_CardTypeList(0), My_CardList(0)  '��ȡ����ʹ�õĿ����б�
    My_nCard = My_CardList(0)
    MsgBox "��ǰѡ��Ŀ���Ϊ��" + Str(My_nCard), , "����ѡ����ʾ"
    dmc_set_position My_nCard, 0, 0
    dmc_set_position My_nCard, 1, 0     '�������
    dmc_set_pulse_outmode My_nCard, 0, 0
    dmc_set_pulse_outmode My_nCard, 1, 0     '�����������ģʽ
    dmc_write_outbit My_nCard, 3, 0 '��Ӧ�˿�����͵�ƽ
    ShapePast(0) = 0: ShapePast(1) = 0
End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
dmc_board_close    '�رտ��ƿ�
End Sub

Private Sub My_Exit_Click()    '�˳�����
dmc_board_close    '�رտ��ƿ�
End
End Sub

Private Sub My_Run_Click()   '������ť
Dim My_axis(1) As Integer     '�������λ�ñȽϵ�����б�
Dim My_ComPos(1) As Long      '�������λ�ñȽϵ�λ���б�
Dim My_ComDir(1) As Integer    '�������λ�ñȽϵķ����б�
Dim pos(2), Cen(2) As Long     '����Բ���岹���յ�λ�ü�Բ�������б�
MySetXYLine_Shape          '���ƹ켣ͼ��������

dmc_compare_set_config_extern My_nCard, 1, 0 '���ñȽ�����0�ſ���άλ�ñȽ�ʹ�ܣ��Ƚ�Դָ��λ��
dmc_compare_clear_points_extern My_nCard     '���λ�ñȽϵ�
My_axis(0) = 0: My_axis(1) = 1   '���ñȽ�����б�
My_ComPos(0) = -5000: My_ComPos(1) = 5000 '���ñȽ�λ���б�
My_ComDir(0) = 0: My_ComDir(1) = 1 '���ñȽϷ����б�
dmc_compare_add_point_extern My_nCard, My_axis(0), My_ComPos(0), My_ComDir(0), 3, 0
'��ӱȽϵ㣬����ʱ����Ϊ����˿�0��ƽȡ��
My_ComPos(0) = 5000: My_ComPos(1) = 5000 '���ñȽ�λ���б�
My_ComDir(0) = 1: My_ComDir(1) = 0 '���ñȽϷ����б�
dmc_compare_add_point_extern My_nCard, My_axis(0), My_ComPos(0), My_ComDir(0), 1, 3
'��ӱȽϵ㣬����ʱ����Ϊ����˿�3��Ϊ�ߵ�ƽ
pos(0) = 0: pos(1) = 0             '�����յ�����
Cen(0) = 0: Cen(1) = 5000                 '����Բ������
dmc_set_vector_profile_multicoor My_nCard, 0, 0, 3000, 0.1, 0, 0 '����ʸ���ٶ�����
dmc_arc_move_multicoor My_nCard, 0, My_axis(0), pos(0), Cen(0), 0, 0 'Բ���岹�˶�

My_ShapeDrawPic.FillColor = RGB(0, 0, 0)
My_ShapeDrawPic.Circle (-5000, 5000), 70, RGB(0, 0, 0)     'RGB(205, 85, 85)
My_ShapeDrawPic.Circle (5000, 5000), 70, RGB(0, 0, 0) '����άλ�ñȽϵ��ע�ڹ켣ͼ��
End Sub

Private Sub MySetIO3Low_Click()
dmc_write_outbit My_nCard, 3, 0 '��Ӧ�˿�����͵�ƽ
End Sub

Private Sub Timer1_Timer()   '��ʱ��1����
My_NowPos = Str(dmc_get_position(My_nCard, 0))   '��ȡX����ǰλ��
My_NowPosY = Str(dmc_get_position(My_nCard, 1))   '��ȡY����ǰλ��
If (dmc_read_outbit(My_nCard, 0) = 0) Then '��ȡ����˿�0
    MyLED0.BackColor = RGB(0, 255, 0)    'LED����ʾΪ��ɫ
Else
    MyLED0.BackColor = RGB(255, 0, 0)    'LED����ʾΪ��ɫ
End If
If (dmc_read_outbit(My_nCard, 3) = 0) Then '��ȡ����˿�3
    MyLED1.BackColor = RGB(0, 255, 0)    'LED����ʾΪ��ɫ
Else
    MyLED1.BackColor = RGB(255, 0, 0)    'LED����ʾΪ��ɫ
End If
End Sub

Private Sub Timer2_Timer()    '��ʱ��2����
MyDrawShapePic                        '�켣ͼ��ͼ����
End Sub

Private Sub MySet_ShapePicPara()           '���ù켣ͼ�������
My_ShapeDrawPic.ScaleLeft = -10400
My_ShapeDrawPic.ScaleTop = 13000
My_ShapeDrawPic.ScaleWidth = 20800
My_ShapeDrawPic.ScaleHeight = -14000
End Sub

Private Sub MySetXYLine_Shape()          '���ƹ켣ͼ��������
Dim k As Double
MySet_ShapePicPara                       '���ù켣ͼ�������
My_ShapeDrawPic.Cls
My_ShapeDrawPic.DrawWidth = 1
My_ShapeDrawPic.DrawStyle = 2

For k = 2000 To (My_ShapeDrawPic.ScaleWidth + My_ShapeDrawPic.ScaleLeft) Step 2000                         '����ͼ����������
    My_ShapeDrawPic.Line (k, My_ShapeDrawPic.ScaleHeight + My_ShapeDrawPic.ScaleTop)-(k, My_ShapeDrawPic.ScaleTop), RGB(0, 250, 5)
    My_ShapeDrawPic.CurrentX = k - 800: My_ShapeDrawPic.CurrentY = -100
    My_ShapeDrawPic.Print Str(k)
Next k
For k = 0 To -My_ShapeDrawPic.ScaleLeft Step 2000
    My_ShapeDrawPic.Line (-k - 2000, My_ShapeDrawPic.ScaleHeight + My_ShapeDrawPic.ScaleTop)-(-k - 2000, My_ShapeDrawPic.ScaleTop), RGB(0, 250, 5)
    My_ShapeDrawPic.CurrentX = -k - 800: My_ShapeDrawPic.CurrentY = -100
    My_ShapeDrawPic.Print Str(-k)
Next k
For k = 2000 To My_ShapeDrawPic.ScaleTop Step 2000
    My_ShapeDrawPic.Line (My_ShapeDrawPic.ScaleLeft, k)-(My_ShapeDrawPic.ScaleLeft + My_ShapeDrawPic.ScaleWidth, k), RGB(0, 250, 5)
    My_ShapeDrawPic.CurrentX = -50: My_ShapeDrawPic.CurrentY = k + 200
    My_ShapeDrawPic.Print Str(k)
Next k
My_ShapeDrawPic.DrawStyle = 0
My_ShapeDrawPic.Line (0, My_ShapeDrawPic.ScaleHeight + My_ShapeDrawPic.ScaleTop)-(0, My_ShapeDrawPic.ScaleTop), RGB(0, 0, 0)
My_ShapeDrawPic.Line (My_ShapeDrawPic.ScaleLeft, 0)-(My_ShapeDrawPic.ScaleLeft + My_ShapeDrawPic.ScaleWidth, 0), RGB(0, 0, 0)
End Sub

Private Sub MyDrawShapePic()                        '�켣ͼ��ͼ����
ShapeNow(0) = dmc_get_position(My_nCard, 0)
ShapeNow(1) = dmc_get_position(My_nCard, 1)
My_ShapeDrawPic.Line (ShapePast(0), ShapePast(1))-(ShapeNow(0), ShapeNow(1)), RGB(255, 0, 255)  '��ɫ
ShapePast(0) = ShapeNow(0): ShapePast(1) = ShapeNow(1)
End Sub


