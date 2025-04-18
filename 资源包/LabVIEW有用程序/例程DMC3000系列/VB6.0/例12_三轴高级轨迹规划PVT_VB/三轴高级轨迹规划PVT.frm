VERSION 5.00
Begin VB.Form dmc3000 
   Caption         =   "三轴高级轨迹规划PVT"
   ClientHeight    =   9780
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   12210
   LinkTopic       =   "Form1"
   ScaleHeight     =   9780
   ScaleWidth      =   12210
   StartUpPosition =   2  '屏幕中心
   Begin VB.CommandButton My_MStop 
      Caption         =   "电机停止"
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
      Caption         =   "设置零点"
      Height          =   615
      Left            =   10560
      TabIndex        =   22
      Top             =   6360
      Width           =   1215
   End
   Begin VB.CommandButton My_Exit 
      Caption         =   "退出程序"
      Height          =   615
      Left            =   10560
      TabIndex        =   21
      Top             =   8520
      Width           =   1215
   End
   Begin VB.CommandButton My_GoPVT 
      Caption         =   "启动PVT运动"
      Height          =   615
      Left            =   10560
      TabIndex        =   20
      Top             =   5280
      Width           =   1215
   End
   Begin VB.Frame Frame7 
      Caption         =   "轨迹图形(X-Y-Z)"
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
      Caption         =   "速度-时间曲线(V-T)"
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
            Caption         =   "Z方向"
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
            Caption         =   "X方向"
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
            Caption         =   "Y方向"
            Height          =   255
            Left            =   2520
            TabIndex        =   38
            Top             =   120
            Width           =   495
         End
      End
   End
   Begin VB.Frame Frame4 
      Caption         =   "位置-时间曲线(P-T)"
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
            Caption         =   "Z方向"
            Height          =   255
            Left            =   2760
            TabIndex        =   49
            Top             =   120
            Width           =   615
         End
         Begin VB.Label Label3 
            Caption         =   "Y方向"
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
            Caption         =   "X方向"
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
      Caption         =   "显示"
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
         Caption         =   "Z速度："
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
         Caption         =   "Z位置："
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
         Caption         =   "X速度："
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
         Caption         =   "X位置："
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
         Caption         =   "运动时间："
         Height          =   255
         Left            =   3360
         TabIndex        =   14
         Top             =   1800
         Width           =   975
      End
      Begin VB.Label Label10 
         Caption         =   "状态："
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
         Caption         =   "Y位置："
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
         Caption         =   "Y速度："
         Height          =   255
         Left            =   360
         TabIndex        =   6
         Top             =   840
         Width           =   735
      End
   End
   Begin VB.OptionButton My_PVTM 
      Caption         =   "PVT模式"
      Height          =   255
      Index           =   0
      Left            =   10440
      TabIndex        =   4
      Top             =   600
      Width           =   1095
   End
   Begin VB.OptionButton My_PVTM 
      Caption         =   "PVTS模式"
      Height          =   255
      Index           =   1
      Left            =   10440
      TabIndex        =   3
      Top             =   960
      Width           =   1095
   End
   Begin VB.Frame Frame1 
      Caption         =   "输入参数"
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
         Caption         =   "Z方向轴号："
         Height          =   375
         Left            =   3120
         TabIndex        =   48
         Top             =   480
         Width           =   615
      End
      Begin VB.Label Label25 
         Caption         =   "Y方向轴号："
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
         Caption         =   "X方向轴号："
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
      Caption         =   "说明：绘图定时器刷新周期为200ms。"
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
Private My_nCard As Integer    '定义卡号
Private MyPVTModeSet As Integer   '定义选择的PVT模式

Private MyPTimeX(11) As Double    '定义PVT中时间数组,X方向
Private MyPPosX(11) As Long     '定义PVT中位置数组,X方向
Private MyPVelX(11) As Double   '定义PVT中速度数组,X方向
Private MyPVelBeginX As Double
Private MyPVelEndX   As Double   '定义PVTS中起始点与终止点速度,X方向
Private MyCountX As Integer     '定义PVT数据点数组长度,X方向

