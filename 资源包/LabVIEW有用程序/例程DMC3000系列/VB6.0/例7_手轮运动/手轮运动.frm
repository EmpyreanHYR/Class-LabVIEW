VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "手轮运动"
   ClientHeight    =   3615
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5685
   LinkTopic       =   "Form1"
   ScaleHeight     =   3615
   ScaleWidth      =   5685
   StartUpPosition =   3  '窗口缺省
   Begin VB.TextBox Text_dMulti 
      Height          =   375
      Left            =   2160
      TabIndex        =   13
      Text            =   "1"
      Top             =   2040
      Width           =   975
   End
   Begin VB.Timer Timer1 
      Interval        =   200
      Left            =   3360
      Top             =   3120
   End
   Begin VB.CommandButton BUTTON_CLOSE 
      Caption         =   "退出"
      Height          =   375
      Left            =   3840
      TabIndex        =   10
      Top             =   2760
      Width           =   1335
   End
   Begin VB.CommandButton BUTTON_STOP 
      Caption         =   "停止"
      Height          =   375
      Left            =   3840
      TabIndex        =   9
      Top             =   2040
      Width           =   1335
   End
   Begin VB.CommandButton BUTTON_MOVE 
      Caption         =   "启动"
      Height          =   375
      Left            =   3840
      TabIndex        =   8
      Top             =   1320
      Width           =   1335
   End
   Begin VB.Frame Frame2 
      Caption         =   "输入方式"
      Height          =   1335
      Left            =   1800
      TabIndex        =   5
      Top             =   240
      Width           =   1575
      Begin VB.OptionButton Option_InputMode2 
         Caption         =   "脉冲+方向"
         Height          =   255
         Left            =   240
         TabIndex        =   7
         Top             =   840
         Width           =   1215
      End
      Begin VB.OptionButton Option_InputMode1 
         Caption         =   "AB相"
         Height          =   255
         Left            =   240
         TabIndex        =   6
         Top             =   360
         Value           =   -1  'True
         Width           =   1095
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "轴号选择"
      Height          =   2175
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   1335
      Begin VB.OptionButton Option_Axis3 
         Caption         =   "U轴"
         Height          =   255
         Left            =   360
         TabIndex        =   4
         Top             =   1680
         Width           =   615
      End
      Begin VB.OptionButton Option_Axis2 
         Caption         =   "Z轴"
         Height          =   255
         Left            =   360
         TabIndex        =   3
         Top             =   1280
         Width           =   615
      End
      Begin VB.OptionButton Option_Axis1 
         Caption         =   "Y轴"
         Height          =   255
         Left            =   360
         TabIndex        =   2
         Top             =   880
         Width           =   615
      End
      Begin VB.OptionButton Option_Axis0 
         Caption         =   "X轴"
         Height          =   255
         Left            =   360
         TabIndex        =   1
         Top             =   480
         Value           =   -1  'True
         Width           =   615
      End
   End
   Begin VB.Label Label2 
      Caption         =   "手轮倍率："
      Height          =   255
      Left            =   1800
      TabIndex        =   12
      Top             =   1800
      Width           =   975
   End
   Begin VB.Label LABEL_POSITION 
      BorderStyle     =   1  'Fixed Single
      Enabled         =   0   'False
      Height          =   375
      Left            =   240
      TabIndex        =   11
      Top             =   2760
      Width           =   3135
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim ControlCard As Integer
Dim ControlAxis As Integer
Dim InputMode As Integer

Private Sub BUTTON_CLOSE_Click()
    dmc_board_close
    Unload Me
End Sub

Private Sub BUTTON_MOVE_Click()
    dmc_set_handwheel_inmode ControlCard, ControlAxis, InputMode, Val(Text_dMulti), 0   '设置单轴手轮运动控制输入方式
    dmc_handwheel_move ControlCard, ControlAxis        '启动手轮运动
End Sub

'急停
Private Sub BUTTON_STOP_Click()
    dmc_emg_stop ControlCard     '紧急停止
End Sub

Private Sub Form_Load()
    Dim My_CardNum As Integer     '定义卡数
    Dim My_CardList(7) As Integer '定义卡号数组
    Dim My_CardTypeList(7) As Long  '定义各卡类型
    
    My_CardNum = dmc_board_init()             '控制卡的初始化操作，调用后必须使用dmc_board_close关闭卡。
                                            '中间不可再次调用该初始化函数。
         
    If (My_CardNum <= 0) Or (My_CardNum > 8) Then              '正常的卡数在1- 8之间
        MsgBox "初始化控制卡失败！"
    End If
    
    dmc_get_CardInfList My_CardNum, My_CardTypeList(0), My_CardList(0)  '获取正在使用的卡号列表
    ControlCard = My_CardList(0)
    ControlAxis = 0
    InputMode = 0
End Sub

Private Sub Form_Unload(Cancel As Integer)
    dmc_board_close
End Sub

Private Sub Option_Axis0_Click()
   ControlAxis = 0
End Sub

Private Sub Option_Axis1_Click()
   ControlAxis = 1
End Sub

Private Sub Option_Axis2_Click()
   ControlAxis = 2
End Sub

Private Sub Option_Axis3_Click()
   ControlAxis = 3
End Sub

Private Sub Option_InputMode1_Click()
    InputMode = 0
End Sub

Private Sub Option_InputMode2_Click()
    InputMode = 1
End Sub

Private Sub Text_PULLimit_Change()
multi = Text_PULLimit.Text
End Sub

Private Sub Timer1_Timer()
  Dim pos As Long
  Dim str_DisplayPos As String
  Dim speed As Long
  
  pos = dmc_get_position(ControlCard, ControlAxis)
  str_DisplayPos = "当前轴脉冲位置=" + Str(pos)
  LABEL_POSITION.Caption = str_DisplayPos
  Debug.Print Str(pos)
  speed = dmc_read_current_speed(ControlCard, ControlAxis)
  Debug.Print "Speed" & Str(speed)
End Sub

