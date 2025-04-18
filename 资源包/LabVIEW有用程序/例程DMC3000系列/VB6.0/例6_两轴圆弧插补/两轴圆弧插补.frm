VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "两轴圆弧插补"
   ClientHeight    =   5010
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5745
   LinkTopic       =   "Form1"
   ScaleHeight     =   5010
   ScaleWidth      =   5745
   StartUpPosition =   3  '窗口缺省
   Begin VB.Timer Timer1 
      Interval        =   50
      Left            =   3840
      Top             =   2880
   End
   Begin VB.CommandButton BUTTON_CLOSE 
      Caption         =   "退出"
      Height          =   495
      Left            =   2040
      TabIndex        =   4
      Top             =   2760
      Width           =   1335
   End
   Begin VB.CommandButton BUTTON_CLEAN 
      Caption         =   "位置清零"
      Height          =   495
      Left            =   3360
      TabIndex        =   3
      Top             =   1800
      Width           =   1335
   End
   Begin VB.CommandButton BUTTON_EMGSTOP 
      Caption         =   "急停"
      Height          =   495
      Left            =   840
      TabIndex        =   2
      Top             =   1800
      Width           =   1335
   End
   Begin VB.CommandButton BUTTON_DELSTOP 
      Caption         =   "立即停止"
      Height          =   495
      Left            =   3360
      TabIndex        =   1
      Top             =   720
      Width           =   1335
   End
   Begin VB.CommandButton BUTTON_MOVE 
      Caption         =   "启动"
      Height          =   495
      Left            =   840
      TabIndex        =   0
      Top             =   720
      Width           =   1335
   End
   Begin VB.Label Label_POSITION 
      BorderStyle     =   1  'Fixed Single
      Height          =   375
      Left            =   720
      TabIndex        =   5
      Top             =   3960
      Width           =   4455
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public m_UseCard As Integer         '当前使用的卡号

'位置清零
Private Sub BUTTON_CLEAN_Click()
  dmc_set_position m_UseCard, 0, 0
  dmc_set_position m_UseCard, 1, 0
  dmc_set_position m_UseCard, 2, 0
  dmc_set_position m_UseCard, 3, 0
End Sub

'关闭控制界面
Private Sub BUTTON_CLOSE_Click()
    dmc_board_close
    Unload Me
End Sub

'减速停止
Private Sub BUTTON_DELSTOP_Click()

    dmc_stop_multicoor m_UseCard, 0, 1     '立即停止

End Sub

'紧急停止
Private Sub BUTTON_EMGSTOP_Click()
   dmc_emg_stop m_UseCard
End Sub

'启动运行
Private Sub BUTTON_MOVE_Click()

    Dim CardNo As Integer
    Dim axis_array(1) As Integer
    Dim target_array(1) As Long
    Dim cen_array(1) As Long
    Dim Arc_Dir As Integer


    axis_array(0) = 0       '设定为0, 1轴圆弧插补
    axis_array(1) = 1
    target_array(0) = 4000
    target_array(1) = 0       '设定圆弧插补终点坐标
    cen_array(0) = 2000
    cen_array(1) = 0        '设定圆弧插补圆心坐标
    Arc_Dir = 0             '设定圆弧插补方向，顺时针

    
    dmc_set_vector_profile_multicoor m_UseCard, 0, 0, 1000, 0.1, 0, 0  '设置插补矢量速度、加速度
    dmc_arc_move_multicoor m_UseCard, 0, axis_array(0), target_array(0), cen_array(0), Arc_Dir, 0 '以当前点为起点，半径为2000 pulse,走一个半圆，相对模式
        
End Sub

Private Sub Form_Load()
    Dim My_CardNum As Integer     '定义卡数
    Dim My_CardList(7) As Integer '定义卡号数组
    Dim My_CardTypeList(7) As Long  '定义各卡类型
    
    My_CardNum = dmc_board_init()                  '控制卡的初始化操作，调用后必须使用d5480_board_close关闭卡。
                                            '中间不可再次调用该初始化函数。
    
    If (My_CardNum <= 0) Or (My_CardNum > 8) Then             '正常的卡数在1- 8之间
        MsgBox "初始化卡失败！", vbOKOnly, "出错"
    End If

    dmc_get_CardInfList My_CardNum, My_CardTypeList(0), My_CardList(0)  '获取正在使用的卡号列表
    m_UseCard = My_CardList(0)
    dmc_set_pulse_outmode m_UseCard, 0, 0   '设定脉冲输出模式
    dmc_set_pulse_outmode m_UseCard, 1, 0   '设定脉冲输出模式
    
End Sub

Private Sub Form_Unload(Cancel As Integer)  '释放系统分配给板卡的资源
    dmc_board_close
End Sub


'刷新位置
Private Sub Timer1_Timer()
   Dim pos As Long
   Dim str_DisplayPos As String
   Dim cardStatus As Boolean
   
   pos = dmc_get_position(m_UseCard, 0)         '显示位置信息
   str_DisplayPos = "X=" + Str(pos)
   pos = dmc_get_position(m_UseCard, 1)
   str_DisplayPos = str_DisplayPos + "   Y=" + Str(pos)
    pos = dmc_get_position(m_UseCard, 2)
   str_DisplayPos = str_DisplayPos + "   Z=" + Str(pos)
    pos = dmc_get_position(m_UseCard, 3)
   str_DisplayPos = str_DisplayPos + "  U=" + Str(pos)
   Label_POSITION.Caption = str_DisplayPos
End Sub