Private MyPTimeY(11) As Double    '定义PVT中时间数组,Y方向
Private MyPPosY(11) As Long     '定义PVT中位置数组,Y方向
Private MyPVelY(11) As Double   '定义PVT中速度数组,Y方向
Private MyPVelBeginY As Double
Private MyPVelEndY   As Double   '定义PVTS中起始点与终止点速度,Y方向
Private MyCountY As Integer     '定义PVT数据点数组长度,Y方向

Private MyPTimeZ(11) As Double    '定义PVT中时间数组,Z方向
Private MyPPosZ(11) As Long     '定义PVT中位置数组,Z方向
Private MyPVelZ(11) As Double   '定义PVT中速度数组,Z方向
Private MyPVelBeginZ As Double
Private MyPVelEndZ   As Double   '定义PVTC中起始点与终止点速度,Z方向
Private MyCountZ As Integer     '定义PVT数据点数组长度,Z方向

Private My_AxisNum As Integer   '定义PVT运动的轴数
Private My_AxisList(7) As Integer   '定义PVT运动的轴列表

Private PosNowX(1), PosPastX(1) As Double  'P-T绘图坐标,X方向
Private VelNowX(1), VelPastX(1) As Double  'V-T绘图坐标,X方向

Private PosNowY(1), PosPastY(1) As Double  'P-T绘图坐标,Y方向
Private VelNowY(1), VelPastY(1) As Double  'V-T绘图坐标,Y方向

Private PosNowZ(1), PosPastZ(1) As Double  'P-T绘图坐标,Z方向
Private VelNowZ(1), VelPastZ(1) As Double  'V-T绘图坐标,Z方向

Private pi As Single      '定义圆周率
Private MyXNowPos, MyYNowPos, MyZNowPos As Long    '定义X、Y、Z方向当前位置
Private ShapeNow(1), ShapePast(1) As Double '轨迹图坐标
Private MyRTime As Double    '定义运动时间


Private Sub MyPVT_Init()    'PVT参数初始化，程序启动时
Dim R, i As Integer
Dim MyWVel As Double        '定义角速度
MyPVTModeSet = 0: My_PVTM(0).Value = True   '初始化为PVT模式
R = 15000            '定义圆半径
pi = 3.141592654    '定义圆周率

MyCountX = 11
MyCountY = 11
MyCountZ = 11     '定义X、Y、ZPVT数组数据长度

'定义X、Y方向的PVT数组数据
For i = 0 To 10
    MyPPosX(i) = R * Cos(pi / 6) * Cos((10 - i) * pi / 10) + R * Cos(pi / 6)    '设置PVT数据中的P数据，X方向
    MyPPosY(i) = R * Sin(pi / 6) * Cos((10 - i) * pi / 10) + R * Sin(pi / 6)    '设置PVT数据中的P数据，Y方向
    MyPPosZ(i) = R * Sin((10 - i) * pi / 10)                                    '设置PVT数据中的P数据，Z方向
Next i

For i = 0 To 10
  MyPTimeX(i) = i   '设置PVT数据中的T数据，X方向
  MyPTimeY(i) = i   '设置PVT数据中的T数据，Y方向
  MyPTimeZ(i) = i   '设置PVT数据中的T数据，Z方向
Next i

MyWVel = -pi / 10           '计算角速度
'角速度为恒定，计算各点的X、Y方向速度
MyPVelX(0) = 0: MyPVelX(10) = 0    '起始点与终止点X方向速度设为0
MyPVelY(0) = 0: MyPVelY(10) = 0   '起始点与终止点Y方向速度设为0
MyPVelZ(0) = 0: MyPVelZ(10) = 0   '起始点与终止点Z方向速度设为0
For i = 0 To 8
    MyPVelX(i + 1) = -R * Cos(pi / 6) * Sin((10 - i - 1) * pi / 10) * MyWVel  '设置PVT数据中的V数据，X方向
    MyPVelY(i + 1) = -R * Sin(pi / 6) * Sin((10 - i - 1) * pi / 10) * MyWVel  '设置PVT数据中的V数据，Y方向
    MyPVelZ(i + 1) = R * Cos((10 - i - 1) * pi / 10) * MyWVel  '设置PVT数据中的V数据，Z方向
Next i

