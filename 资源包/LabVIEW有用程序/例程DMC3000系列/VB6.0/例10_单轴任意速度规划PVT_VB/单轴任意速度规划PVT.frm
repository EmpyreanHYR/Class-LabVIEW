VERSION 5.00
Begin VB.Form dmc3000 
   Caption         =   "���������ٶȹ滮PVT"
   ClientHeight    =   9945
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   12900
   LinkTopic       =   "Form1"
   ScaleHeight     =   9945
   ScaleWidth      =   12900
   StartUpPosition =   2  '��Ļ����
   Begin VB.OptionButton My_PVTM 
      Caption         =   "PTTģʽ"
      Height          =   255
      Index           =   0
      Left            =   3720
      TabIndex        =   26
      Top             =   840
      Width           =   1095
   End
   Begin VB.CommandButton My_MStop 
      Caption         =   "���ֹͣ"
      Height          =   495
      Left            =   3480
      TabIndex        =   25
      Top             =   8640
      Width           =   1215
   End
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   200
      Left            =   6240
      Top             =   8760
   End
   Begin VB.Timer Timer1 
      Interval        =   30
      Left            =   120
      Top             =   8760
   End
   Begin VB.CommandButton My_SetZero 
      Caption         =   "�������"
      Height          =   495
      Left            =   2040
      TabIndex        =   22
      Top             =   8640
      Width           =   1215
   End
   Begin VB.CommandButton My_Exit 
      Caption         =   "�˳�����"
      Height          =   495
      Left            =   4920
      TabIndex        =   21
      Top             =   8640
      Width           =   1215
   End
   Begin VB.CommandButton My_GoPVT 
      Caption         =   "����PVT�˶�"
      Height          =   495
      Left            =   600
      TabIndex        =   20
      Top             =   8640
      Width           =   1215
   End
   Begin VB.Frame Frame5 
      Caption         =   "�ٶ�-ʱ������(V-T)"
      Height          =   4245
      Left            =   7080
      TabIndex        =   19
      Top             =   240
      Width           =   5565
      Begin VB.PictureBox My_VTDrawPic 
         BorderStyle     =   0  'None
         FillStyle       =   0  'Solid
         Height          =   3840
         Left            =   240
         ScaleHeight     =   3840
         ScaleWidth      =   5040
         TabIndex        =   24
         Top             =   240
         Width           =   5040
      End
   End
   Begin VB.Frame Frame4 
      Caption         =   "λ��-ʱ������(P-T)"
      Height          =   4365
      Left            =   7080
      TabIndex        =   18
      Top             =   4800
      Width           =   5565
      Begin VB.PictureBox My_PTDrawPic 
         BorderStyle     =   0  'None
         FillColor       =   &H00FFFFFF&
         FillStyle       =   0  'Solid
         Height          =   3960
         Left            =   240
         ScaleHeight     =   3960
         ScaleWidth      =   5160
         TabIndex        =   23
         Top             =   240
         Width           =   5160
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "��ʾ"
      Height          =   6735
      Left            =   240
      TabIndex        =   4
      Top             =   1680
      Width           =   6375
      Begin VB.Frame Frame3 
         Caption         =   "PVT���ݵ��������ݣ�"
         Height          =   4815
         Left            =   120
         TabIndex        =   12
         Top             =   1800
         Width           =   6135
         Begin VB.TextBox MyPVTList 
            BackColor       =   &H80000000&
            Height          =   3615
            Left            =   120
            Locked          =   -1  'True
            MultiLine       =   -1  'True
            ScrollBars      =   2  'Vertical
            TabIndex        =   13
            Top             =   840
            Width           =   5775
         End
         Begin VB.Label My_PVelTxt2 
            Height          =   375
            Left            =   4200
            TabIndex        =   17
            Top             =   480
            Width           =   1335
         End
         Begin VB.Label Label15 
            Caption         =   "ʱ��(s)"
            Height          =   255
            Left            =   3000
            TabIndex        =   16
            Top             =   600
            Width           =   735
         End
         Begin VB.Label Label14 
            Caption         =   "λ��(pulse)"
            Height          =   255
            Left            =   1320
            TabIndex        =   15
            Top             =   600
            Width           =   1095
         End
         Begin VB.Label Label13 
            Caption         =   "���"
            Height          =   255
            Left            =   240
            TabIndex        =   14
            Top             =   600
            Width           =   495
         End
      End
      Begin VB.TextBox My_RunTime 
         BackColor       =   &H80000000&
         Height          =   375
         Left            =   4320
         Locked          =   -1  'True
         TabIndex        =   10
         Top             =   960
         Width           =   1215
      End
      Begin VB.TextBox My_MStatus 
         BackColor       =   &H80000000&
         Height          =   375
         Left            =   4320
         Locked          =   -1  'True
         TabIndex        =   8
         Top             =   480
         Width           =   1215
      End
      Begin VB.TextBox My_NowPos 
         BackColor       =   &H80000000&
         Height          =   375
         Left            =   1200
         Locked          =   -1  'True
         TabIndex        =   6
         Top             =   960
         Width           =   1215
      End
      Begin VB.TextBox My_NowSpe 
         BackColor       =   &H80000000&
         Height          =   375
         Left            =   1200
         Locked          =   -1  'True
         TabIndex        =   5
         Top             =   480
         Width           =   1215
      End
      Begin VB.Label Label29 
         Caption         =   "��ǰ�ٶȣ�"
         Height          =   255
         Left            =   240
         TabIndex        =   30
         Top             =   600
         Width           =   975
      End
      Begin VB.Label Label28 
         Caption         =   "pulse/s"
         Height          =   255
         Left            =   2520
         TabIndex        =   29
         Top             =   600
         Width           =   735
      End
      Begin VB.Label Label27 
         Caption         =   "��ǰλ�ã�"
         Height          =   255
         Left            =   240
         TabIndex        =   28
         Top             =   1080
         Width           =   975
      End
      Begin VB.Label Label26 
         Caption         =   "pulse"
         Height          =   255
         Left            =   2520
         TabIndex        =   27
         Top             =   1080
         Width           =   615
      End
      Begin VB.Label Label12 
         Caption         =   "s"
         Height          =   255
         Left            =   5640
         TabIndex        =   11
         Top             =   1080
         Width           =   615
      End
      Begin VB.Label Label11 
         Caption         =   "�˶�ʱ�䣺"
         Height          =   255
         Left            =   3360
         TabIndex        =   9
         Top             =   1080
         Width           =   975
      End
      Begin VB.Label Label10 
         Caption         =   "״̬��"
         Height          =   255
         Left            =   3360
         TabIndex        =   7
         Top             =   600
         Width           =   735
      End
   End
   Begin VB.OptionButton My_PVTM 
      Caption         =   "PTSģʽ"
      Height          =   255
      Index           =   1
      Left            =   4920
      TabIndex        =   3
      Top             =   840
      Width           =   1095
   End
   Begin VB.Frame Frame1 
      Caption         =   "�������"
      Height          =   1215
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   6375
      Begin VB.TextBox My_nAxis 
         Height          =   375
         Left            =   1440
         TabIndex        =   2
         Text            =   "0"
         Top             =   480
         Width           =   855
      End
      Begin VB.Line Line1 
         BorderColor     =   &H80000003&
         X1              =   3120
         X2              =   3120
         Y1              =   120
         Y2              =   1200
      End
      Begin VB.Label Label1 
         Caption         =   "��ţ�"
         Height          =   255
         Left            =   720
         TabIndex        =   1
         Top             =   600
         Width           =   615
      End
   End
   Begin VB.Label Label2 
      Caption         =   "˵������ͼ��ʱ��ˢ������Ϊ200ms��"
      Height          =   255
      Left            =   120
      TabIndex        =   31
      Top             =   9480
      Width           =   8775
   End
   Begin VB.Line Line3 
      BorderColor     =   &H80000003&
      X1              =   0
      X2              =   12960
      Y1              =   9360
      Y2              =   9360
   End
   Begin VB.Line Line2 
      BorderColor     =   &H80000003&
      X1              =   6840
      X2              =   6840
      Y1              =   9360
      Y2              =   0
   End
