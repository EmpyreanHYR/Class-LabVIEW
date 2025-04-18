VERSION 5.00
Begin VB.Form dmc3000 
   Caption         =   "单轴任意速度规划PVT"
   ClientHeight    =   9945
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   12900
   LinkTopic       =   "Form1"
   ScaleHeight     =   9945
   ScaleWidth      =   12900
   StartUpPosition =   2  '屏幕中心
   Begin VB.OptionButton My_PVTM 
      Caption         =   "PTT模式"
      Height          =   255
      Index           =   0
      Left            =   3720
      TabIndex        =   26
      Top             =   840
      Width           =   1095
   End
   Begin VB.CommandButton My_MStop 
      Caption         =   "电机停止"
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
      Caption         =   "设置零点"
      Height          =   495
      Left            =   2040
      TabIndex        =   22
      Top             =   8640
      Width           =   1215
   End
   Begin VB.CommandButton My_Exit 
      Caption         =   "退出程序"
      Height          =   495
      Left            =   4920
      TabIndex        =   21
      Top             =   8640
      Width           =   1215
   End
   Begin VB.CommandButton My_GoPVT 
      Caption         =   "启动PVT运动"
      Height          =   495
      Left            =   600
      TabIndex        =   20
      Top             =   8640
      Width           =   1215
   End
   Begin VB.Frame Frame5 
      Caption         =   "速度-时间曲线(V-T)"
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
      Caption         =   "位置-时间曲线(P-T)"
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
      Caption         =   "显示"
      Height          =   6735
      Left            =   240
      TabIndex        =   4
      Top             =   1680
      Width           =   6375
      Begin VB.Frame Frame3 
         Caption         =   "PVT数据点数组数据："
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
            Caption         =   "时间(s)"
            Height          =   255
            Left            =   3000
            TabIndex        =   16
            Top             =   600
            Width           =   735
         End
         Begin VB.Label Label14 
            Caption         =   "位置(pulse)"
            Height          =   255
            Left            =   1320
            TabIndex        =   15
            Top             =   600
            Width           =   1095
         End
         Begin VB.Label Label13 
            Caption         =   "序号"
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
         Caption         =   "当前速度："
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
         Caption         =   "当前位置："
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
         Caption         =   "运动时间："
         Height          =   255
         Left            =   3360
         TabIndex        =   9
         Top             =   1080
         Width           =   975
      End
      Begin VB.Label Label10 
         Caption         =   "状态："
         Height          =   255
         Left            =   3360
         TabIndex        =   7
         Top             =   600
         Width           =   735
      End
   End
   Begin VB.OptionButton My_PVTM 
      Caption         =   "PTS模式"
      Height          =   255
      Index           =   1
      Left            =   4920
      TabIndex        =   3
      Top             =   840
      Width           =   1095
   End
   Begin VB.Frame Frame1 
      Caption         =   "输入参数"
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
         Caption         =   "轴号："
         Height          =   255
         Left            =   720
         TabIndex        =   1
         Top             =   600
         Width           =   615
      End
   End
   Begin VB.Label Label2 
      Caption         =   "说明：绘图定时器刷新周期为200ms。"
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
Private My_nCard As Integer    '定义卡号
Private MyPVTModeSet As Integer   '定义选择的PVT模式

Private MyPTime(500) As Double    '定义PVT中时间数组
Private MyPPos(500) As Long     '定义PVT中位置数组
Private MyPPer(500) As Double   '定义PVT中百分比数组
Private MyCount As Integer     '定义PVT数据点数组长度
Private MyShowTxtC As Integer  '定义PVT数组数据显示框中循环变量

Private IfShowPVTTxt As Integer '定义是否刷新PVT数组数据显示框
Private My_AxisNum As Integer   '定义PVT运动的轴数
Private My_AxisList(7) As Integer   '定义PVT运动的轴列表

Private PosNow(1), PosPast(1) As Double  'P-T绘图坐标
Private VelNow(1), VelPast(1) As Double  'V-T绘图坐标

Private MyRTime As Double    '定义运动时间


Private Sub MyPVT_Init()    'PVT参数初始化，程序启动时
Dim SumDist As Double       '定义各段位移之和
MyPVTModeSet = 0: My_PVTM(0).Value = True   '初始化PVT模式为PTT模式

MyCount = 7

'定义PVT数组数据
MyPPos(0) = 0: MyPTime(0) = 0
MyPPos(1) = 1500: MyPTime(1) = 1
MyPPos(2) = 5500: MyPTime(2) = 2
MyPPos(3) = 14000: MyPTime(3) = 3
MyPPos(4) = 38000: MyPTime(4) = 5
MyPPos(5) = 65000: MyPTime(5) = 8
MyPPos(6) = 68000: MyPTime(6) = 9

