VERSION 5.00
Begin VB.Form FormMain 
   Caption         =   "定长运动"
   ClientHeight    =   4950
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5805
   LinkTopic       =   "Form1"
   ScaleHeight     =   4950
   ScaleWidth      =   5805
   StartUpPosition =   2  '屏幕中心
   Begin VB.CommandButton BUTTON_RESETPOS 
      Caption         =   "在线变位"
      Height          =   495
      Left            =   4200
      TabIndex        =   27
      Top             =   3120
      Width           =   1215
   End
   Begin VB.CommandButton BUTTON_CHANGESPEED 
      Caption         =   "在线变速"
      Height          =   495
      Left            =   2400
      TabIndex        =   26
      Top             =   3120
      Width           =   1215
   End
   Begin VB.CommandButton BUTTON_ImdStop 
      Caption         =   "立即停止"
      Height          =   495
      Left            =   2400
      TabIndex        =   23
      Top             =   3720
      Width           =   1215
   End
   Begin VB.CommandButton BUTTON_CLEAN 
      Caption         =   "位置清零"
      Height          =   495
      Left            =   480
      TabIndex        =   12
      Top             =   3120
      Width           =   1215
   End
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   2400
      Top             =   2520
   End
   Begin VB.CommandButton BUTTON_CLOSE 
      Caption         =   "退出"
      Height          =   495
      Left            =   4200
      TabIndex        =   9
      Top             =   3720
      Width           =   1215
   End
   Begin VB.CommandButton BUTTON_DELSTOP 
      Caption         =   "减速停止"
      Height          =   495
      Left            =   480
      TabIndex        =   7
      Top             =   3720
      Width           =   1215
   End
   Begin VB.CommandButton BUTTON_MOVE 
      Caption         =   "启动"
      Height          =   495
      Left            =   480
      TabIndex        =   6
      Top             =   2520
      Width           =   1215
   End
   Begin VB.Frame Frame2 
      Caption         =   "运动轴"
      Height          =   1215
      Left            =   480
      TabIndex        =   5
      Top             =   840
      Width           =   2055
      Begin VB.OptionButton OptionMoveAxis 
         Caption         =   "U轴"
         Height          =   255
         Index           =   3
         Left            =   1080
         TabIndex        =   18
         Top             =   720
         Width           =   615
      End
      Begin VB.OptionButton OptionMoveAxis 
         Caption         =   "Z轴"
         Height          =   255
         Index           =   2
         Left            =   240
         TabIndex        =   17
         Top             =   720
         Width           =   615
      End
      Begin VB.OptionButton OptionMoveAxis 
         Caption         =   "Y轴"
         Height          =   255
         Index           =   1
         Left            =   1080
         TabIndex        =   16
         Top             =   360
         Width           =   615
      End
      Begin VB.OptionButton OptionMoveAxis 
         Caption         =   "X轴"
         Height          =   255
         Index           =   0
         Left            =   240
         TabIndex        =   15
         Top             =   360
         Width           =   615
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "运动参数"
      Height          =   2535
      Left            =   3000
      TabIndex        =   0
      Top             =   240
      Width           =   2415
      Begin VB.TextBox Text_TDEC 
         Height          =   270
         Left            =   1080
         TabIndex        =   24
         Text            =   "0.1"
         Top             =   1800
         Width           =   1095
      End
      Begin VB.TextBox Text_STARTSPD 
         Height          =   285
         Left            =   1080
         TabIndex        =   21
         Text            =   "500"
         Top             =   360
         Width           =   1095
      End
      Begin VB.TextBox Text_STOPSPD 
         Height          =   285
         Left            =   1080
         TabIndex        =   19
         Text            =   "100"
         Top             =   1050
         Width           =   1095
      End
      Begin VB.TextBox Text_Dist 
         Height          =   270
         Left            =   1080
         TabIndex        =   13
         Text            =   "64000"
         Top             =   2160
         Width           =   1095
      End
      Begin VB.TextBox Text_TACC 
         Height          =   270
         Left            =   1080
         TabIndex        =   4
         Text            =   "0.1"
         Top             =   1440
         Width           =   1095
      End
      Begin VB.TextBox Text_RUNSPD 
         Height          =   270
         Left            =   1080
         TabIndex        =   2
         Text            =   "1000"
         Top             =   720
         Width           =   1095
      End
      Begin VB.Label Label6 
         Caption         =   "减速时间"
         Height          =   255
         Left            =   240
         TabIndex        =   25
         Top             =   1800
         Width           =   735
      End
      Begin VB.Label Label3 
         Caption         =   "起始速度"
         Height          =   255
         Left            =   240
         TabIndex        =   22
         Top             =   360
         Width           =   735
      End
      Begin VB.Label Label2 
         Caption         =   "停止速度"
         Height          =   255
         Left            =   240
         TabIndex        =   20
         Top             =   1080
         Width           =   735
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "运动距离"
         Height          =   195
         Left            =   240
         TabIndex        =   14
         Top             =   2160
         Width           =   720
      End
      Begin VB.Label Label5 
         Caption         =   "加速时间"
         Height          =   255
         Left            =   240
         TabIndex        =   3
         Top             =   1440
         Width           =   735
      End
      Begin VB.Label Label4 
         Caption         =   "运行速度"
         Height          =   255
         Left            =   240
         TabIndex        =   1
         Top             =   720
         Width           =   855
      End
   End
   Begin VB.Label Lable_STATUS 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "停止中"
      Height          =   255
      Left            =   1440
      TabIndex        =   11
      Top             =   360
      Width           =   1095
   End
   Begin VB.Label Label_POSITION 
      BorderStyle     =   1  'Fixed Single
      Height          =   375
      Left            =   360
      TabIndex        =   10
      Top             =   4440
      Width           =   5055
   End
   Begin VB.Label Label8 
      Caption         =   "运动状态"
      Height          =   255
      Left            =   480
      TabIndex        =   8
      Top             =   360
      Width           =   735
   End