MyPVelBeginX = 0: MyPVelEndX = 0
MyPVelBeginY = 0: MyPVelEndY = 0
MyPVelBeginZ = 0: MyPVelEndZ = 0        '初始化X、Y、Z方向的起点速度及终点速度都为0
End Sub

Private Sub Form_Load()   '装载函数
Dim My_CardNum As Integer     '定义卡数
Dim My_CardList(7) As Integer '定义卡号数组
Dim My_CardTypeList(7) As Long  '定义各卡类型
My_CardNum = dmc_board_init()
If ((My_CardNum <= 0) Or (My_CardNum > 8)) Then
    MsgBox "未找到控制卡或多卡设置重叠！", , "控制卡初始化提示"
Else
    dmc_get_CardInfList My_CardNum, My_CardTypeList(0), My_CardList(0)  '获取正在使用的卡号列表
    My_nCard = My_CardList(0)
    MsgBox "当前选择的卡号为：" + Str(My_nCard), , "卡号选择提示"
    My_RunTime = Str(0)
    dmc_set_pulse_outmode My_nCard, Val(My_nAxisX), 0
    dmc_set_pulse_outmode My_nCard, Val(My_nAxisY), 0
    dmc_set_pulse_outmode My_nCard, Val(My_nAxisZ), 0     '设定脉冲输出模式
    dmc_set_position My_nCard, Val(My_nAxisX), 0
    dmc_set_position My_nCard, Val(My_nAxisY), 0
    dmc_set_position My_nCard, Val(My_nAxisZ), 0      '设置零点
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
My_nAxisX.Locked = True: My_nAxisY.Locked = True: My_nAxisZ.Locked = True
My_nAxisX.BackColor = RGB(200, 200, 200): My_nAxisY.BackColor = RGB(200, 200, 200): My_nAxisZ.BackColor = RGB(200, 200, 200)
MyDrawPicReady      '绘图初始化操作

Select Case MyPVTModeSet     '判断选择的PVT模式
Case 0   '如果为PVT模式
    dmc_PvtTable My_nCard, Val(My_nAxisX), MyCountX, MyPTimeX(0), MyPPosX(0), MyPVelX(0)   '向指定数据表传送数据，采用 PVT 描述方式,x
    dmc_PvtTable My_nCard, Val(My_nAxisY), MyCountY, MyPTimeY(0), MyPPosY(0), MyPVelY(0)   '向指定数据表传送数据，采用 PVT 描述方式,y
    dmc_PvtTable My_nCard, Val(My_nAxisZ), MyCountZ, MyPTimeZ(0), MyPPosZ(0), MyPVelZ(0)   '向指定数据表传送数据，采用 PVT 描述方式,z
Case 1     '如果为PVTS模式
    dmc_PvtsTable My_nCard, Val(My_nAxisX), MyCountX, MyPTimeX(0), MyPPosX(0), MyPVelBeginX, MyPVelEndX   '向指定数据表传送数据，采用 PVTS 描述方式,x
    dmc_PvtsTable My_nCard, Val(My_nAxisY), MyCountY, MyPTimeY(0), MyPPosY(0), MyPVelBeginY, MyPVelEndY   '向指定数据表传送数据，采用 PVTS 描述方式,y
    dmc_PvtsTable My_nCard, Val(My_nAxisZ), MyCountZ, MyPTimeZ(0), MyPPosZ(0), MyPVelBeginZ, MyPVelEndZ   '向指定数据表传送数据，采用 PVTS 描述方式,z
Case Else
End Select

My_AxisNum = 3
My_AxisList(0) = Val(My_nAxisX)
My_AxisList(1) = Val(My_nAxisY)
My_AxisList(2) = Val(My_nAxisZ)
'My_PVTStatus = 3
MyRTime = 0
Timer2 = True
dmc_PvtMove My_nCard, My_AxisNum, My_AxisList(0)   '启动两轴PVT运动
While ((dmc_check_done(My_nCard, Val(My_nAxisX)) = 0) Or (dmc_check_done(My_nCard, Val(My_nAxisY)) = 0))   '判断电机状态
    DoEvents
Wend
My_nAxisX.Locked = False: My_nAxisY.Locked = False: My_nAxisZ.Locked = False
My_nAxisX.BackColor = RGB(255, 255, 255): My_nAxisY.BackColor = RGB(255, 255, 255): My_nAxisZ.BackColor = RGB(255, 255, 255)
End Sub

