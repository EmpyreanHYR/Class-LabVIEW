VERSION 5.00
Begin VB.Form dmc3000 
   Caption         =   "����߼��켣�滮PVT"
   ClientHeight    =   9780
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   12210
   LinkTopic       =   "Form1"
   ScaleHeight     =   9780
   ScaleWidth      =   12210
   StartUpPosition =   2  '��Ļ����
   Begin VB.CommandButton My_MStop 
      Caption         =   "���ֹͣ"
      Height          =   615
      Left            =   10560
      TabIndex        =   27
      Top             =   7440
      Width           =   1215
   End
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   200
      Left            =   11160
      Top             =   4680
   End
   Begin VB.Timer Timer1 
      Interval        =   30
      Left            =   10560
      Top             =   4680
   End
   Begin VB.CommandButton My_SetZero 
      Caption         =   "�������"
      Height          =   615
      Left            =   10560
      TabIndex        =   22
      Top             =   6360
      Width           =   1215
   End
   Begin VB.CommandButton My_Exit 
      Caption         =   "�˳�����"
      Height          =   615
      Left            =   10560
      TabIndex        =   21
      Top             =   8520
      Width           =   1215
   End
   Begin VB.CommandButton My_GoPVT 
      Caption         =   "����PVT�˶�"
      Height          =   615
      Left            =   10560
      TabIndex        =   20
      Top             =   5280
      Width           =   1215
   End
   Begin VB.Frame Frame7 
      Caption         =   "�켣ͼ��(X-Y-Z)"
      Height          =   4725
      Left            =   5400
      TabIndex        =   19
      Top             =   4320
      Width           =   4605
      Begin VB.PictureBox My_ShapeDrawPic 
         BorderStyle     =   0  'None
         FillStyle       =   0  'Solid
         Height          =   4320
         Left            =   120
         ScaleHeight     =   4320
         ScaleWidth      =   4320
         TabIndex        =   26
         Top             =   240
         Width           =   4320
      End
   End
   Begin VB.Frame Frame5 
      Caption         =   "�ٶ�-ʱ������(V-T)"
      Height          =   4245
      Left            =   240
      TabIndex        =   18
      Top             =   4800
      Width           =   4725
      Begin VB.PictureBox My_VTDrawPic 
         BorderStyle     =   0  'None
         FillStyle       =   0  'Solid
         Height          =   3840
         Left            =   120
         ScaleHeight     =   3840
         ScaleWidth      =   4320
         TabIndex        =   25
         Top             =   240
         Width           =   4320
         Begin VB.Label Label17 
            Caption         =   "Z����"
            Height          =   255
            Left            =   3720
            TabIndex        =   40
            Top             =   120
            Width           =   855
         End
         Begin VB.Line Line9 
            BorderColor     =   &H00FF00FF&
            X1              =   3240
            X2              =   3600
            Y1              =   240
            Y2              =   240
         End
         Begin VB.Line Line8 
            BorderColor     =   &H000000FF&
            X1              =   960
            X2              =   1320
            Y1              =   240
            Y2              =   240
         End
         Begin VB.Label Label5 
            Caption         =   "X����"
            Height          =   255
            Left            =   1440
            TabIndex        =   39
            Top             =   120
            Width           =   495
         End
         Begin VB.Line Line7 
            BorderColor     =   &H80000002&
            X1              =   2040
            X2              =   2400
            Y1              =   240
            Y2              =   240
         End
         Begin VB.Label Label4 
            Caption         =   "Y����"
            Height          =   255
            Left            =   2520
            TabIndex        =   38
            Top             =   120
            Width           =   495
         End
      End
   End
   Begin VB.Frame Frame4 
      Caption         =   "λ��-ʱ������(P-T)"
      Height          =   4245
      Left            =   240
      TabIndex        =   17
      Top             =   240
      Width           =   4725
      Begin VB.PictureBox My_PTDrawPic 
         BorderStyle     =   0  'None
         FillColor       =   &H00FFFFFF&
         FillStyle       =   0  'Solid
         Height          =   3840
         Left            =   240
         ScaleHeight     =   3840
         ScaleWidth      =   4320
         TabIndex        =   24
         Top             =   240
         Width           =   4320
         Begin VB.Line Line10 
            BorderColor     =   &H00FF00FF&
            X1              =   2280
            X2              =   2640
            Y1              =   240
            Y2              =   240
         End
         Begin VB.Label Label20 
            Caption         =   "Z����"
            Height          =   255
            Left            =   2760
            TabIndex        =   49
            Top             =   120
            Width           =   615
         End
         Begin VB.Label Label3 
            Caption         =   "Y����"
            Height          =   255
            Left            =   1440
            TabIndex        =   37
            Top             =   360
            Width           =   495
         End
         Begin VB.Line Line6 
            BorderColor     =   &H80000002&
            X1              =   960
            X2              =   1320
            Y1              =   480
            Y2              =   480
         End
         Begin VB.Label Label2 
            Caption         =   "X����"
            Height          =   255
            Left            =   1440
            TabIndex        =   36
            Top             =   120
            Width           =   495
         End
         Begin VB.Line Line5 
            BorderColor     =   &H000000FF&
            X1              =   960
            X2              =   1320
            Y1              =   240
            Y2              =   240
         End
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "��ʾ"
      Height          =   2415
      Left            =   5400
      TabIndex        =   5
      Top             =   1680
      Width           =   6375
      Begin VB.TextBox My_NowPosZ 
         BackColor       =   &H80000000&
         Height          =   375
         Left            =   4320
         Locked          =   -1  'True
         TabIndex        =   42
         Top             =   1200
         Width           =   1215
      End
      Begin VB.TextBox My_NowSpeZ 
         BackColor       =   &H80000000&
         Height          =   375
         Left            =   1200
         Locked          =   -1  'True
         TabIndex        =   41
         Top             =   1200
         Width           =   1215
      End
      Begin VB.TextBox My_NowSpeY 
         BackColor       =   &H80000000&
         Height          =   375
         Left            =   1200
         Locked          =   -1  'True
         TabIndex        =   31
         Top             =   720
         Width           =   1215
      End
      Begin VB.TextBox My_NowPosY 
         BackColor       =   &H80000000&
         Height          =   375
         Left            =   4320
         Locked          =   -1  'True
         TabIndex        =   30
         Top             =   720
         Width           =   1215
      End
      Begin VB.TextBox My_RunTime 
         BackColor       =   &H80000000&
         Height          =   375
         Left            =   4320
         Locked          =   -1  'True
         TabIndex        =   15
         Top             =   1680
         Width           =   1215
      End
      Begin VB.TextBox My_MStatus 
         BackColor       =   &H80000000&
         Height          =   375
         Left            =   1200
         Locked          =   -1  'True
         TabIndex        =   13
         Top             =   1680
         Width           =   1215
      End
      Begin VB.TextBox My_NowPosX 
         BackColor       =   &H80000000&
         Height          =   375
         Left            =   4320
         Locked          =   -1  'True
         TabIndex        =   10
         Top             =   240
         Width           =   1215
      End
      Begin VB.TextBox My_NowSpeX 
         BackColor       =   &H80000000&
         Height          =   375
         Left            =   1200
         Locked          =   -1  'True
         TabIndex        =   7
         Top             =   240
         Width           =   1215
      End
      Begin VB.Label Label18 
         Caption         =   "Z�ٶȣ�"
         Height          =   255
         Left            =   360
         TabIndex        =   46
         Top             =   1320
         Width           =   735
      End
      Begin VB.Label Label15 
         Caption         =   "pulse/s"
         Height          =   255
         Left            =   2520
         TabIndex        =   45
         Top             =   1320
         Width           =   735
      End
      Begin VB.Label Label14 
         Caption         =   "Zλ�ã�"
         Height          =   255
         Left            =   3480
         TabIndex        =   44
         Top             =   1320
         Width           =   735
      End
      Begin VB.Label Label13 
         Caption         =   "pulse"
         Height          =   255
         Left            =   5640
         TabIndex        =   43
         Top             =   1320
         Width           =   615
      End
      Begin VB.Label Label29 
         Caption         =   "X�ٶȣ�"
         Height          =   255
         Left            =   360
         TabIndex        =   35
         Top             =   360
         Width           =   735
      End
      Begin VB.Label Label28 
         Caption         =   "pulse/s"
         Height          =   255
         Left            =   2520
         TabIndex        =   34
         Top             =   360
         Width           =   735
      End
      Begin VB.Label Label27 
         Caption         =   "Xλ�ã�"
         Height          =   255
         Left            =   3480
         TabIndex        =   33
         Top             =   360
         Width           =   735
      End
      Begin VB.Label Label26 
         Caption         =   "pulse"
         Height          =   255
         Left            =   5640
         TabIndex        =   32
         Top             =   360
         Width           =   615
      End
      Begin VB.Label Label12 
         Caption         =   "s"
         Height          =   255
         Left            =   5640
         TabIndex        =   16
         Top             =   1800
         Width           =   615
      End
      Begin VB.Label Label11 
         Caption         =   "�˶�ʱ�䣺"
         Height          =   255
         Left            =   3360
         TabIndex        =   14
         Top             =   1800
         Width           =   975
      End
      Begin VB.Label Label10 
         Caption         =   "״̬��"
         Height          =   255
         Left            =   360
         TabIndex        =   12
         Top             =   1800
         Width           =   735
      End
      Begin VB.Label Label9 
         Caption         =   "pulse"
         Height          =   255
         Left            =   5640
         TabIndex        =   11
         Top             =   840
         Width           =   615
      End
      Begin VB.Label Label8 
         Caption         =   "Yλ�ã�"
         Height          =   255
         Left            =   3480
         TabIndex        =   9
         Top             =   840
         Width           =   735
      End
      Begin VB.Label Label7 
         Caption         =   "pulse/s"
         Height          =   255
         Left            =   2520
         TabIndex        =   8
         Top             =   840
         Width           =   735
      End
      Begin VB.Label Label6 
         Caption         =   "Y�ٶȣ�"
         Height          =   255
         Left            =   360
         TabIndex        =   6
         Top             =   840
         Width           =   735
      End
   End
   Begin VB.OptionButton My_PVTM 
      Caption         =   "PVTģʽ"
      Height          =   255
      Index           =   0
      Left            =   10440
      TabIndex        =   4
      Top             =   600
      Width           =   1095
   End
   Begin VB.OptionButton My_PVTM 
      Caption         =   "PVTSģʽ"
      Height          =   255
      Index           =   1
      Left            =   10440
      TabIndex        =   3
      Top             =   960
      Width           =   1095
   End
   Begin VB.Frame Frame1 
      Caption         =   "�������"
      Height          =   1215
      Left            =   5400
      TabIndex        =   0
      Top             =   240
      Width           =   6375
      Begin VB.TextBox My_nAxisZ 
         Height          =   375
         Left            =   3840
         TabIndex        =   47
         Text            =   "2"
         Top             =   480
         Width           =   375
      End
      Begin VB.TextBox My_nAxisY 
         Height          =   375
         Left            =   2400
         TabIndex        =   29
         Text            =   "1"
         Top             =   480
         Width           =   375
      End
      Begin VB.TextBox My_nAxisX 
         Height          =   375
         Left            =   960
         TabIndex        =   2
         Text            =   "0"
         Top             =   480
         Width           =   375
      End
      Begin VB.Label Label19 
         Caption         =   "Z������ţ�"
         Height          =   375
         Left            =   3120
         TabIndex        =   48
         Top             =   480
         Width           =   615
      End
      Begin VB.Label Label25 
         Caption         =   "Y������ţ�"
         Height          =   375
         Left            =   1680
         TabIndex        =   28
         Top             =   480
         Width           =   615
      End
      Begin VB.Line Line1 
         BorderColor     =   &H80000003&
         X1              =   4560
         X2              =   4560
         Y1              =   120
         Y2              =   1200
      End
      Begin VB.Label Label1 
         Caption         =   "X������ţ�"
         Height          =   375
         Left            =   240
         TabIndex        =   1
         Top             =   480
         Width           =   615
      End
   End
   Begin VB.Line Line13 
      BorderColor     =   &H80000003&
      X1              =   10200
      X2              =   12240
      Y1              =   4440
      Y2              =   4440
   End
   Begin VB.Line Line12 
      BorderColor     =   &H80000003&
      X1              =   10200
      X2              =   10200
      Y1              =   4440
      Y2              =   9240
   End
   Begin VB.Line Line11 
      BorderColor     =   &H80000003&
      X1              =   5160
      X2              =   10200
      Y1              =   9240
      Y2              =   9240
   End
   Begin VB.Line Line4 
      BorderColor     =   &H80000003&
      X1              =   0
      X2              =   5160
      Y1              =   9240
      Y2              =   9240
   End
   Begin VB.Line Line3 
      BorderColor     =   &H80000003&
      X1              =   6840
      X2              =   6855
      Y1              =   9240
      Y2              =   9255
   End
   Begin VB.Label Label16 
      Caption         =   "˵������ͼ��ʱ��ˢ������Ϊ200ms��"
      Height          =   255
      Left            =   240
      TabIndex        =   23
      Top             =   9480
      Width           =   3255
   End