End
Attribute VB_Name = "dmc3000"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private My_nCard As Integer    '���忨��
Private MyPVTModeSet As Integer   '����ѡ���PVTģʽ

Private MyPTime(500) As Double    '����PVT��ʱ������
Private MyPPos(500) As Long     '����PVT��λ������
Private MyPPer(500) As Double   '����PVT�аٷֱ�����
Private MyCount As Integer     '����PVT���ݵ����鳤��
Private MyShowTxtC As Integer  '����PVT����������ʾ����ѭ������

Private IfShowPVTTxt As Integer '�����Ƿ�ˢ��PVT����������ʾ��
Private My_AxisNum As Integer   '����PVT�˶�������
Private My_AxisList(7) As Integer   '����PVT�˶������б�

Private PosNow(1), PosPast(1) As Double  'P-T��ͼ����
Private VelNow(1), VelPast(1) As Double  'V-T��ͼ����

Private MyRTime As Double    '�����˶�ʱ��


Private Sub MyPVT_Init()    'PVT������ʼ������������ʱ
Dim SumDist As Double       '�������λ��֮��
MyPVTModeSet = 0: My_PVTM(0).Value = True   '��ʼ��PVTģʽΪPTTģʽ

MyCount = 7

'����PVT��������
MyPPos(0) = 0: MyPTime(0) = 0
MyPPos(1) = 1500: MyPTime(1) = 1
MyPPos(2) = 5500: MyPTime(2) = 2
MyPPos(3) = 14000: MyPTime(3) = 3
MyPPos(4) = 38000: MyPTime(4) = 5
MyPPos(5) = 65000: MyPTime(5) = 8
MyPPos(6) = 68000: MyPTime(6) = 9