Private Sub MyDrawPicReady()       '绘图初始化操作
Dim i, j As Integer
PosPastX(0) = 0
VelPastX(0) = 0
PosPastY(0) = 0
VelPastY(0) = 0
PosPastZ(0) = 0
VelPastZ(0) = 0         '初始化绘图起始坐标

MySetXYLine_PT          '绘制P-T图的坐标线
MySetXYLine_VT          '绘制V-T图的坐标线
MySetXYLine_Shape         '绘制轨迹图的坐标线

For i = 0 To 10       '将设置的位置、时间坐标标注在P-T图上
    My_PTDrawPic.FillColor = RGB(255, 0, 0)
    My_PTDrawPic.Circle (MyPTimeX(i), MyPPosX(i) + PosPastX(1)), 0.09, RGB(255, 0, 0)      '标注X方向上设置的PT数据，红色点

    My_PTDrawPic.FillColor = RGB(0, 0, 255)
    My_PTDrawPic.Circle (MyPTimeY(i), MyPPosY(i) + PosPastY(1)), 0.075, RGB(0, 0, 255)     '标注Y方向上设置的PT数据，蓝色点
    
    My_PTDrawPic.FillColor = RGB(255, 0, 255)
    My_PTDrawPic.Circle (MyPTimeZ(i), MyPPosZ(i) + PosPastZ(1)), 0.06, RGB(255, 0, 255)    '标注Z方向上设置的PT数据，粉色点
Next i

'将设置的位置坐标标注在轨迹图上
For i = 0 To 10
    My_ShapeDrawPic.FillColor = RGB(205, 85, 85)
    My_ShapeDrawPic.Circle ((MyPPosX(i) + MyPPosY(i)) * Cos(pi / 4) + ShapePast(0), MyPPosZ(i) + (MyPPosY(i) - MyPPosX(i)) * Sin(pi / 4) + ShapePast(1)), 100, RGB(205, 85, 85)
Next i

Select Case MyPVTModeSet     '判断选择的PVT模式
Case 0   '如果为PVT模式
    For i = 0 To MyCountX - 1 '将设置的速度、时间坐标标注在V-T图上
    My_VTDrawPic.FillColor = RGB(255, 0, 0)
    My_VTDrawPic.Circle (MyPTimeX(i), MyPVelX(i)), 0.09, RGB(255, 0, 0)               '标注X方向上设置的VT数据，红色点

    My_VTDrawPic.FillColor = RGB(0, 0, 255)
    My_VTDrawPic.Circle (MyPTimeY(i), MyPVelY(i)), 0.075, RGB(0, 0, 255)              '标注Y方向上设置的VT数据，蓝色点
    
    My_VTDrawPic.FillColor = RGB(255, 0, 255)
    My_VTDrawPic.Circle (MyPTimeZ(i), MyPVelZ(i)), 0.06, RGB(255, 0, 255)             '标注Z方向上设置的VT数据，粉色点
    Next i
Case 1     '如果为PVTS模式
    My_VTDrawPic.FillColor = RGB(255, 0, 0)
    My_VTDrawPic.Circle (MyPTimeX(0), MyPVelBeginX), 0.09, RGB(255, 0, 0)             '标注X方向上设置的第一点速度，红色点
    My_VTDrawPic.Circle (MyPTimeX(MyCountX - 1), MyPVelEndX), 0.09, RGB(255, 0, 0)    '标注X方向上设置的最后一点速度，红色点
    
    My_VTDrawPic.FillColor = RGB(0, 0, 255)
    My_VTDrawPic.Circle (MyPTimeY(0), MyPVelBeginY), 0.075, RGB(0, 0, 255)              '标注Y方向上设置的第一点速度，蓝色点
    My_VTDrawPic.Circle (MyPTimeY(MyCountY - 1), MyPVelEndY), 0.075, RGB(0, 0, 255)     '标注Y方向上设置的最后一点速度，蓝色点
    
    My_VTDrawPic.FillColor = RGB(255, 0, 255)
    My_VTDrawPic.Circle (MyPTimeY(0), MyPVelBeginY), 0.06, RGB(255, 0, 255)              '标注Z方向上设置的第一点速度，粉色点
    My_VTDrawPic.Circle (MyPTimeY(MyCountY - 1), MyPVelEndY), 0.06, RGB(255, 0, 255)     '标注Z方向上设置的最后一点速度，粉色点