End
Attribute VB_Name = "FormMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public m_UseCard As Integer         '当前使用的卡号
Public m_UseAxis As Integer         '当前使用的轴号

Private Sub BUTTON_CHANGESPEED_Click()
    Dim m_nSpeed As Double
    m_nSpeed = Val(Text_RUNSPD.Text)
    dmc_change_speed m_UseCard, m_UseAxis, m_nSpeed, 0    '在线变速
End Sub

'位置清零
Private Sub BUTTON_CLEAN_Click()
  dmc_set_position m_UseCard, m_UseAxis, 0     '位置清零
End Sub

'关闭控制界面
Private Sub BUTTON_CLOSE_Click()
    dmc_board_close
    Unload Me
End Sub

'减速停
Private Sub BUTTON_DELSTOP_Click()
    dmc_stop m_UseCard, m_UseAxis, 0     '减速停止
End Sub

'紧急停止
Private Sub BUTTON_ImdStop_Click()
    dmc_stop m_UseCard, m_UseAxis, 1    '立即停止
End Sub

'启动运行
Private Sub BUTTON_MOVE_Click()
    Dim m_nStart As Double
    Dim m_nSpeed As Double
    Dim m_nStop As Double
    Dim m_nTAcc As Double
    Dim m_nTDec As Double
    Dim m_nDist As Long
    m_nStart = Val(Text_STARTSPD.Text)
    m_nSpeed = Val(Text_RUNSPD.Text)
    m_nStop = Val(Text_STOPSPD.Text)
    m_nTAcc = Val(Text_TACC.Text)
    m_nTDec = Val(Text_TDEC.Text)
    m_nDist = Val(Text_Dist.Text)
    dmc_set_s_profile m_UseCard, m_UseAxis, 0, 0.01    '设置S段时间（0-0.05s)
    dmc_set_profile m_UseCard, m_UseAxis, m_nStart, m_nSpeed, m_nTAcc, m_nTDec, m_nStop
          '设置起始速度、运行速度、停止速度、加速时间、减速时间
    dmc_pmove m_UseCard, m_UseAxis, m_nDist, 0     '定长运动
End Sub

Private Sub BUTTON_RESETPOS_Click()
    Dim m_nDist As Long
    m_nDist = Val(Text_Dist.Text)
    dmc_reset_target_position m_UseCard, m_UseAxis, m_nDist, 0    '在线变位到一个绝对位置
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
    m_UseCard = My_CardList(0)
    m_UseAxis = 0                           '默认选择X轴
    OptionMoveAxis(0).Value = True

    dmc_set_pulse_outmode m_UseCard, m_UseAxis, 0    '设定脉冲输出模式
 
    
End Sub

Private Sub Form_Unload(Cancel As Integer)  '释放系统分配给板卡的资源
    dmc_board_close
End Sub

'选择轴号
Private Sub OptionMoveAxis_Click(index As Integer)
    m_UseAxis = index
End Sub


'刷新位置
Private Sub Timer1_Timer()
   Dim pos As Long
   Dim str_DisplayPos As String
   Dim cardStatus As Boolean
   
   pos = dmc_read_current_speed(m_UseCard, m_UseAxis)            '显示位置信息
   str_DisplayPos = "Speed =" + Str(pos)
   
   
   pos = dmc_get_position(m_UseCard, 0)       '显示位置信息
   str_DisplayPos = str_DisplayPos + "  X=" + Str(pos)
   pos = dmc_get_position(m_UseCard, 1)
   str_DisplayPos = str_DisplayPos + "  Y=" + Str(pos)
   pos = dmc_get_position(m_UseCard, 2)
   str_DisplayPos = str_DisplayPos + "  Z=" + Str(pos)
   pos = dmc_get_position(m_UseCard, 3)
   str_DisplayPos = str_DisplayPos + "  U=" + Str(pos)
   Label_POSITION.Caption = str_DisplayPos
   
   cardStatus = (1 = dmc_check_done(m_UseCard, 0)) And (1 = dmc_check_done(m_UseCard, 1)) And (1 = dmc_check_done(m_UseCard, 2)) And (1 = dmc_check_done(m_UseCard, 3))
   If cardStatus Then                   '显示运行情况
     Lable_STATUS.Caption = "停止"
   Else
     Lable_STATUS.Caption = "运行"
   End If

End Sub

