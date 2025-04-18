VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "直线插补"
   ClientHeight    =   5880
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5355
   LinkTopic       =   "Form1"
   ScaleHeight     =   5880
   ScaleWidth      =   5355
   StartUpPosition =   3  '窗口缺省
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   2640
      Top             =   4560
   End
   Begin VB.TextBox Text_POSITION 
      BackColor       =   &H8000000F&
      Height          =   375
      Left            =   360
      Locked          =   -1  'True
      TabIndex        =   25
      Top             =   5280
      Width           =   4575
   End
   Begin VB.CommandButton BUTTON_CLOSE 
      Caption         =   "退出"
      Height          =   375
      Left            =   4080
      TabIndex        =   24
      Top             =   4560
      Width           =   975
   End
   Begin VB.CommandButton BUTTON_CLEAN 
      Caption         =   "位置清零"
      Height          =   375
      Left            =   4080
      TabIndex        =   23
      Top             =   3960
      Width           =   975
   End
   Begin VB.CommandButton BUTTON_EMGSTOP 
      Caption         =   "急停"
      Height          =   375
      Left            =   2760
      TabIndex        =   22
      Top             =   3960
      Width           =   975
   End
   Begin VB.CommandButton BUTTON_DELSTOP 
      Caption         =   "减速停止"
      Height          =   375
      Left            =   4080
      TabIndex        =   21
      Top             =   3360
      Width           =   975
   End
   Begin VB.CommandButton BUTTON_MOVE 
      Caption         =   "执行"
      Height          =   375
      Left            =   2760
      TabIndex        =   20
      Top             =   3360
      Width           =   975
   End
   Begin VB.Frame Frame3 
      Caption         =   "运动方式"
      Height          =   1695
      Left            =   360
      TabIndex        =   16
      Top             =   3240
      Width           =   2175
      Begin VB.OptionButton MOVE_XYZU 
         Caption         =   "XYZU轴"
         Height          =   255
         Left            =   600
         TabIndex        =   19
         Top             =   1200
         Width           =   975
      End
      Begin VB.OptionButton MOVE_XYZ 
         Caption         =   "XYZ轴"
         Height          =   375
         Left            =   600
         TabIndex        =   18
         Top             =   720
         Width           =   975
      End
      Begin VB.OptionButton MOVE_XY 
         Caption         =   "XY轴"
         Height          =   255
         Left            =   600
         TabIndex        =   17
         Top             =   360
         Value           =   -1  'True
         Width           =   975
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "插补参数"
      Height          =   2295
      Left            =   2880
      TabIndex        =   9
      Top             =   480
      Width           =   2295
      Begin VB.TextBox Text_STATUS 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   1080
         Locked          =   -1  'True
         TabIndex        =   26
         Text            =   "停止中"
         Top             =   840
         Width           =   975
      End
      Begin VB.TextBox Text_ACC 
         Height          =   270
         Left            =   1080
         TabIndex        =   15
         Text            =   "0.01"
         Top             =   1800
         Width           =   975
      End
      Begin VB.TextBox Text_RUNSPD 
         Height          =   270
         Left            =   1080
         TabIndex        =   14
         Text            =   "2000"
         Top             =   1320
         Width           =   975
      End
      Begin VB.TextBox Text_Crd 
         Height          =   270
         Left            =   840
         TabIndex        =   13
         Text            =   "0"
         Top             =   360
         Width           =   615
      End
      Begin VB.Label Label1 
         Caption         =   "(0-1)"
         Height          =   255
         Left            =   1560
         TabIndex        =   28
         Top             =   360
         Width           =   495
      End
      Begin VB.Label Label9 
         Caption         =   "坐标系状态"
         Height          =   255
         Left            =   120
         TabIndex        =   27
         Top             =   840
         Width           =   975
      End
      Begin VB.Label Label8 
         Caption         =   "加减速时间"
         Height          =   255
         Left            =   120
         TabIndex        =   12
         Top             =   1800
         Width           =   975
      End
      Begin VB.Label Label7 
         Caption         =   "最大速度"
         Height          =   255
         Left            =   120
         TabIndex        =   11
         Top             =   1320
         Width           =   735
      End
      Begin VB.Label Label6 
         Caption         =   "坐标系"
         Height          =   255
         Left            =   120
         TabIndex        =   10
         Top             =   360
         Width           =   735
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "运动位移"
      Height          =   2295
      Left            =   360
      TabIndex        =   0
      Top             =   480
      Width           =   2175
      Begin VB.TextBox Text_UPOS 
         Height          =   270
         Left            =   840
         TabIndex        =   8
         Text            =   "6400"
         Top             =   1800
         Width           =   975
      End
      Begin VB.TextBox Text_ZPOS 
         Height          =   270
         Left            =   840
         TabIndex        =   7
         Text            =   "6400"
         Top             =   1320
         Width           =   975
      End
      Begin VB.TextBox Text_YPOS 
         Height          =   270
         Left            =   840
         TabIndex        =   6
         Text            =   "6400"
         Top             =   840
         Width           =   975
      End
      Begin VB.TextBox Text_XPOS 
         Height          =   270
         Left            =   840
         TabIndex        =   5
         Text            =   "6400"
         Top             =   360
         Width           =   975
      End
      Begin VB.Label Label5 
         Caption         =   "U轴"
         Height          =   255
         Left            =   360
         TabIndex        =   4
         Top             =   1800
         Width           =   375
      End
      Begin VB.Label Label4 
         Caption         =   "Z轴"
         Height          =   255
         Left            =   360
         TabIndex        =   3
         Top             =   1320
         Width           =   375
      End
      Begin VB.Label Label3 
         Caption         =   "Y轴"
         Height          =   255
         Left            =   360
         TabIndex        =   2
         Top             =   840
         Width           =   375
      End
      Begin VB.Label Label2 
         Caption         =   "X轴"
         Height          =   255
         Left            =   360
         TabIndex        =   1
         Top             =   360
         Width           =   375
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim Move_CARD As Integer
Dim Move_Crd As Integer
Dim Move_AXISNUM As Integer
Dim Move_mode As Integer