Case Else
End Select
End Sub

Private Sub MyMotorStop()    '电机停止
If (dmc_check_done(My_nCard, Val(My_nAxisX)) = 0) Then   '判断X电机状态
    dmc_stop My_nCard, Val(My_nAxisX), 1      '指定X电机立即停止
End If
If (dmc_check_done(My_nCard, Val(My_nAxisY)) = 0) Then   '判断Y电机状态
    dmc_stop My_nCard, Val(My_nAxisY), 1      '指定Y电机立即停止
End If
If (dmc_check_done(My_nCard, Val(My_nAxisZ)) = 0) Then   '判断Z电机状态
    dmc_stop My_nCard, Val(My_nAxisZ), 1      '指定Z电机立即停止
End If
End Sub

Private Sub My_MStop_Click()   '电机停止
My_nAxisX.Locked = False: My_nAxisY.Locked = False
My_nAxisX.BackColor = RGB(255, 255, 255): My_nAxisY.BackColor = RGB(255, 255, 255)
MyMotorStop    '电机停止
End Sub

Private Sub My_PVTM_Click(index As Integer)   'PVT模式单选框
MyPVTModeSet = index
End Sub

Private Sub My_SetZero_Click()   '设置零点
dmc_set_position My_nCard, Val(My_nAxisX), 0    'X设置零点
dmc_set_position My_nCard, Val(My_nAxisY), 0   'Y设置零点
dmc_set_position My_nCard, Val(My_nAxisZ), 0    'Z设置零点

PosPastX(1) = 0: PosPastY(1) = 0: PosPastZ(1) = 0   '位置时间图开始坐标
ShapePast(0) = 0: ShapePast(1) = 0        '轨迹图开始坐标
End Sub

Private Sub Timer1_Timer()   '定时器1，刷新显示框数据
My_NowSpeX = Str(dmc_read_current_speed(My_nCard, Val(My_nAxisX)))    '获取X当前运动速度
My_NowPosX = Str(dmc_get_position(My_nCard, Val(My_nAxisX)))    '获取X当前位置
My_NowSpeY = Str(dmc_read_current_speed(My_nCard, Val(My_nAxisY)))    '获取Y当前运动速度
My_NowPosY = Str(dmc_get_position(My_nCard, Val(My_nAxisY)))    '获取Y当前位置
My_NowSpeZ = Str(dmc_read_current_speed(My_nCard, Val(My_nAxisZ)))    '获取Z当前运动速度
My_NowPosZ = Str(dmc_get_position(My_nCard, Val(My_nAxisZ)))    '获取Z当前位置
If ((dmc_check_done(My_nCard, Val(My_nAxisX)) = 1) And (dmc_check_done(My_nCard, Val(My_nAxisY)) = 1) And (dmc_check_done(My_nCard, Val(My_nAxisZ)) = 1)) Then '判断电机状态
    My_MStatus = "停止中"
Else
    My_MStatus = "运动中"
End If
End Sub

Private Sub MySet_PTPicPara()           '设置P-T图画框参数
My_PTDrawPic.ScaleLeft = 0
My_PTDrawPic.ScaleTop = 30000
My_PTDrawPic.ScaleWidth = 13
My_PTDrawPic.ScaleHeight = -30000 - 1500
End Sub

Private Sub MySetXYLine_PT()          '绘制P-T图的坐标线
Dim k As Double
MySet_PTPicPara                       '设置P-T图画框参数
My_PTDrawPic.Cls
My_PTDrawPic.DrawWidth = 1
My_PTDrawPic.DrawStyle = 2

For k = 0 To (My_PTDrawPic.ScaleWidth + My_PTDrawPic.ScaleLeft) Step 2                       '绘制图画框网络线
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

Private Sub MyDrawPTPic()                        'P-T图绘图函数
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

Private Sub MySet_VTPicPara()           '设置V-T图画框参数
My_VTDrawPic.ScaleLeft = 0
My_VTDrawPic.ScaleTop = 7500
My_VTDrawPic.ScaleWidth = 13
My_VTDrawPic.ScaleHeight = -15000
End Sub