End
Attribute VB_Name = "dmc3000"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private My_nCard As Integer    '���忨��
Private MyPVTModeSet As Integer   '����ѡ���PVTģʽ

Private MyPTimeX(11) As Double    '����PVT��ʱ������,X����
Private MyPPosX(11) As Long     '����PVT��λ������,X����
Private MyPVelX(11) As Double   '����PVT���ٶ�����,X����
Private MyPVelBeginX As Double
Private MyPVelEndX   As Double   '����PVTS����ʼ������ֹ���ٶ�,X����
Private MyCountX As Integer     '����PVT���ݵ����鳤��,X����

Private MyPTimeY(11) As Double    '����PVT��ʱ������,Y����
Private MyPPosY(11) As Long     '����PVT��λ������,Y����
Private MyPVelY(11) As Double   '����PVT���ٶ�����,Y����
Private MyPVelBeginY As Double
Private MyPVelEndY   As Double   '����PVTS����ʼ������ֹ���ٶ�,Y����
Private MyCountY As Integer     '����PVT���ݵ����鳤��,Y����

Private MyPTimeZ(11) As Double    '����PVT��ʱ������,Z����
Private MyPPosZ(11) As Long     '����PVT��λ������,Z����
Private MyPVelZ(11) As Double   '����PVT���ٶ�����,Z����
Private MyPVelBeginZ As Double
Private MyPVelEndZ   As Double   '����PVTC����ʼ������ֹ���ٶ�,Z����
Private MyCountZ As Integer     '����PVT���ݵ����鳤��,Z����

Private My_AxisNum As Integer   '����PVT�˶�������
Private My_AxisList(7) As Integer   '����PVT�˶������б�

Private PosNowX(1), PosPastX(1) As Double  'P-T��ͼ����,X����
Private VelNowX(1), VelPastX(1) As Double  'V-T��ͼ����,X����

Private PosNowY(1), PosPastY(1) As Double  'P-T��ͼ����,Y����
Private VelNowY(1), VelPastY(1) As Double  'V-T��ͼ����,Y����

Private PosNowZ(1), PosPastZ(1) As Double  'P-T��ͼ����,Z����
Private VelNowZ(1), VelPastZ(1) As Double  'V-T��ͼ����,Z����

Private pi As Single      '����Բ����
Private MyXNowPos, MyYNowPos, MyZNowPos As Long    '����X��Y��Z����ǰλ��
Private ShapeNow(1), ShapePast(1) As Double '�켣ͼ����
Private MyRTime As Double    '�����˶�ʱ��


Private Sub MyPVT_Init()    'PVT������ʼ������������ʱ
Dim R, i As Integer
Dim MyWVel As Double        '������ٶ�
MyPVTModeSet = 0: My_PVTM(0).Value = True   '��ʼ��ΪPVTģʽ
R = 15000            '����Բ�뾶
pi = 3.141592654    '����Բ����

MyCountX = 11
MyCountY = 11
MyCountZ = 11     '����X��Y��ZPVT�������ݳ���

'����X��Y�����PVT��������
For i = 0 To 10
    MyPPosX(i) = R * Cos(pi / 6) * Cos((10 - i) * pi / 10) + R * Cos(pi / 6)    '����PVT�����е�P���ݣ�X����
    MyPPosY(i) = R * Sin(pi / 6) * Cos((10 - i) * pi / 10) + R * Sin(pi / 6)    '����PVT�����е�P���ݣ�Y����
    MyPPosZ(i) = R * Sin((10 - i) * pi / 10)                                    '����PVT�����е�P���ݣ�Z����
Next i

For i = 0 To 10
  MyPTimeX(i) = i   '����PVT�����е�T���ݣ�X����
  MyPTimeY(i) = i   '����PVT�����е�T���ݣ�Y����
  MyPTimeZ(i) = i   '����PVT�����е�T���ݣ�Z����
Next i

MyWVel = -pi / 10           '������ٶ�
'���ٶ�Ϊ�㶨����������X��Y�����ٶ�
MyPVelX(0) = 0: MyPVelX(10) = 0    '��ʼ������ֹ��X�����ٶ���Ϊ0
MyPVelY(0) = 0: MyPVelY(10) = 0   '��ʼ������ֹ��Y�����ٶ���Ϊ0
MyPVelZ(0) = 0: MyPVelZ(10) = 0   '��ʼ������ֹ��Z�����ٶ���Ϊ0
For i = 0 To 8
    MyPVelX(i + 1) = -R * Cos(pi / 6) * Sin((10 - i - 1) * pi / 10) * MyWVel  '����PVT�����е�V���ݣ�X����
    MyPVelY(i + 1) = -R * Sin(pi / 6) * Sin((10 - i - 1) * pi / 10) * MyWVel  '����PVT�����е�V���ݣ�Y����
    MyPVelZ(i + 1) = R * Cos((10 - i - 1) * pi / 10) * MyWVel  '����PVT�����е�V���ݣ�Z����
Next i

MyPVelBeginX = 0: MyPVelEndX = 0
MyPVelBeginY = 0: MyPVelEndY = 0
MyPVelBeginZ = 0: MyPVelEndZ = 0        '��ʼ��X��Y��Z���������ٶȼ��յ��ٶȶ�Ϊ0
End Sub

Private Sub Form_Load()   'װ�غ���
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
    My_RunTime = Str(0)
    dmc_set_pulse_outmode My_nCard, Val(My_nAxisX), 0
    dmc_set_pulse_outmode My_nCard, Val(My_nAxisY), 0
    dmc_set_pulse_outmode My_nCard, Val(My_nAxisZ), 0     '�趨�������ģʽ
    dmc_set_position My_nCard, Val(My_nAxisX), 0
    dmc_set_position My_nCard, Val(My_nAxisY), 0
    dmc_set_position My_nCard, Val(My_nAxisZ), 0      '�������
    MyPVT_Init    'PVT������ʼ������������ʱ
End If
End Sub

Private Sub Form_Unload(Cancel As Integer)   'ж�غ���
MyMotorStop    '���ֹͣ
dmc_board_close   '�رտ��ƿ�
End Sub

Private Sub My_Exit_Click()    '�˳�����
MyMotorStop    '���ֹͣ
dmc_board_close   '�رտ��ƿ�
End
End Sub

Private Sub My_GoPVT_Click()  '����PVT�˶�
My_nAxisX.Locked = True: My_nAxisY.Locked = True: My_nAxisZ.Locked = True
My_nAxisX.BackColor = RGB(200, 200, 200): My_nAxisY.BackColor = RGB(200, 200, 200): My_nAxisZ.BackColor = RGB(200, 200, 200)
MyDrawPicReady      '��ͼ��ʼ������

Select Case MyPVTModeSet     '�ж�ѡ���PVTģʽ
Case 0   '���ΪPVTģʽ
    dmc_PvtTable My_nCard, Val(My_nAxisX), MyCountX, MyPTimeX(0), MyPPosX(0), MyPVelX(0)   '��ָ�����ݱ������ݣ����� PVT ������ʽ,x
    dmc_PvtTable My_nCard, Val(My_nAxisY), MyCountY, MyPTimeY(0), MyPPosY(0), MyPVelY(0)   '��ָ�����ݱ������ݣ����� PVT ������ʽ,y
    dmc_PvtTable My_nCard, Val(My_nAxisZ), MyCountZ, MyPTimeZ(0), MyPPosZ(0), MyPVelZ(0)   '��ָ�����ݱ������ݣ����� PVT ������ʽ,z
Case 1     '���ΪPVTSģʽ
    dmc_PvtsTable My_nCard, Val(My_nAxisX), MyCountX, MyPTimeX(0), MyPPosX(0), MyPVelBeginX, MyPVelEndX   '��ָ�����ݱ������ݣ����� PVTS ������ʽ,x
    dmc_PvtsTable My_nCard, Val(My_nAxisY), MyCountY, MyPTimeY(0), MyPPosY(0), MyPVelBeginY, MyPVelEndY   '��ָ�����ݱ������ݣ����� PVTS ������ʽ,y
    dmc_PvtsTable My_nCard, Val(My_nAxisZ), MyCountZ, MyPTimeZ(0), MyPPosZ(0), MyPVelBeginZ, MyPVelEndZ   '��ָ�����ݱ������ݣ����� PVTS ������ʽ,z
Case Else
End Select