'����PVT�����е�Per����
MyPPer(0) = 0
MyPPer(1) = 20
MyPPer(2) = 0
MyPPer(3) = 60
MyPPer(4) = 0
MyPPer(5) = 20
MyPPer(6) = 80


IfShowPVTTxt = 1     'ˢ�����ݵ�������ʾ��
End Sub

Private Sub Form_Load()   'װ�غ���
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
    My_RunTime = Str(0)
    dmc_set_pulse_outmode My_nCard, Val(My_nAxis), 0     '�趨�������ģʽ
    dmc_set_position My_nCard, Val(My_nAxis), 0      '�������
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
My_nAxis.Locked = True
My_nAxis.BackColor = RGB(200, 200, 200)
MyDrawPicReady      '��ͼ��ʼ������

Select Case MyPVTModeSet     '�ж�ѡ���PVTģʽ
Case 0   '���ΪPTTģʽ
    dmc_PttTable My_nCard, Val(My_nAxis), MyCount, MyPTime(0), MyPPos(0) '��ָ�����ݱ������ݣ����� PTT ������ʽ
Case 1   '���ΪPTSģʽ
    dmc_PtsTable My_nCard, Val(My_nAxis), MyCount, MyPTime(0), MyPPos(0), MyPPer(0)   '��ָ�����ݱ������ݣ����� PTS ������ʽ
Case Else
End Select

My_AxisNum = 1
My_AxisList(0) = Val(My_nAxis)
MyRTime = 0
Timer2 = True
dmc_PvtMove My_nCard, My_AxisNum, My_AxisList(0)  '����PVT�˶�
While (dmc_check_done(My_nCard, Val(My_nAxis)) = 0)    '�жϵ��״̬
    DoEvents
Wend
My_nAxis.Locked = False
My_nAxis.BackColor = RGB(255, 255, 255)
End Sub

Private Sub MyDrawPicReady()       '��ͼ��ʼ������
Dim i As Double
PosPast(0) = 0
VelPast(0) = 0    '��ʼ����ͼ��ʼ����

MySetXYLine_PT          '����P-Tͼ��������
MySetXYLine_VT          '����V-Tͼ��������

For i = 0 To MyCount - 1 '�����õ�λ�á�ʱ�������ע��P-Tͼ��
    My_PTDrawPic.FillColor = RGB(255, 0, 0) 'RGB(238, 173, 14)
    My_PTDrawPic.Circle (MyPTime(i), MyPPos(i) + PosPast(1)), 0.03, RGB(255, 0, 0) 'RGB(238, 173, 14)    '��ע���õ�PT���ݣ���ɫ��
Next i
End Sub

