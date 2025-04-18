VERSION 5.00
Begin VB.Form 轨迹运动 
   Caption         =   "轨迹运动"
   ClientHeight    =   7650
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10080
   LinkTopic       =   "Form1"
   ScaleHeight     =   7650
   ScaleWidth      =   10080
   StartUpPosition =   2  '屏幕中心
   Begin VB.Frame Frame3 
      Caption         =   "图形显示"
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
      Caption         =   "显示"
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
         Text            =   "停止中"
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
         Caption         =   "坐标系0状态："
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
         Caption         =   "Y方向当前位置："
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
         Caption         =   "X方向当前位置："
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
         Caption         =   "Y方向当前速度："
         Height          =   375
         Left            =   240
         TabIndex        =   16
         Top             =   960
         Width           =   735
      End
      Begin VB.Label Label11 
         Caption         =   "X方向当前速度："
         Height          =   375
         Left            =   240
         TabIndex        =   14
         Top             =   480
         Width           =   735
      End
   End
   Begin VB.CommandButton MyExit 
      Caption         =   "退出程序"
      Height          =   615
      Left            =   8400
      TabIndex        =   12
      Top             =   6240
      Width           =   1335
   End
   Begin VB.CommandButton MyRunPro 
      Caption         =   "执行轨迹运动"
      Height          =   615
      Left            =   6480
      TabIndex        =   11
      Top             =   6240
      Width           =   1335
   End
   Begin VB.Frame Frame1 
      Caption         =   "插补参数输入"
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
         Caption         =   "加减速时间："
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
         Caption         =   "运行速度："
         Height          =   255
         Left            =   240
         TabIndex        =   5
         Top             =   1440
         Width           =   975
      End
      Begin VB.Label Label2 
         Caption         =   "Y方向轴号："
         Height          =   255
         Left            =   240
         TabIndex        =   3
         Top             =   960
         Width           =   1095
      End
      Begin VB.Label Label1 
         Caption         =   "X方向轴号："
         Height          =   255
         Left            =   240
         TabIndex        =   1
         Top             =   480
         Width           =   1095
      End
   End
   Begin VB.Label Label3 
      Caption         =   "注意：当执行直线插补运动时，读取的X、Y方向速度为矢量速度；当执行圆弧插补运动时，读取的X、Y方向速度为分速度。"
      Height          =   255
      Left            =   120
      TabIndex        =   32
      Top             =   7320
      Width           =   9735
   End
End
Attribute VB_Name = "轨迹运动"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private My_CardNum As Integer     '定义卡的数量
Private My_nCard As Integer    '定义卡号
Private PosNow(1), PosPast(1) As Double '定义绘图坐标

Private Sub Form_Load()   '窗口装载函数
Dim My_CardList(7) As Integer '定义卡号数组
Dim My_CardTypeList(7) As Long  '定义各卡类型
My_CardNum = dmc_board_init()                 '运动控制卡初始化
If My_CardNum <= 0 Or My_CardNum > 8 Then
    MsgBox "初始化运动控制卡失败！", , "初始化运动控制卡提示"
Else
    dmc_get_CardInfList My_CardNum, My_CardTypeList(0), My_CardList(0)  '获取正在使用的卡号列表
    My_nCard = My_CardList(0)
    MsgBox "初始化卡成功，当前选择的卡号为：" + Str(My_nCard), , "卡号选择提示"
    dmc_set_pulse_outmode My_nCard, Val(MyXAxis), 0     '设定X方向脉冲输出模式
    dmc_set_pulse_outmode My_nCard, Val(MyYAxis), 0     '设定Y方向脉冲输出模式
    dmc_set_position My_nCard, Val(MyXAxis), 0
    dmc_set_position My_nCard, Val(MyYAxis), 0    '当前位置设为零点
    MySetProfile   '设置运动曲线
End If
End Sub

Private Sub Form_Unload(Cancel As Integer)  '窗口卸载函数
dmc_board_close       '关闭控制卡
End Sub

Private Sub MySetProfile()    '设置电机曲线
dmc_set_vector_profile_multicoor My_nCard, 0, 0, Val(MyVRunSpe), Val(MyVTacc), 0, 0 '设定插补曲线
End Sub

Private Sub MyExit_Click()  '退出程序按钮
dmc_board_close       '关闭控制卡
End
End Sub

Private Sub MyRunPro_Click()  '执行轨迹运动按钮
Dim MynAxis(1) As Integer   '定义轴号数组
Dim DistList(1) As Long   '定义直线插补绝对坐标数组
Dim MyCen(1) As Long   '定义圆弧插补圆心绝对坐标数组
Dim MyTar(1) As Long   '定义圆弧插补终点绝对坐标数组

MynAxis(0) = Val(MyXAxis)
MynAxis(1) = Val(MyYAxis)   '赋值运动的轴号
MySetXYLine_Normal          '绘制普通显示的坐标线