My_AxisNum = 3
My_AxisList(0) = Val(My_nAxisX)
My_AxisList(1) = Val(My_nAxisY)
My_AxisList(2) = Val(My_nAxisZ)
'My_PVTStatus = 3
MyRTime = 0
Timer2 = True
dmc_PvtMove My_nCard, My_AxisNum, My_AxisList(0)   '��������PVT�˶�
While ((dmc_check_done(My_nCard, Val(My_nAxisX)) = 0) Or (dmc_check_done(My_nCard, Val(My_nAxisY)) = 0))   '�жϵ��״̬
    DoEvents
Wend
My_nAxisX.Locked = False: My_nAxisY.Locked = False: My_nAxisZ.Locked = False
My_nAxisX.BackColor = RGB(255, 255, 255): My_nAxisY.BackColor = RGB(255, 255, 255): My_nAxisZ.BackColor = RGB(255, 255, 255)
End Sub

Private Sub MyDrawPicReady()       '��ͼ��ʼ������
Dim i, j As Integer
PosPastX(0) = 0
VelPastX(0) = 0
PosPastY(0) = 0
VelPastY(0) = 0
PosPastZ(0) = 0
VelPastZ(0) = 0         '��ʼ����ͼ��ʼ����

MySetXYLine_PT          '����P-Tͼ��������
MySetXYLine_VT          '����V-Tͼ��������
MySetXYLine_Shape         '���ƹ켣ͼ��������

For i = 0 To 10       '�����õ�λ�á�ʱ�������ע��P-Tͼ��
    My_PTDrawPic.FillColor = RGB(255, 0, 0)
    My_PTDrawPic.Circle (MyPTimeX(i), MyPPosX(i) + PosPastX(1)), 0.09, RGB(255, 0, 0)      '��עX���������õ�PT���ݣ���ɫ��

    My_PTDrawPic.FillColor = RGB(0, 0, 255)
    My_PTDrawPic.Circle (MyPTimeY(i), MyPPosY(i) + PosPastY(1)), 0.075, RGB(0, 0, 255)     '��עY���������õ�PT���ݣ���ɫ��
    
    My_PTDrawPic.FillColor = RGB(255, 0, 255)
    My_PTDrawPic.Circle (MyPTimeZ(i), MyPPosZ(i) + PosPastZ(1)), 0.06, RGB(255, 0, 255)    '��עZ���������õ�PT���ݣ���ɫ��
Next i

'�����õ�λ�������ע�ڹ켣ͼ��
For i = 0 To 10
    My_ShapeDrawPic.FillColor = RGB(205, 85, 85)
    My_ShapeDrawPic.Circle ((MyPPosX(i) + MyPPosY(i)) * Cos(pi / 4) + ShapePast(0), MyPPosZ(i) + (MyPPosY(i) - MyPPosX(i)) * Sin(pi / 4) + ShapePast(1)), 100, RGB(205, 85, 85)
Next i

Select Case MyPVTModeSet     '�ж�ѡ���PVTģʽ
Case 0   '���ΪPVTģʽ
    For i = 0 To MyCountX - 1 '�����õ��ٶȡ�ʱ�������ע��V-Tͼ��
    My_VTDrawPic.FillColor = RGB(255, 0, 0)
    My_VTDrawPic.Circle (MyPTimeX(i), MyPVelX(i)), 0.09, RGB(255, 0, 0)               '��עX���������õ�VT���ݣ���ɫ��

    My_VTDrawPic.FillColor = RGB(0, 0, 255)
    My_VTDrawPic.Circle (MyPTimeY(i), MyPVelY(i)), 0.075, RGB(0, 0, 255)              '��עY���������õ�VT���ݣ���ɫ��
    
    My_VTDrawPic.FillColor = RGB(255, 0, 255)
    My_VTDrawPic.Circle (MyPTimeZ(i), MyPVelZ(i)), 0.06, RGB(255, 0, 255)             '��עZ���������õ�VT���ݣ���ɫ��
    Next i
Case 1     '���ΪPVTSģʽ
    My_VTDrawPic.FillColor = RGB(255, 0, 0)
    My_VTDrawPic.Circle (MyPTimeX(0), MyPVelBeginX), 0.09, RGB(255, 0, 0)             '��עX���������õĵ�һ���ٶȣ���ɫ��
    My_VTDrawPic.Circle (MyPTimeX(MyCountX - 1), MyPVelEndX), 0.09, RGB(255, 0, 0)    '��עX���������õ����һ���ٶȣ���ɫ��
    
    My_VTDrawPic.FillColor = RGB(0, 0, 255)
    My_VTDrawPic.Circle (MyPTimeY(0), MyPVelBeginY), 0.075, RGB(0, 0, 255)              '��עY���������õĵ�һ���ٶȣ���ɫ��
    My_VTDrawPic.Circle (MyPTimeY(MyCountY - 1), MyPVelEndY), 0.075, RGB(0, 0, 255)     '��עY���������õ����һ���ٶȣ���ɫ��
    
    My_VTDrawPic.FillColor = RGB(255, 0, 255)
    My_VTDrawPic.Circle (MyPTimeY(0), MyPVelBeginY), 0.06, RGB(255, 0, 255)              '��עZ���������õĵ�һ���ٶȣ���ɫ��
    My_VTDrawPic.Circle (MyPTimeY(MyCountY - 1), MyPVelEndY), 0.06, RGB(255, 0, 255)     '��עZ���������õ����һ���ٶȣ���ɫ��
Case Else
End Select
End Sub

Private Sub MyMotorStop()    '���ֹͣ
If (dmc_check_done(My_nCard, Val(My_nAxisX)) = 0) Then   '�ж�X���״̬
    dmc_stop My_nCard, Val(My_nAxisX), 1      'ָ��X�������ֹͣ