Private Sub MyMotorStop()    '���ֹͣ
If (dmc_check_done(My_nCard, Val(My_nAxis)) = 0) Then   '�жϵ��״̬
    dmc_stop My_nCard, Val(My_nAxis), 1      'ָ���������ֹͣ
End If
End Sub

Private Sub My_MStop_Click()   '���ֹͣ
MyMotorStop    '���ֹͣ
End Sub

Private Sub My_PVTM_Click(index As Integer)   'PVTģʽ��ѡ��
MyPVTModeSet = index
IfShowPVTTxt = 1     'ˢ�����ݵ�������ʾ��
End Sub

Private Sub My_SetZero_Click()   '�������
dmc_set_position My_nCard, Val(My_nAxis), 0    '�������
PosPast(1) = 0
End Sub

Private Sub Timer1_Timer()   '��ʱ��1��ˢ����ʾ������
My_NowSpe = Str(dmc_read_current_speed(My_nCard, Val(My_nAxis)))    '��ȡ��ǰ�˶��ٶ�
My_NowPos = Str(dmc_get_position(My_nCard, Val(My_nAxis)))    '��ȡ��ǰλ��
If dmc_check_done(My_nCard, Val(My_nAxis)) = 1 Then  '�жϵ��״̬
    My_MStatus = "ֹͣ��"
Else
    My_MStatus = "�˶���"
End If
If IfShowPVTTxt = 1 Then     '�ж��Ƿ�ˢ���ı����б������ʾ
        MyPVTList = ""
        Select Case MyPVTModeSet
        Case 0  '���ΪPTTģʽ
            My_PVelTxt2.Caption = ""
            For MyShowTxtC = 0 To MyCount - 1
                MyPVTList = MyPVTList + Str(MyShowTxtC) + Chr(9) + Chr(9) + Str(MyPPos(MyShowTxtC)) + Chr(9) + Chr(9) + Str(MyPTime(MyShowTxtC)) + vbCrLf
            Next MyShowTxtC
        Case 1     '���ΪPTSģʽ
            My_PVelTxt2.Caption = "�ٶȰٷֱ�(%)"
            For MyShowTxtC = 0 To MyCount - 1
                MyPVTList = MyPVTList + Str(MyShowTxtC) + Chr(9) + Chr(9) + Str(MyPPos(MyShowTxtC)) + Chr(9) + Chr(9) + Str(MyPTime(MyShowTxtC)) + Chr(9) + Chr(9) + Format(Str(MyPPer(MyShowTxtC)), "0.000") + vbCrLf
            Next MyShowTxtC
        Case Else
        End Select
        IfShowPVTTxt = 0
End If
End Sub

Private Sub MySet_PTPicPara()           '����P-Tͼ�������
My_PTDrawPic.ScaleLeft = 0
My_PTDrawPic.ScaleTop = 75000
My_PTDrawPic.ScaleWidth = 10
My_PTDrawPic.ScaleHeight = -75000 - 8000
End Sub

Private Sub MySetXYLine_PT()          '����P-Tͼ��������
Dim k As Double
MySet_PTPicPara                       '����P-Tͼ�������
My_PTDrawPic.Cls
My_PTDrawPic.DrawWidth = 1
My_PTDrawPic.DrawStyle = 2

For k = 0 To (My_PTDrawPic.ScaleWidth + My_PTDrawPic.ScaleLeft) Step 1                       '����ͼ����������
    My_PTDrawPic.Line (k, My_PTDrawPic.ScaleHeight + My_PTDrawPic.ScaleTop)-(k, My_PTDrawPic.ScaleTop), RGB(0, 250, 5)
    My_PTDrawPic.CurrentX = k - 0.1: My_PTDrawPic.CurrentY = -200
    My_PTDrawPic.Print Str(k)
Next k
For k = 10000 To My_PTDrawPic.ScaleTop Step 10000
    My_PTDrawPic.Line (My_PTDrawPic.ScaleLeft, k)-(My_PTDrawPic.ScaleLeft + My_PTDrawPic.ScaleWidth, k), RGB(0, 250, 5)
    My_PTDrawPic.CurrentX = 0: My_PTDrawPic.CurrentY = k + 1000
    My_PTDrawPic.Print Str(k)