Private Sub MySetXYLine_VT()          '绘制V-T图的坐标线
Dim k As Double
MySet_VTPicPara                       '设置V-T图画框参数
My_VTDrawPic.Cls
My_VTDrawPic.DrawWidth = 1
My_VTDrawPic.DrawStyle = 2

For k = 0 To (My_VTDrawPic.ScaleWidth + My_VTDrawPic.ScaleLeft) Step 2                        '绘制图画框网络线
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

Private Sub MyDrawVTPic()                        'V-T图绘图函数
VelNowX(0) = MyRTime
VelNowX(1) = dmc_read_current_speed(My_nCard, Val(My_nAxisX))
If (PosNowX(1) < PosPastX(1)) Then      '如果当前点位置比上一次位置要小，则判断此时为反向运动
    VelNowX(1) = -VelNowX(1)
End If
My_VTDrawPic.Line (VelPastX(0), VelPastX(1))-(VelNowX(0), VelNowX(1)), RGB(255, 0, 0)
VelPastX(0) = VelNowX(0)
VelPastX(1) = VelNowX(1)

VelNowY(0) = MyRTime
VelNowY(1) = dmc_read_current_speed(My_nCard, Val(My_nAxisY))
If (PosNowY(1) < PosPastY(1)) Then      '如果当前点位置比上一次位置要小，则判断此时为反向运动
    VelNowY(1) = -VelNowY(1)
End If
My_VTDrawPic.Line (VelPastY(0), VelPastY(1))-(VelNowY(0), VelNowY(1)), RGB(0, 0, 255)
VelPastY(0) = VelNowY(0)
VelPastY(1) = VelNowY(1)

VelNowZ(0) = MyRTime
VelNowZ(1) = dmc_read_current_speed(My_nCard, Val(My_nAxisZ))
If (PosNowZ(1) < PosPastZ(1)) Then      '如果当前点位置比上一次位置要小，则判断此时为反向运动
    VelNowZ(1) = -VelNowZ(1)
End If
My_VTDrawPic.Line (VelPastZ(0), VelPastZ(1))-(VelNowZ(0), VelNowZ(1)), RGB(255, 0, 255)
VelPastZ(0) = VelNowZ(0)
VelPastZ(1) = VelNowZ(1)

PosPastX(0) = PosNowX(0): PosPastX(1) = PosNowX(1)
PosPastY(0) = PosNowY(0): PosPastY(1) = PosNowY(1)
PosPastZ(0) = PosNowZ(0): PosPastZ(1) = PosNowZ(1)     '为下一次绘图作准备
End Sub

Private Sub MySet_ShapePicPara()           '设置轨迹图画框参数
My_ShapeDrawPic.ScaleLeft = -7000
My_ShapeDrawPic.ScaleTop = 20000
My_ShapeDrawPic.ScaleWidth = 40000
My_ShapeDrawPic.ScaleHeight = -40000
End Sub

Private Sub MySetXYLine_Shape()          '绘制轨迹图的坐标线
MySet_ShapePicPara                       '设置轨迹图画框参数
My_ShapeDrawPic.Cls
My_ShapeDrawPic.DrawWidth = 1
My_ShapeDrawPic.DrawStyle = 0

My_ShapeDrawPic.Line (0, 0)-(My_ShapeDrawPic.ScaleLeft + My_ShapeDrawPic.ScaleWidth, My_ShapeDrawPic.ScaleTop + My_ShapeDrawPic.ScaleHeight), RGB(0, 0, 0)
My_ShapeDrawPic.Line (My_ShapeDrawPic.ScaleLeft + My_ShapeDrawPic.ScaleWidth - 400, My_ShapeDrawPic.ScaleTop + My_ShapeDrawPic.ScaleHeight + 150)-(My_ShapeDrawPic.ScaleLeft + My_ShapeDrawPic.ScaleWidth, My_ShapeDrawPic.ScaleTop + My_ShapeDrawPic.ScaleHeight), RGB(0, 0, 0)
My_ShapeDrawPic.Line (My_ShapeDrawPic.ScaleLeft + My_ShapeDrawPic.ScaleWidth - 200, My_ShapeDrawPic.ScaleTop + My_ShapeDrawPic.ScaleHeight + 500)-(My_ShapeDrawPic.ScaleLeft + My_ShapeDrawPic.ScaleWidth, My_ShapeDrawPic.ScaleTop + My_ShapeDrawPic.ScaleHeight), RGB(0, 0, 0)      'X方向坐标线
My_ShapeDrawPic.CurrentX = My_ShapeDrawPic.ScaleLeft + My_ShapeDrawPic.ScaleWidth - 5000: My_ShapeDrawPic.CurrentY = My_ShapeDrawPic.ScaleTop + My_ShapeDrawPic.ScaleHeight + 2000: My_ShapeDrawPic.Print "X"