End If
If (dmc_check_done(My_nCard, Val(My_nAxisY)) = 0) Then   '�ж�Y���״̬
    dmc_stop My_nCard, Val(My_nAxisY), 1      'ָ��Y�������ֹͣ
End If
If (dmc_check_done(My_nCard, Val(My_nAxisZ)) = 0) Then   '�ж�Z���״̬
    dmc_stop My_nCard, Val(My_nAxisZ), 1      'ָ��Z�������ֹͣ
End If
End Sub

Private Sub My_MStop_Click()   '���ֹͣ
My_nAxisX.Locked = False: My_nAxisY.Locked = False
My_nAxisX.BackColor = RGB(255, 255, 255): My_nAxisY.BackColor = RGB(255, 255, 255)
MyMotorStop    '���ֹͣ
End Sub

Private Sub My_PVTM_Click(index As Integer)   'PVTģʽ��ѡ��
MyPVTModeSet = index
End Sub

Private Sub My_SetZero_Click()   '�������
dmc_set_position My_nCard, Val(My_nAxisX), 0    'X�������
dmc_set_position My_nCard, Val(My_nAxisY), 0   'Y�������
dmc_set_position My_nCard, Val(My_nAxisZ), 0    'Z�������

PosPastX(1) = 0: PosPastY(1) = 0: PosPastZ(1) = 0   'λ��ʱ��ͼ��ʼ����
ShapePast(0) = 0: ShapePast(1) = 0        '�켣ͼ��ʼ����
End Sub

Private Sub Timer1_Timer()   '��ʱ��1��ˢ����ʾ������
My_NowSpeX = Str(dmc_read_current_speed(My_nCard, Val(My_nAxisX)))    '��ȡX��ǰ�˶��ٶ�
My_NowPosX = Str(dmc_get_position(My_nCard, Val(My_nAxisX)))    '��ȡX��ǰλ��
My_NowSpeY = Str(dmc_read_current_speed(My_nCard, Val(My_nAxisY)))    '��ȡY��ǰ�˶��ٶ�
My_NowPosY = Str(dmc_get_position(My_nCard, Val(My_nAxisY)))    '��ȡY��ǰλ��
My_NowSpeZ = Str(dmc_read_current_speed(My_nCard, Val(My_nAxisZ)))    '��ȡZ��ǰ�˶��ٶ�
My_NowPosZ = Str(dmc_get_position(My_nCard, Val(My_nAxisZ)))    '��ȡZ��ǰλ��
If ((dmc_check_done(My_nCard, Val(My_nAxisX)) = 1) And (dmc_check_done(My_nCard, Val(My_nAxisY)) = 1) And (dmc_check_done(My_nCard, Val(My_nAxisZ)) = 1)) Then '�жϵ��״̬
    My_MStatus = "ֹͣ��"
Else
    My_MStatus = "�˶���"
End If
End Sub

Private Sub MySet_PTPicPara()           '����P-Tͼ�������
My_PTDrawPic.ScaleLeft = 0
My_PTDrawPic.ScaleTop = 30000
My_PTDrawPic.ScaleWidth = 13
My_PTDrawPic.ScaleHeight = -30000 - 1500
End Sub

Private Sub MySetXYLine_PT()          '����P-Tͼ��������
Dim k As Double
MySet_PTPicPara                       '����P-Tͼ�������
My_PTDrawPic.Cls
My_PTDrawPic.DrawWidth = 1
My_PTDrawPic.DrawStyle = 2

For k = 0 To (My_PTDrawPic.ScaleWidth + My_PTDrawPic.ScaleLeft) Step 2                       '����ͼ����������
    My_PTDrawPic.Line (k, My_PTDrawPic.ScaleHeight + My_PTDrawPic.ScaleTop)-(k, My_PTDrawPic.ScaleTop), RGB(0, 250, 5)
    My_PTDrawPic.CurrentX = k - 0.2: My_PTDrawPic.CurrentY = -100
    My_PTDrawPic.Print Str(k)
Next k
For k = 3000 To My_PTDrawPic.ScaleTop Step 3000
    My_PTDrawPic.Line (My_PTDrawPic.ScaleLeft, k)-(My_PTDrawPic.ScaleLeft + My_PTDrawPic.ScaleWidth, k), RGB(0, 250, 5)
    My_PTDrawPic.CurrentX = 0: My_PTDrawPic.CurrentY = k + 500
    My_PTDrawPic.Print Str(k)
Next k

My_PTDrawPic.DrawStyle = 0
My_PTDrawPic.Line (0, My_PTDrawPic.ScaleHeight + My_PTDrawPic.ScaleTop)-(0, My_PTDrawPic.ScaleTop), RGB(0, 0, 0)
My_PTDrawPic.Line (My_PTDrawPic.ScaleLeft, 0)-(My_PTDrawPic.ScaleLeft + My_PTDrawPic.ScaleWidth, 0), RGB(0, 0, 0)
End Sub

Private Sub MyDrawPTPic()                        'P-Tͼ��ͼ����
PosNowX(0) = MyRTime
PosNowX(1) = dmc_get_position(My_nCard, Val(My_nAxisX))
My_PTDrawPic.Line (PosPastX(0), PosPastX(1))-(PosNowX(0), PosNowX(1)), RGB(255, 0, 0)

PosNowY(0) = MyRTime
PosNowY(1) = dmc_get_position(My_nCard, Val(My_nAxisY))
My_PTDrawPic.Line (PosPastY(0), PosPastY(1))-(PosNowY(0), PosNowY(1)), RGB(0, 0, 255)

