VERSION 5.00
Begin VB.Form 单轴点位运动 
   Caption         =   "单轴点位运动"
   ClientHeight    =   7095
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   7605
   LinkTopic       =   "Form1"
   ScaleHeight     =   7095
   ScaleWidth      =   7605
   StartUpPosition =   2  '屏幕中心
   Begin VB.Timer Timer2 
      Interval        =   20
      Left            =   6600
      Top             =   6360
   End
   Begin VB.CommandButton MyDecStop 
      Caption         =   "电机停止"
      Height          =   495
      Left            =   5880
      TabIndex        =   44
      Top             =   5400
      Width           =   1215
   End
   Begin VB.CommandButton MyResetPos 
      Caption         =   "位置清零"
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
      Caption         =   "退出程序"
      Height          =   615
      Left            =   5160
      TabIndex        =   40
      Top             =   6120
      Width           =   1215
   End
   Begin VB.CommandButton MyRevTurn 
      Caption         =   "反转"
      Height          =   495
      Left            =   6000
      TabIndex        =   39
      Top             =   4440
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.CommandButton MyForTurn 
      Caption         =   "正转"
      Height          =   495
      Left            =   4320
      TabIndex        =   38
      Top             =   4440
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.OptionButton MyCButton 
      Caption         =   "模拟按钮"
      Height          =   375
      Index           =   0
      Left            =   4440
      TabIndex        =   37
      Top             =   3960
      Width           =   1095
   End
   Begin VB.OptionButton MyCButton 
      Caption         =   "外部IO输入"
      Height          =   375
      Index           =   1
      Left            =   5880
      TabIndex        =   36
      Top             =   3960
      Width           =   1215
   End
   Begin VB.Frame Frame2 
      Caption         =   "显示"
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
         Text            =   "停止中"
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
         Caption         =   "反转显示灯"
         Height          =   255
         Left            =   1800
         TabIndex        =   56
         Top             =   480
         Width           =   975
      End
      Begin VB.Label Label30 
         Caption         =   "正转显示灯"
         Height          =   255
         Left            =   480
         TabIndex        =   55
         Top             =   480
         Width           =   975
      End
      Begin VB.Label Label22 
         Caption         =   "电机状态："
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
         Caption         =   "当前位置："
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
         Caption         =   "当前速度："
         Height          =   255
         Left            =   240
         TabIndex        =   26
         Top             =   1560
         Width           =   975
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "输入参数"
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
         Caption         =   "(端口号)"
         Height          =   255
         Left            =   2400
         TabIndex        =   51
         Top             =   4800
         Width           =   735
      End
      Begin VB.Label Label27 
         Caption         =   "反转显示输出口："
         Height          =   375
         Left            =   240
         TabIndex        =   49
         Top             =   4680
         Width           =   855
      End
      Begin VB.Label Label26 
         Caption         =   "(端口号)"
         Height          =   255
         Left            =   2400
         TabIndex        =   48
         Top             =   4320
         Width           =   855
      End
      Begin VB.Label Label25 
         Caption         =   "正转显示输出口："
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
         Caption         =   "电机轴号："
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
         Caption         =   "运行距离："
         Height          =   255
         Left            =   240
         TabIndex        =   22
         Top             =   5280
         Width           =   975
      End
      Begin VB.Label Label14 
         Caption         =   "(端口号)"
         Height          =   255
         Left            =   2400
         TabIndex        =   21
         Top             =   3840
         Width           =   735
      End
      Begin VB.Label Label13 
         Caption         =   "(端口号)"
         Height          =   255
         Left            =   2400
         TabIndex        =   20
         Top             =   3360
         Width           =   735
      End
      Begin VB.Label Label12 
         Caption         =   "控制反转输入口："
         Height          =   375
         Left            =   240
         TabIndex        =   19
         Top             =   3720
         Width           =   855
      End
      Begin VB.Label Label11 
         Caption         =   "控制正转输入口："
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
         Caption         =   "S段时间："
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
         Caption         =   "减速时间："
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
         Caption         =   "加速时间："
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
         Caption         =   "运行速度："
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
         Caption         =   "起始速度："
         Height          =   255
         Left            =   240
         TabIndex        =   1
         Top             =   960
         Width           =   975
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "控制电机运动的方式"
      Height          =   1575
      Left            =   4080
      TabIndex        =   41
      Top             =   3600
      Width           =   3255
   End
   Begin VB.Label Label29 
      Caption         =   "LED灯显示中，绿色代表状态有效,此时对应输出端口输出电平为低。"
      Height          =   375
      Left            =   960
      TabIndex        =   54
      Top             =   6480
      Width           =   3135
   End
   Begin VB.Label Label23 
      Caption         =   "说明：当选择外部输入时，低电平为有效电平。"
      Height          =   255
      Left            =   360
      TabIndex        =   43
      Top             =   6240
      Width           =   3855
   End
End
Attribute VB_Name = "单轴点位运动"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private MyCButtonNum As Integer    '定义控制电机运动的方式
Private My_CardNum As Integer     '定义卡的数量
Private My_nCard As Integer    '定义卡号

Private Sub MySetProfile()    '设置电机曲线
dmc_set_profile My_nCard, Val(MynAxis), Val(MyFirSpe), Val(MyRunSpe), Val(MySTacc), Val(MySTdec), Val(MyFirSpe)
dmc_set_s_profile My_nCard, Val(My_nAxis), 0, Val(MyTsacc)      '设置轴曲线参数
End Sub