'设置PVT数据中的Per数据
MyPPer(0) = 0
MyPPer(1) = 20
MyPPer(2) = 0
MyPPer(3) = 60
MyPPer(4) = 0
MyPPer(5) = 20
MyPPer(6) = 80


IfShowPVTTxt = 1     '刷新数据点数组显示框
End Sub

Private Sub Form_Load()   '装载函数
Dim My_CardNum As Integer     '定义卡数
Dim My_CardList(7) As Integer '定义卡号数组
Dim My_CardTypeList(7) As Long   '定义卡类型数组
My_CardNum = dmc_board_init()
If ((My_CardNum <= 0) Or (My_CardNum > 8)) Then
    MsgBox "未找到控制卡或多卡设置重叠！", , "控制卡初始化提示"
Else
    dmc_get_CardInfList My_CardNum, My_CardTypeList(0), My_CardList(0)  '获取正在使用的卡号列表
    My_nCard = My_CardList(0)
    MsgBox "当前选择的卡号为：" + Str(My_nCard), , "卡号选择提示"
    My_RunTime = Str(0)
    dmc_set_pulse_outmode My_nCard, Val(My_nAxis), 0     '设定脉冲输出模式
    dmc_set_position My_nCard, Val(My_nAxis), 0      '设置零点
    MyPVT_Init    'PVT参数初始化，程序启动时
End If
End Sub

Private Sub Form_Unload(Cancel As Integer)   '卸载函数
MyMotorStop    '电机停止
dmc_board_close   '关闭控制卡
End Sub

Private Sub My_Exit_Click()    '退出程序
MyMotorStop    '电机停止
dmc_board_close   '关闭控制卡
End
End Sub

Private Sub My_GoPVT_Click()  '启动PVT运动
My_nAxis.Locked = True
My_nAxis.BackColor = RGB(200, 200, 200)
MyDrawPicReady      '绘图初始化操作

Select Case MyPVTModeSet     '判断选择的PVT模式
Case 0   '如果为PTT模式
    dmc_PttTable My_nCard, Val(My_nAxis), MyCount, MyPTime(0), MyPPos(0) '向指定数据表传送数据，采用 PTT 描述方式
Case 1   '如果为PTS模式
    dmc_PtsTable My_nCard, Val(My_nAxis), MyCount, MyPTime(0), MyPPos(0), MyPPer(0)   '向指定数据表传送数据，采用 PTS 描述方式
Case Else
End Select

My_AxisNum = 1
My_AxisList(0) = Val(My_nAxis)
MyRTime = 0
Timer2 = True
dmc_PvtMove My_nCard, My_AxisNum, My_AxisList(0)  '启动PVT运动
While (dmc_check_done(My_nCard, Val(My_nAxis)) = 0)    '判断电机状态
    DoEvents
Wend
My_nAxis.Locked = False
My_nAxis.BackColor = RGB(255, 255, 255)
End Sub

Private Sub MyDrawPicReady()       '绘图初始化操作
Dim i As Double
PosPast(0) = 0
VelPast(0) = 0    '初始化绘图起始坐标

MySetXYLine_PT          '绘制P-T图的坐标线
MySetXYLine_VT          '绘制V-T图的坐标线

For i = 0 To MyCount - 1 '将设置的位置、时间坐标标注在P-T图上
    My_PTDrawPic.FillColor = RGB(255, 0, 0) 'RGB(238, 173, 14)
    My_PTDrawPic.Circle (MyPTime(i), MyPPos(i) + PosPast(1)), 0.03, RGB(255, 0, 0) 'RGB(238, 173, 14)    '标注设置的PT数据，红色点
Next i
End Sub

Private Sub MyMotorStop()    '电机停止
If (dmc_check_done(My_nCard, Val(My_nAxis)) = 0) Then   '判断电机状态
    dmc_stop My_nCard, Val(My_nAxis), 1      '指定电机立即停止
End If
End Sub

Private Sub My_MStop_Click()   '电机停止
MyMotorStop    '电机停止
End Sub

Private Sub My_PVTM_Click(index As Integer)   'PVT模式单选框
MyPVTModeSet = index
IfShowPVTTxt = 1     '刷新数据点数组显示框
End Sub

Private Sub My_SetZero_Click()   '设置零点
dmc_set_position My_nCard, Val(My_nAxis), 0    '设置零点
PosPast(1) = 0
End Sub

