VERSION 5.00
Begin VB.Form dmc3000 
   Caption         =   "二维低速位置比较（DMC3000）"
   ClientHeight    =   5265
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10215
   LinkTopic       =   "Form1"
   ScaleHeight     =   5265
   ScaleWidth      =   10215
   StartUpPosition =   2  '屏幕中心
   Begin VB.CommandButton MySetIO3Low 
      Caption         =   "输出IO口3置为低电平"
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
      Caption         =   "启动"
      Height          =   615
      Left            =   120
      TabIndex        =   4
      Top             =   3360
      Width           =   1215
   End
   Begin VB.CommandButton My_Exit 
      Caption         =   "退出程序"
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
      Caption         =   "轨迹图形(X-Y)"
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
      Caption         =   "第一个比较点触发时，输出IO口0电平取反；第二个比较点触发时，输出IO口3置为高电平。"
      Height          =   255
      Left            =   840
      TabIndex        =   17
      Top             =   4800
      Width           =   7335
   End
   Begin VB.Label Label8 
      Caption         =   "二维位置比较点在轨迹图形上以黑色小圆点表示，共两个；"
      Height          =   255
      Left            =   840
      TabIndex        =   16
      Top             =   4560
      Width           =   4815
   End
   Begin VB.Label Label7 
      Caption         =   "说明：初始化时，输出IO口0保留上次的电平状态，输出IO口3置为低电平；图中LED灯红色表示高电平，绿色表示低电平。"
      Height          =   255
      Left            =   240
      TabIndex        =   15
      Top             =   4320
      Width           =   9735
   End
   Begin VB.Label Label1 
      Caption         =   "输出IO口0"
      Height          =   375
      Left            =   840
      TabIndex        =   13
      Top             =   480
      Width           =   615
   End
   Begin VB.Label Label2 
      Caption         =   "输出IO口3"
      Height          =   375
      Left            =   2280
      TabIndex        =   12
      Top             =   480
      Width           =   615
   End
   Begin VB.Label Label3 
      Caption         =   "X方向当前位置："
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
      Caption         =   "Y方向当前位置："
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
Private My_nCard As Integer    '定义卡号
Private ShapeNow(1), ShapePast(1) As Double '轨迹图坐标

Private Sub Form_Load()
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
    dmc_set_position My_nCard, 0, 0
    dmc_set_position My_nCard, 1, 0     '设置零点
    dmc_set_pulse_outmode My_nCard, 0, 0
    dmc_set_pulse_outmode My_nCard, 1, 0     '设置脉冲输出模式
    dmc_write_outbit My_nCard, 3, 0 '对应端口输出低电平
    ShapePast(0) = 0: ShapePast(1) = 0
End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
dmc_board_close    '关闭控制卡
End Sub

Private Sub My_Exit_Click()    '退出程序
dmc_board_close    '关闭控制卡
End
End Sub

Private Sub My_Run_Click()   '启动按钮
Dim My_axis(1) As Integer     '定义进行位置比较的轴号列表
Dim My_ComPos(1) As Long      '定义进行位置比较的位置列表
Dim My_ComDir(1) As Integer    '定义进行位置比较的方向列表
Dim pos(2), Cen(2) As Long     '定义圆弧插补的终点位置及圆心坐标列表
MySetXYLine_Shape          '绘制轨迹图的坐标线

dmc_compare_set_config_extern My_nCard, 1, 0 '设置比较器，0号卡二维位置比较使能，比较源指令位置
dmc_compare_clear_points_extern My_nCard     '清除位置比较点
My_axis(0) = 0: My_axis(1) = 1   '设置比较轴号列表
My_ComPos(0) = -5000: My_ComPos(1) = 5000 '设置比较位置列表
My_ComDir(0) = 0: My_ComDir(1) = 1 '设置比较方向列表
dmc_compare_add_point_extern My_nCard, My_axis(0), My_ComPos(0), My_ComDir(0), 3, 0
'添加比较点，触发时动作为输出端口0电平取反
My_ComPos(0) = 5000: My_ComPos(1) = 5000 '设置比较位置列表
My_ComDir(0) = 1: My_ComDir(1) = 0 '设置比较方向列表
dmc_compare_add_point_extern My_nCard, My_axis(0), My_ComPos(0), My_ComDir(0), 1, 3
'添加比较点，触发时动作为输出端口3置为高电平
pos(0) = 0: pos(1) = 0             '设置终点坐标
Cen(0) = 0: Cen(1) = 5000                 '设置圆心坐标
dmc_set_vector_profile_multicoor My_nCard, 0, 0, 3000, 0.1, 0, 0 '设置矢量速度曲线
dmc_arc_move_multicoor My_nCard, 0, My_axis(0), pos(0), Cen(0), 0, 0 '圆弧插补运动

My_ShapeDrawPic.FillColor = RGB(0, 0, 0)
My_ShapeDrawPic.Circle (-5000, 5000), 70, RGB(0, 0, 0)     'RGB(205, 85, 85)
My_ShapeDrawPic.Circle (5000, 5000), 70, RGB(0, 0, 0) '将二维位置比较点标注在轨迹图上
End Sub

Private Sub MySetIO3Low_Click()
dmc_write_outbit My_nCard, 3, 0 '对应端口输出低电平
End Sub

Private Sub Timer1_Timer()   '定时器1函数
My_NowPos = Str(dmc_get_position(My_nCard, 0))   '获取X方向当前位置
My_NowPosY = Str(dmc_get_position(My_nCard, 1))   '获取Y方向当前位置
If (dmc_read_outbit(My_nCard, 0) = 0) Then '读取输出端口0
    MyLED0.BackColor = RGB(0, 255, 0)    'LED灯显示为绿色
Else
    MyLED0.BackColor = RGB(255, 0, 0)    'LED灯显示为红色
End If
If (dmc_read_outbit(My_nCard, 3) = 0) Then '读取输出端口3
    MyLED1.BackColor = RGB(0, 255, 0)    'LED灯显示为绿色
Else
    MyLED1.BackColor = RGB(255, 0, 0)    'LED灯显示为红色
End If
End Sub

Private Sub Timer2_Timer()    '定时器2函数
MyDrawShapePic                        '轨迹图绘图函数
End Sub

Private Sub MySet_ShapePicPara()           '设置轨迹图画框参数
My_ShapeDrawPic.ScaleLeft = -10400
My_ShapeDrawPic.ScaleTop = 13000
My_ShapeDrawPic.ScaleWidth = 20800
My_ShapeDrawPic.ScaleHeight = -14000
End Sub

Private Sub MySetXYLine_Shape()          '绘制轨迹图的坐标线
Dim k As Double
MySet_ShapePicPara                       '设置轨迹图画框参数
My_ShapeDrawPic.Cls
My_ShapeDrawPic.DrawWidth = 1
My_ShapeDrawPic.DrawStyle = 2

For k = 2000 To (My_ShapeDrawPic.ScaleWidth + My_ShapeDrawPic.ScaleLeft) Step 2000                         '绘制图画框网络线
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

Private Sub MyDrawShapePic()                        '轨迹图绘图函数
ShapeNow(0) = dmc_get_position(My_nCard, 0)
ShapeNow(1) = dmc_get_position(My_nCard, 1)
My_ShapeDrawPic.Line (ShapePast(0), ShapePast(1))-(ShapeNow(0), ShapeNow(1)), RGB(255, 0, 255)  '粉色
ShapePast(0) = ShapeNow(0): ShapePast(1) = ShapeNow(1)
End Sub