Private Sub Form_Load()   '窗口装载函数
Dim My_CardList(7) As Integer '定义卡号数组
Dim My_CardTypeList(7) As Long   '定义卡类型数组
My_CardNum = dmc_board_init()                 '运动控制卡初始化
If My_CardNum <= 0 Or My_CardNum > 8 Then
    MsgBox "初始化运动控制卡失败！", , "初始化运动控制卡提示"
Else
    dmc_get_CardInfList My_CardNum, My_CardTypeList(0), My_CardList(0)        '获取正在使用的卡号
    My_nCard = My_CardList(0)
    MsgBox "初始化卡成功，当前选择的卡号为：" + Str(My_nCard), , "卡号选择提示"
    dmc_set_pulse_outmode My_nCard, Val(MynAxis), 0     '设置脉冲输出模式
    MySetProfile   '设置运动曲线
    dmc_write_outbit My_nCard, Val(MyForTurnOut), 1
    dmc_write_outbit My_nCard, Val(MyRevTurnOut), 1   '初始化输出端口电平
End If
MyCButton(1).Value = True
MyCButtonNum = 1   '初始化控制电机运动的方式为外部输入
End Sub

Private Sub Form_Unload(Cancel As Integer)  '窗口卸载函数
dmc_board_close    '关闭控制卡
End Sub

Private Sub MyCButton_Click(index As Integer)   '选择控制电机运动方式
MyCButtonNum = index  '选择控制电机运动的方式为外部IO输入
If MyCButtonNum = 1 Then  '判断选择的参数
    MyForTurn.Visible = False
    MyRevTurn.Visible = False   '隐藏按钮
Else
    MyForTurn.Visible = True
    MyRevTurn.Visible = True   '显示按钮
End If
End Sub

Private Sub MyDecStop_Click()  '电机停止按钮
dmc_stop My_nCard, Val(MynAxis), 1        '立即停止
End Sub

Private Sub MyExit_Click()      '退出程序按钮
dmc_board_close   '关闭控制卡
End
End Sub

Private Sub MyForTurn_Click()  '正转按钮
If (dmc_check_done(My_nCard, Val(MynAxis)) = 0) Then   '判断电机此时状态
    MsgBox "电机正在运动，请稍候再尝试！", , "电机运行提示"
Else
    MySetProfile    '设置电机曲线
    MyForTurnDir = 1  ' 此时为正转状态
    dmc_pmove My_nCard, Val(MynAxis), Val(MyRunDis), 0 '定长运动
    dmc_write_outbit My_nCard, Val(MyForTurnOut), 0 '对应端口输出低电平
    While (dmc_check_done(My_nCard, Val(MynAxis)) = 0)  '判断电机此时状态
        DoEvents
    Wend
    dmc_write_outbit My_nCard, Val(MyForTurnOut), 1  '对应端口输出高电平
End If
End Sub

Private Sub MyRevTurn_Click()  '反转按钮
If (dmc_check_done(My_nCard, Val(MynAxis)) = 0) Then   '判断电机此时状态
    MsgBox "电机正在运动，请稍候再尝试！", , "电机运行提示"
Else
    MySetProfile   '设置电机曲线
    MyRevTurnDir = 1   '此时为反转状态
    dmc_pmove My_nCard, Val(MynAxis), -Val(MyRunDis), 0 '定长运动
    dmc_write_outbit My_nCard, Val(MyRevTurnOut), 0 '对应端口输出低电平
    While (dmc_check_done(My_nCard, Val(MynAxis)) = 0)  '判断电机此时状态
        DoEvents
    Wend
    dmc_write_outbit My_nCard, Val(MyRevTurnOut), 1 '对应端口输出高电平
End If
End Sub

Private Sub MyResetPos_Click()  '位置清零按钮
dmc_set_position My_nCard, Val(MynAxis), 0    '设置原点
End Sub

Private Sub Timer1_Timer()   '定时器1函数
MyNowSpe = Str(dmc_read_current_speed(My_nCard, Val(MynAxis)))  '获取当前速度
MyNowPos = Str(dmc_get_position(My_nCard, Val(MynAxis)))    '获取当前位置
If (dmc_check_done(My_nCard, Val(MynAxis)) = 0) Then   '判断电机此时状态
    MyMStatus = "运行中"
Else
    MyMStatus = "停止中"
End If
If (dmc_read_outbit(My_nCard, Val(MyForTurnOut)) = 0) Then '读取正转显示输出端口
    MyForTurnLed.BackColor = RGB(0, 255, 0)    'LED灯显示为绿色
Else
    MyForTurnLed.BackColor = RGB(255, 0, 0)    'LED灯显示为红色
End If
If (dmc_read_outbit(My_nCard, Val(MyRevTurnOut)) = 0) Then '读取反转显示输出端口
    MyRevTurnLed.BackColor = RGB(0, 255, 0)    'LED灯显示为绿色
Else
    MyRevTurnLed.BackColor = RGB(255, 0, 0)    'LED灯显示为红色
End If
End Sub

Private Sub Timer2_Timer()    '定时器2函数
If (MyCButtonNum = 1) Then   '如果控制电机运动方式为外部IO输入
    If (dmc_read_inbit(My_nCard, Val(MyForTurnNum)) = False) Then  '判断此时控制正转的输入口电平是否为低
        MyForTurn_Click   '正转按钮函数
    ElseIf (dmc_read_inbit(My_nCard, Val(MyRevTurnNum)) = False) Then  '判断此时控制反转的输入口电平是否为低
        MyRevTurn_Click   '反转按钮函数
    End If
End If
End Sub