Private Sub BUTTON_CLEAN_Click()
  dmc_set_position Move_CARD, 0, 0
  dmc_set_position Move_CARD, 1, 0
  dmc_set_position Move_CARD, 2, 0
  dmc_set_position Move_CARD, 3, 0
End Sub

Private Sub BUTTON_CLOSE_Click()    '关闭控制界面
    dmc_board_close
    Unload Me
End Sub

Private Sub BUTTON_DELSTOP_Click()   '减速停
    Dim m_nCrd As Integer
    m_nCrd = Val(Text_Crd.Text)
    dmc_stop_multicoor Move_CARD, m_nCrd, 0
End Sub

Private Sub BUTTON_EMGSTOP_Click()  '紧急停止
   dmc_emg_stop Move_CARD
End Sub

'启动运行
Private Sub BUTTON_MOVE_Click()
    Dim fSpeed As Double
    Dim fTAcc As Double
    Dim AxisArray(4) As Integer
    Dim PosArray(4) As Long
    fSpeed = Val(Text_RUNSPD.Text)
    Move_mode = 0  '定义为相对运动模式
    fTAcc = Val(Text_ACC.Text)
    
    AxisArray(0) = 0
    AxisArray(1) = 1
    AxisArray(2) = 2
    AxisArray(3) = 3            '设定轴号, 2－4轴指定
    
    PosArray(0) = Val(Text_XPOS.Text)
    PosArray(1) = Val(Text_YPOS.Text)
    PosArray(2) = Val(Text_ZPOS.Text)
    PosArray(3) = Val(Text_UPOS.Text)
    
    dmc_set_vector_profile_multicoor Move_CARD, Move_Crd, 0, fSpeed, fTAcc, 0, 0  '设置插补矢量速度、加速度
    dmc_line_multicoor Move_CARD, Move_Crd, Move_AXISNUM, AxisArray(0), PosArray(0), Move_mode   '直线插补运动
    
        
End Sub


Private Sub Form_Load()
    Dim My_CardNum As Integer     '定义卡数
    Dim My_CardList(7) As Integer '定义卡号数组
    Dim My_CardTypeList(7) As Long  '定义各卡类型
    
    My_CardNum = dmc_board_init()             '控制卡的初始化操作，调用后必须使用dmc_board_close关闭卡。
                                            '中间不可再次调用该初始化函数。
    
    If (My_CardNum <= 0) Or (My_CardNum > 8) Then              '正常的卡数在1- 8之间
        MsgBox "初始化控制卡失败！", vbOKOnly, "出错"
    End If
    
    dmc_get_CardInfList My_CardNum, My_CardTypeList(0), My_CardList(0)  '获取正在使用的卡号列表
    Move_CARD = My_CardList(0)
    Move_Crd = 0
    Move_AXISNUM = 2                   '默认为2轴插补
    dmc_set_pulse_outmode Move_CARD, 0, 0   '设定脉冲输出模式
    dmc_set_pulse_outmode Move_CARD, 1, 0   '设定脉冲输出模式
    dmc_set_pulse_outmode Move_CARD, 2, 0
    dmc_set_pulse_outmode Move_CARD, 3, 0

End Sub

Private Sub Form_Unload(Cancel As Integer)  '释放系统分配给板卡的资源
    dmc_board_close
End Sub

Private Sub MOVE_XY_Click()    'XY轴直线插补
   Move_AXISNUM = 2
End Sub

Private Sub MOVE_XYZ_Click()   'XYZ轴直线插补
   Move_AXISNUM = 3
End Sub

Private Sub MOVE_XYZU_Click()  'XYZU轴直线插补
   Move_AXISNUM = 4
End Sub

Private Sub Text_Crd_Change()
    Move_Crd = Val(Text_Crd.Text)
End Sub

Private Sub Timer1_Timer()
   Dim pos As Long
   Dim str_DisplayPos As String
   Dim cardStatus As Integer
   
   pos = dmc_get_position(Move_CARD, 0)       '显示位置信息
   str_DisplayPos = "X=" + Str(pos)
   pos = dmc_get_position(Move_CARD, 1)
   str_DisplayPos = str_DisplayPos + "   Y=" + Str(pos)
    pos = dmc_get_position(Move_CARD, 2)
   str_DisplayPos = str_DisplayPos + "   Z=" + Str(pos)
    pos = dmc_get_position(Move_CARD, 3)
   str_DisplayPos = str_DisplayPos + "  U=" + Str(pos)
   Text_POSITION.Text = str_DisplayPos
   cardStatus = dmc_check_done_multicoor(Move_CARD, Move_Crd)
   If cardStatus Then
     Text_STATUS.Text = "停止中"    '显示运行情况
   Else
     Text_STATUS.Text = "运行中"
   End If

End Sub