PosNowZ(0) = MyRTime
PosNowZ(1) = dmc_get_position(My_nCard, Val(My_nAxisZ))
My_PTDrawPic.Line (PosPastZ(0), PosPastZ(1))-(PosNowZ(0), PosNowZ(1)), RGB(255, 0, 255)
End Sub

Private Sub MySet_VTPicPara()           '����V-Tͼ�������
My_VTDrawPic.ScaleLeft = 0
My_VTDrawPic.ScaleTop = 7500
My_VTDrawPic.ScaleWidth = 13
My_VTDrawPic.ScaleHeight = -15000
End Sub

Private Sub MySetXYLine_VT()          '����V-Tͼ��������
Dim k As Double
MySet_VTPicPara                       '����V-Tͼ�������
My_VTDrawPic.Cls
My_VTDrawPic.DrawWidth = 1
My_VTDrawPic.DrawStyle = 2

For k = 0 To (My_VTDrawPic.ScaleWidth + My_VTDrawPic.ScaleLeft) Step 2                        '����ͼ����������
    My_VTDrawPic.Line (k, My_VTDrawPic.ScaleHeight + My_VTDrawPic.ScaleTop)-(k, My_VTDrawPic.ScaleTop), RGB(0, 250, 5)
    My_VTDrawPic.CurrentX = k - 0.2: My_VTDrawPic.CurrentY = -100
    My_VTDrawPic.Print Str(k)
Next k
For k = 2000 To My_VTDrawPic.ScaleTop Step 2000
    My_VTDrawPic.Line (My_VTDrawPic.ScaleLeft, k)-(My_VTDrawPic.ScaleLeft + My_VTDrawPic.ScaleWidth, k), RGB(0, 250, 5)
        My_VTDrawPic.CurrentX = 0: My_VTDrawPic.CurrentY = k + 200
    My_VTDrawPic.Print Str(k)
Next k
For k = 0 To -My_VTDrawPic.ScaleHeight - My_VTDrawPic.ScaleTop Step 2000
    My_VTDrawPic.Line (My_VTDrawPic.ScaleLeft, -k - 2000)-(My_VTDrawPic.ScaleLeft + My_VTDrawPic.ScaleWidth, -k - 2000), RGB(0, 250, 5)
    My_VTDrawPic.CurrentX = 0: My_VTDrawPic.CurrentY = -k - 1800
    My_VTDrawPic.Print Str(-k - 2000)
Next k

My_VTDrawPic.DrawStyle = 0
My_VTDrawPic.Line (0, My_VTDrawPic.ScaleHeight + My_VTDrawPic.ScaleTop)-(0, My_VTDrawPic.ScaleTop), RGB(0, 0, 0)
My_VTDrawPic.Line (My_VTDrawPic.ScaleLeft, 0)-(My_VTDrawPic.ScaleLeft + My_VTDrawPic.ScaleWidth, 0), RGB(0, 0, 0)
End Sub

Private Sub MyDrawVTPic()                        'V-Tͼ��ͼ����
VelNowX(0) = MyRTime
VelNowX(1) = dmc_read_current_speed(My_nCard, Val(My_nAxisX))
If (PosNowX(1) < PosPastX(1)) Then      '�����ǰ��λ�ñ���һ��λ��ҪС�����жϴ�ʱΪ�����˶�
    VelNowX(1) = -VelNowX(1)
End If
My_VTDrawPic.Line (VelPastX(0), VelPastX(1))-(VelNowX(0), VelNowX(1)), RGB(255, 0, 0)
VelPastX(0) = VelNowX(0)
VelPastX(1) = VelNowX(1)

VelNowY(0) = MyRTime
VelNowY(1) = dmc_read_current_speed(My_nCard, Val(My_nAxisY))
If (PosNowY(1) < PosPastY(1)) Then      '�����ǰ��λ�ñ���һ��λ��ҪС�����жϴ�ʱΪ�����˶�
    VelNowY(1) = -VelNowY(1)
End If
My_VTDrawPic.Line (VelPastY(0), VelPastY(1))-(VelNowY(0), VelNowY(1)), RGB(0, 0, 255)
VelPastY(0) = VelNowY(0)
VelPastY(1) = VelNowY(1)

VelNowZ(0) = MyRTime
VelNowZ(1) = dmc_read_current_speed(My_nCard, Val(My_nAxisZ))
If (PosNowZ(1) < PosPastZ(1)) Then      '�����ǰ��λ�ñ���һ��λ��ҪС�����жϴ�ʱΪ�����˶�
    VelNowZ(1) = -VelNowZ(1)
End If
My_VTDrawPic.Line (VelPastZ(0), VelPastZ(1))-(VelNowZ(0), VelNowZ(1)), RGB(255, 0, 255)
VelPastZ(0) = VelNowZ(0)
VelPastZ(1) = VelNowZ(1)

PosPastX(0) = PosNowX(0): PosPastX(1) = PosNowX(1)
PosPastY(0) = PosNowY(0): PosPastY(1) = PosNowY(1)
PosPastZ(0) = PosNowZ(0): PosPastZ(1) = PosNowZ(1)     'Ϊ��һ�λ�ͼ��׼��
End Sub

Private Sub MySet_ShapePicPara()           '���ù켣ͼ�������
My_ShapeDrawPic.ScaleLeft = -7000
My_ShapeDrawPic.ScaleTop = 20000
My_ShapeDrawPic.ScaleWidth = 40000
My_ShapeDrawPic.ScaleHeight = -40000
End Sub