If (dmc_check_done_multicoor(My_nCard, 0) = 0) Then '判断坐标系0此时状态
    MsgBox "电机正在运动，请稍候再尝试！", , "电机运行提示"
Else
    MySetProfile     '设置电机曲线
    dmc_set_position My_nCard, Val(MyXAxis), 0
    dmc_set_position My_nCard, Val(MyYAxis), 0    '当前位置设为零点
    PosPast(0) = 0: PosPast(1) = 0       '设置绘图起点从零点开始
    
    DistList(0) = 1000: DistList(1) = 3000  'OA段直线插补终点坐标赋值
    dmc_line_multicoor My_nCard, 0, 2, MynAxis(0), DistList(0), 1     'OA段运动，绝对模式直线插补
    While (dmc_check_done_multicoor(My_nCard, 0) = 0)  '判断坐标系0状态
        DoEvents
    Wend
    
    DistList(0) = 1866: DistList(1) = 5000  'AB段直线插补终点坐标赋值
    dmc_line_multicoor My_nCard, 0, 2, MynAxis(0), DistList(0), 1     'AB段运动，绝对模式直线插补
    While (dmc_check_done_multicoor(My_nCard, 0) = 0)   '判断坐标系0状态
        DoEvents
    Wend
    
    MyCen(0) = 2732: MyCen(1) = 4500 '赋值BC段圆弧插补圆心绝对坐标
    MyTar(0) = 3598: MyTar(1) = 5000 '赋值BC段圆弧插补终点绝对坐标
    dmc_arc_move_multicoor My_nCard, 0, MynAxis(0), MyTar(0), MyCen(0), 0, 1  'BC段运动，绝对模式顺时针圆弧插补
    While (dmc_check_done_multicoor(My_nCard, 0) = 0)    '判断坐标系0状态
        DoEvents
    Wend
    DistList(0) = 4464: DistList(1) = 3000  'CD段直线插补终点坐标赋值
    dmc_line_multicoor My_nCard, 0, 2, MynAxis(0), DistList(0), 1     'CD段运动，绝对模式直线插补
    While (dmc_check_done_multicoor(My_nCard, 0) = 0)    '判断坐标系0状态
        DoEvents
    Wend
    MyCen(0) = 2732: MyCen(1) = 1994 '赋值DA段圆弧插补圆心绝对坐标
    MyTar(0) = 1000: MyTar(1) = 3000 '赋值DA段圆弧插补终点绝对坐标
    dmc_arc_move_multicoor My_nCard, 0, MynAxis(0), MyTar(0), MyCen(0), 0, 1   'DA段运动，绝对模式顺时针圆弧插补
    While (dmc_check_done_multicoor(My_nCard, 0) = 0)   '判断坐标系0状态
        DoEvents
    Wend
End If
End Sub

Private Sub MySet_NormalShapeDraw()           '设置显示的图画框参数
MyShapeDraw.ScaleLeft = -300
MyShapeDraw.ScaleTop = 6200
MyShapeDraw.ScaleWidth = 5700
MyShapeDraw.ScaleHeight = -6500
End Sub

Private Sub MySetXYLine_Normal()          '绘制普通显示的坐标线
Dim k As Double
MySet_NormalShapeDraw                     '设置显示的图画框参数
MyShapeDraw.Cls
MyShapeDraw.DrawWidth = 1
MyShapeDraw.DrawStyle = 2

For k = 0 To (MyShapeDraw.ScaleWidth + MyShapeDraw.ScaleLeft) Step 1000                           '绘制图画框网络线
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

Private Sub MyDrawLine()                        '绘图函数
PosNow(0) = dmc_get_position(My_nCard, Val(MyXAxis))
PosNow(1) = dmc_get_position(My_nCard, Val(MyYAxis))
MyShapeDraw.Line (PosPast(0), PosPast(1))-(PosNow(0), PosNow(1))
PosPast(0) = PosNow(0): PosPast(1) = PosNow(1)
End Sub

Private Sub Timer1_Timer()   '定时器函数
MyNowXSpe = Str(dmc_read_current_speed(My_nCard, Val(MyXAxis)))
MyNowYSpe = Str(dmc_read_current_speed(My_nCard, Val(MyYAxis))) '读取当前速度
MyNowXPos = Str(dmc_get_position(My_nCard, Val(MyXAxis)))
MyNowYPos = Str(dmc_get_position(My_nCard, Val(MyYAxis))) '读取当前位置
If (dmc_check_done_multicoor(My_nCard, 0) = 0) Then   '判断坐标系0此时状态
    MyMulCoor0Sta = "运行中"
Else
    MyMulCoor0Sta = "停止中"
End If
MyDrawLine                        '绘图函数
End Sub