Next k

My_PTDrawPic.DrawStyle = 0
My_PTDrawPic.Line (0, My_PTDrawPic.ScaleHeight + My_PTDrawPic.ScaleTop)-(0, My_PTDrawPic.ScaleTop), RGB(0, 0, 0)
My_PTDrawPic.Line (My_PTDrawPic.ScaleLeft, 0)-(My_PTDrawPic.ScaleLeft + My_PTDrawPic.ScaleWidth, 0), RGB(0, 0, 0)
End Sub

Private Sub MyDrawPTPic()                        'P-Tͼ��ͼ����
PosNow(0) = MyRTime
PosNow(1) = dmc_get_position(My_nCard, Val(My_nAxis))
My_PTDrawPic.Line (PosPast(0), PosPast(1))-(PosNow(0), PosNow(1)), RGB(255, 0, 0)

End Sub

Private Sub MySet_VTPicPara()           '����V-Tͼ�������
My_VTDrawPic.ScaleLeft = 0
My_VTDrawPic.ScaleTop = 16000
My_VTDrawPic.ScaleWidth = 10
My_VTDrawPic.ScaleHeight = -16000 - 800
End Sub

Private Sub MySetXYLine_VT()          '����V-Tͼ��������
Dim k As Double
MySet_VTPicPara                       '����V-Tͼ�������
My_VTDrawPic.Cls
My_VTDrawPic.DrawWidth = 1
My_VTDrawPic.DrawStyle = 2

For k = 0 To (My_VTDrawPic.ScaleWidth + My_VTDrawPic.ScaleLeft) Step 1                        '����ͼ����������
    My_VTDrawPic.Line (k, My_VTDrawPic.ScaleHeight + My_VTDrawPic.ScaleTop)-(k, My_VTDrawPic.ScaleTop), RGB(0, 250, 5)
    My_VTDrawPic.CurrentX = k - 0.1: My_VTDrawPic.CurrentY = -100
    My_VTDrawPic.Print Str(k)
Next k
For k = 3000 To My_VTDrawPic.ScaleTop Step 3000
    My_VTDrawPic.Line (My_VTDrawPic.ScaleLeft, k)-(My_VTDrawPic.ScaleLeft + My_VTDrawPic.ScaleWidth, k), RGB(0, 250, 5)
    My_VTDrawPic.CurrentX = 0: My_VTDrawPic.CurrentY = k + 300
    My_VTDrawPic.Print Str(k)
Next k

My_VTDrawPic.DrawStyle = 0
My_VTDrawPic.Line (0, My_VTDrawPic.ScaleHeight + My_VTDrawPic.ScaleTop)-(0, My_VTDrawPic.ScaleTop), RGB(0, 0, 0)
My_VTDrawPic.Line (My_VTDrawPic.ScaleLeft, 0)-(My_VTDrawPic.ScaleLeft + My_VTDrawPic.ScaleWidth, 0), RGB(0, 0, 0)
End Sub

Private Sub MyDrawVTPic()                        'V-Tͼ��ͼ����
VelNow(0) = MyRTime
VelNow(1) = dmc_read_current_speed(My_nCard, Val(My_nAxis))
If (PosNow(1) < PosPast(1)) Then      '�����ǰ��λ�ñ���һ��λ��ҪС�����жϴ�ʱΪ�����˶�
    VelNow(1) = -VelNow(1)
End If
My_VTDrawPic.Line (VelPast(0), VelPast(1))-(VelNow(0), VelNow(1)), RGB(255, 0, 0)
VelPast(0) = VelNow(0)
VelPast(1) = VelNow(1)

PosPast(0) = PosNow(0): PosPast(1) = PosNow(1)    ' '����ǰλ��ֵ���뻺�����
End Sub

Private Sub Timer2_Timer()    '��ʱ��2������ͼ��
MyRTime = MyRTime + 0.2
MyDrawPTPic                       'P-Tͼ��ͼ����
MyDrawVTPic                       'V-Tͼ��ͼ����
My_RunTime = Str(MyRTime)
If dmc_check_done(My_nCard, Val(My_nAxis)) = 1 Then   '�жϵ��״̬
    Timer2.Enabled = False
End If
End Sub