Private Sub MySetXYLine_Shape()          '���ƹ켣ͼ��������
MySet_ShapePicPara                       '���ù켣ͼ�������
My_ShapeDrawPic.Cls
My_ShapeDrawPic.DrawWidth = 1
My_ShapeDrawPic.DrawStyle = 0

My_ShapeDrawPic.Line (0, 0)-(My_ShapeDrawPic.ScaleLeft + My_ShapeDrawPic.ScaleWidth, My_ShapeDrawPic.ScaleTop + My_ShapeDrawPic.ScaleHeight), RGB(0, 0, 0)
My_ShapeDrawPic.Line (My_ShapeDrawPic.ScaleLeft + My_ShapeDrawPic.ScaleWidth - 400, My_ShapeDrawPic.ScaleTop + My_ShapeDrawPic.ScaleHeight + 150)-(My_ShapeDrawPic.ScaleLeft + My_ShapeDrawPic.ScaleWidth, My_ShapeDrawPic.ScaleTop + My_ShapeDrawPic.ScaleHeight), RGB(0, 0, 0)
My_ShapeDrawPic.Line (My_ShapeDrawPic.ScaleLeft + My_ShapeDrawPic.ScaleWidth - 200, My_ShapeDrawPic.ScaleTop + My_ShapeDrawPic.ScaleHeight + 500)-(My_ShapeDrawPic.ScaleLeft + My_ShapeDrawPic.ScaleWidth, My_ShapeDrawPic.ScaleTop + My_ShapeDrawPic.ScaleHeight), RGB(0, 0, 0)      'X����������
My_ShapeDrawPic.CurrentX = My_ShapeDrawPic.ScaleLeft + My_ShapeDrawPic.ScaleWidth - 5000: My_ShapeDrawPic.CurrentY = My_ShapeDrawPic.ScaleTop + My_ShapeDrawPic.ScaleHeight + 2000: My_ShapeDrawPic.Print "X"

My_ShapeDrawPic.Line (0, 0)-(My_ShapeDrawPic.ScaleLeft + My_ShapeDrawPic.ScaleWidth, My_ShapeDrawPic.ScaleTop), RGB(0, 0, 0)
My_ShapeDrawPic.Line (My_ShapeDrawPic.ScaleLeft + My_ShapeDrawPic.ScaleWidth - 400, My_ShapeDrawPic.ScaleTop - 150)-(My_ShapeDrawPic.ScaleLeft + My_ShapeDrawPic.ScaleWidth, My_ShapeDrawPic.ScaleTop), RGB(0, 0, 0)
My_ShapeDrawPic.Line (My_ShapeDrawPic.ScaleLeft + My_ShapeDrawPic.ScaleWidth - 200, My_ShapeDrawPic.ScaleTop - 500)-(My_ShapeDrawPic.ScaleLeft + My_ShapeDrawPic.ScaleWidth, My_ShapeDrawPic.ScaleTop), RGB(0, 0, 0)  'Y����������
My_ShapeDrawPic.CurrentX = My_ShapeDrawPic.ScaleLeft + My_ShapeDrawPic.ScaleWidth - 2000: My_ShapeDrawPic.CurrentY = My_ShapeDrawPic.ScaleTop - 1500: My_ShapeDrawPic.Print "Y"

My_ShapeDrawPic.Line (0, 0)-(0, My_ShapeDrawPic.ScaleTop), RGB(0, 0, 0)
My_ShapeDrawPic.Line (-150, My_ShapeDrawPic.ScaleTop - 500)-(0, My_ShapeDrawPic.ScaleTop), RGB(0, 0, 0)
My_ShapeDrawPic.Line (150, My_ShapeDrawPic.ScaleTop - 500)-(0, My_ShapeDrawPic.ScaleTop), RGB(0, 0, 0)        'Z����������
My_ShapeDrawPic.CurrentX = 1000: My_ShapeDrawPic.CurrentY = My_ShapeDrawPic.ScaleTop - 1000: My_ShapeDrawPic.Print "Z"
End Sub

Private Sub MyDrawShapePic()                        '�켣ͼ��ͼ����
MyXNowPos = dmc_get_position(My_nCard, Val(My_nAxisX))
MyYNowPos = dmc_get_position(My_nCard, Val(My_nAxisY))
MyZNowPos = dmc_get_position(My_nCard, Val(My_nAxisZ))      '��ȡX��Y��Z����ǰλ��

ShapeNow(0) = (MyYNowPos + MyXNowPos) * Cos(pi / 4)
ShapeNow(1) = MyZNowPos + (MyYNowPos - MyXNowPos) * Cos(pi / 4)
My_ShapeDrawPic.Line (ShapePast(0), ShapePast(1))-(ShapeNow(0), ShapeNow(1)), RGB(255, 0, 255) '��ɫ
ShapePast(0) = ShapeNow(0): ShapePast(1) = ShapeNow(1)
End Sub

Private Sub Timer2_Timer()    '��ʱ��2������ͼ��
MyRTime = MyRTime + 0.2
MyDrawPTPic                       'P-Tͼ��ͼ����
MyDrawVTPic                       'V-Tͼ��ͼ����
MyDrawShapePic                        '�켣ͼ��ͼ����
My_RunTime = Str(MyRTime)
If ((dmc_check_done(My_nCard, Val(My_nAxis)) = 1) And (dmc_check_done(My_nCard, Val(My_nAxisY)) = 1)) Then  '�жϵ��״̬
    Timer2.Enabled = False
End If
End Sub