Private Sub Timer1_Timer()   '定时器1，刷新显示框数据
My_NowSpe = Str(dmc_read_current_speed(My_nCard, Val(My_nAxis)))    '获取当前运动速度
My_NowPos = Str(dmc_get_position(My_nCard, Val(My_nAxis)))    '获取当前位置
If dmc_check_done(My_nCard, Val(My_nAxis)) = 1 Then  '判断电机状态
    My_MStatus = "停止中"
Else
    My_MStatus = "运动中"
End If
If IfShowPVTTxt = 1 Then     '判断是否刷新文本框列表输出显示
        MyPVTList = ""
        Select Case MyPVTModeSet
        Case 0  '如果为PTT模式
            My_PVelTxt2.Caption = ""
            For MyShowTxtC = 0 To MyCount - 1
                MyPVTList = MyPVTList + Str(MyShowTxtC) + Chr(9) + Chr(9) + Str(MyPPos(MyShowTxtC)) + Chr(9) + Chr(9) + Str(MyPTime(MyShowTxtC)) + vbCrLf
            Next MyShowTxtC
        Case 1     '如果为PTS模式
            My_PVelTxt2.Caption = "速度百分比(%)"
            For MyShowTxtC = 0 To MyCount - 1
                MyPVTList = MyPVTList + Str(MyShowTxtC) + Chr(9) + Chr(9) + Str(MyPPos(MyShowTxtC)) + Chr(9) + Chr(9) + Str(MyPTime(MyShowTxtC)) + Chr(9) + Chr(9) + Format(Str(MyPPer(MyShowTxtC)), "0.000") + vbCrLf
            Next MyShowTxtC
        Case Else
        End Select
        IfShowPVTTxt = 0
End If
End Sub

Private Sub MySet_PTPicPara()           '设置P-T图画框参数
My_PTDrawPic.ScaleLeft = 0
My_PTDrawPic.ScaleTop = 75000
My_PTDrawPic.ScaleWidth = 10
My_PTDrawPic.ScaleHeight = -75000 - 8000
End Sub

Private Sub MySetXYLine_PT()          '绘制P-T图的坐标线
Dim k As Double
MySet_PTPicPara                       '设置P-T图画框参数
My_PTDrawPic.Cls
My_PTDrawPic.DrawWidth = 1
My_PTDrawPic.DrawStyle = 2

For k = 0 To (My_PTDrawPic.ScaleWidth + My_PTDrawPic.ScaleLeft) Step 1                       '绘制图画框网络线
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

Private Sub MyDrawPTPic()                        'P-T图绘图函数
PosNow(0) = MyRTime
PosNow(1) = dmc_get_position(My_nCard, Val(My_nAxis))
My_PTDrawPic.Line (PosPast(0), PosPast(1))-(PosNow(0), PosNow(1)), RGB(255, 0, 0)

End Sub

Private Sub MySet_VTPicPara()           '设置V-T图画框参数
My_VTDrawPic.ScaleLeft = 0
My_VTDrawPic.ScaleTop = 16000
My_VTDrawPic.ScaleWidth = 10
My_VTDrawPic.ScaleHeight = -16000 - 800
End Sub

Private Sub MySetXYLine_VT()          '绘制V-T图的坐标线
Dim k As Double
MySet_VTPicPara                       '设置V-T图画框参数
My_VTDrawPic.Cls
My_VTDrawPic.DrawWidth = 1
My_VTDrawPic.DrawStyle = 2

For k = 0 To (My_VTDrawPic.ScaleWidth + My_VTDrawPic.ScaleLeft) Step 1                        '绘制图画框网络线
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

Private Sub MyDrawVTPic()                        'V-T图绘图函数
VelNow(0) = MyRTime
VelNow(1) = dmc_read_current_speed(My_nCard, Val(My_nAxis))
If (PosNow(1) < PosPast(1)) Then      '如果当前点位置比上一次位置要小，则判断此时为反向运动
    VelNow(1) = -VelNow(1)
End If
My_VTDrawPic.Line (VelPast(0), VelPast(1))-(VelNow(0), VelNow(1)), RGB(255, 0, 0)
VelPast(0) = VelNow(0)
VelPast(1) = VelNow(1)

PosPast(0) = PosNow(0): PosPast(1) = PosNow(1)    ' '将当前位置值存入缓存变量
End Sub

Private Sub Timer2_Timer()    '定时器2，绘制图形
MyRTime = MyRTime + 0.2
MyDrawPTPic                       'P-T图绘图函数
MyDrawVTPic                       'V-T图绘图函数
My_RunTime = Str(MyRTime)
If dmc_check_done(My_nCard, Val(My_nAxis)) = 1 Then   '判断电机状态
    Timer2.Enabled = False
End If
End Sub