My_ShapeDrawPic.Line (0, 0)-(My_ShapeDrawPic.ScaleLeft + My_ShapeDrawPic.ScaleWidth, My_ShapeDrawPic.ScaleTop), RGB(0, 0, 0)
My_ShapeDrawPic.Line (My_ShapeDrawPic.ScaleLeft + My_ShapeDrawPic.ScaleWidth - 400, My_ShapeDrawPic.ScaleTop - 150)-(My_ShapeDrawPic.ScaleLeft + My_ShapeDrawPic.ScaleWidth, My_ShapeDrawPic.ScaleTop), RGB(0, 0, 0)
My_ShapeDrawPic.Line (My_ShapeDrawPic.ScaleLeft + My_ShapeDrawPic.ScaleWidth - 200, My_ShapeDrawPic.ScaleTop - 500)-(My_ShapeDrawPic.ScaleLeft + My_ShapeDrawPic.ScaleWidth, My_ShapeDrawPic.ScaleTop), RGB(0, 0, 0)  'Y方向坐标线
My_ShapeDrawPic.CurrentX = My_ShapeDrawPic.ScaleLeft + My_ShapeDrawPic.ScaleWidth - 2000: My_ShapeDrawPic.CurrentY = My_ShapeDrawPic.ScaleTop - 1500: My_ShapeDrawPic.Print "Y"

My_ShapeDrawPic.Line (0, 0)-(0, My_ShapeDrawPic.ScaleTop), RGB(0, 0, 0)
My_ShapeDrawPic.Line (-150, My_ShapeDrawPic.ScaleTop - 500)-(0, My_ShapeDrawPic.ScaleTop), RGB(0, 0, 0)
My_ShapeDrawPic.Line (150, My_ShapeDrawPic.ScaleTop - 500)-(0, My_ShapeDrawPic.ScaleTop), RGB(0, 0, 0)        'Z方向坐标线
My_ShapeDrawPic.CurrentX = 1000: My_ShapeDrawPic.CurrentY = My_ShapeDrawPic.ScaleTop - 1000: My_ShapeDrawPic.Print "Z"
End Sub

Private Sub MyDrawShapePic()                        '轨迹图绘图函数
MyXNowPos = dmc_get_position(My_nCard, Val(My_nAxisX))
MyYNowPos = dmc_get_position(My_nCard, Val(My_nAxisY))
MyZNowPos = dmc_get_position(My_nCard, Val(My_nAxisZ))      '获取X、Y、Z方向当前位置

ShapeNow(0) = (MyYNowPos + MyXNowPos) * Cos(pi / 4)
ShapeNow(1) = MyZNowPos + (MyYNowPos - MyXNowPos) * Cos(pi / 4)
My_ShapeDrawPic.Line (ShapePast(0), ShapePast(1))-(ShapeNow(0), ShapeNow(1)), RGB(255, 0, 255) '粉色
ShapePast(0) = ShapeNow(0): ShapePast(1) = ShapeNow(1)
End Sub

Private Sub Timer2_Timer()    '定时器2，绘制图形
MyRTime = MyRTime + 0.2
MyDrawPTPic                       'P-T图绘图函数
MyDrawVTPic                       'V-T图绘图函数
MyDrawShapePic                        '轨迹图绘图函数
My_RunTime = Str(MyRTime)
If ((dmc_check_done(My_nCard, Val(My_nAxis)) = 1) And (dmc_check_done(My_nCard, Val(My_nAxisY)) = 1)) Then  '判断电机状态
    Timer2.Enabled = False
End If
End Sub
