VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "通用专用输入输出"
   ClientHeight    =   6165
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   9930
   LinkTopic       =   "Form1"
   ScaleHeight     =   6165
   ScaleWidth      =   9930
   StartUpPosition =   3  '窗口缺省
   Begin VB.Frame Frame5 
      Height          =   1095
      Left            =   1920
      TabIndex        =   52
      Top             =   4680
      Width           =   7575
      Begin VB.Label Label7 
         Caption         =   "无效"
         Height          =   255
         Left            =   3840
         TabIndex        =   59
         Top             =   765
         Width           =   375
      End
      Begin VB.Label Label6 
         Caption         =   "有效"
         Height          =   255
         Left            =   2400
         TabIndex        =   58
         Top             =   760
         Width           =   495
      End
      Begin VB.Shape Shape5 
         BackColor       =   &H000000FF&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H000000FF&
         Height          =   255
         Left            =   3360
         Shape           =   3  'Circle
         Top             =   720
         Width           =   255
      End
      Begin VB.Shape Shape4 
         BackColor       =   &H0000FF00&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H0000FF00&
         Height          =   255
         Left            =   1920
         Shape           =   3  'Circle
         Top             =   720
         Width           =   255
      End
      Begin VB.Label Label5 
         Caption         =   "无效"
         Height          =   255
         Left            =   5160
         TabIndex        =   57
         Top             =   285
         Width           =   495
      End
      Begin VB.Shape Shape3 
         BackColor       =   &H0000FFFF&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H0000FFFF&
         Height          =   255
         Left            =   4800
         Shape           =   3  'Circle
         Top             =   240
         Width           =   255
      End
      Begin VB.Label Label4 
         Caption         =   "高电平"
         Height          =   255
         Left            =   3720
         TabIndex        =   56
         Top             =   285
         Width           =   615
      End
      Begin VB.Shape Shape2 
         BackColor       =   &H000000FF&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H000000FF&
         Height          =   255
         Left            =   3360
         Shape           =   3  'Circle
         Top             =   240
         Width           =   255
      End
      Begin VB.Label Label3 
         Caption         =   "低电平"
         Height          =   255
         Left            =   2280
         TabIndex        =   55
         Top             =   285
         Width           =   615
      End
      Begin VB.Shape Shape1 
         BackColor       =   &H0000FF00&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H0000FF00&
         Height          =   255
         Left            =   1920
         Shape           =   3  'Circle
         Top             =   240
         Width           =   255
      End
      Begin VB.Label Label2 
         Caption         =   "专用信号状态显示："
         Height          =   255
         Left            =   120
         TabIndex        =   54
         Top             =   720
         Width           =   1815
      End
      Begin VB.Label Label1 
         Caption         =   "通用状态电平显示："
         Height          =   255
         Left            =   120
         TabIndex        =   53
         Top             =   240
         Width           =   1695
      End
   End
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   0
      Top             =   3480
   End
   Begin VB.Frame Frame4 
      Caption         =   "专用信号"
      Height          =   975
      Left            =   1920
      TabIndex        =   47
      Top             =   3600
      Width           =   7575
      Begin VB.Label S_INP 
         Alignment       =   2  'Center
         BackColor       =   &H8000000E&
         Caption         =   "INP"
         Height          =   255
         Left            =   5400
         TabIndex        =   72
         Top             =   480
         Width           =   615
      End
      Begin VB.Label S_PSL 
         Alignment       =   2  'Center
         BackColor       =   &H8000000E&
         Caption         =   "SL+"
         Height          =   255
         Left            =   3960
         TabIndex        =   71
         Top             =   480
         Width           =   615
      End
      Begin VB.Label S_NSL 
         Alignment       =   2  'Center
         BackColor       =   &H8000000E&
         Caption         =   "SL-"
         Height          =   255
         Left            =   4680
         TabIndex        =   70
         Top             =   480
         Width           =   615
      End
      Begin VB.Label S_EMG 
         Alignment       =   2  'Center
         BackColor       =   &H8000000E&
         Caption         =   "EMG"
         Height          =   255
         Left            =   2520
         TabIndex        =   69
         Top             =   480
         Width           =   615
      End
      Begin VB.Label S_ALM 
         Alignment       =   2  'Center
         BackColor       =   &H8000000E&
         Caption         =   "ALM"
         Height          =   255
         Left            =   360
         TabIndex        =   68
         Top             =   480
         Width           =   615
      End
      Begin VB.Label Label_sevon 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "SEVON"
         Height          =   255
         Left            =   6480
         TabIndex        =   51
         Top             =   480
         Width           =   615
      End
      Begin VB.Label S_ORG 
         Alignment       =   2  'Center
         BackColor       =   &H8000000E&
         Caption         =   "Home"
         Height          =   255
         Left            =   3240
         TabIndex        =   50
         Top             =   480
         Width           =   615
      End
      Begin VB.Label S_NEL 
         Alignment       =   2  'Center
         BackColor       =   &H8000000E&
         Caption         =   "EL-"
         Height          =   255
         Left            =   1800
         TabIndex        =   49
         Top             =   480
         Width           =   615
      End
      Begin VB.Label S_PEL 
         Alignment       =   2  'Center
         BackColor       =   &H8000000E&
         Caption         =   "EL+"
         Height          =   255
         Left            =   1080
         TabIndex        =   48
         Top             =   480
         Width           =   615
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "驱动轴选择"
      Height          =   2055
      Left            =   360
      TabIndex        =   42
      Top             =   3720
      Width           =   1335
      Begin VB.OptionButton RADIO_U 
         Caption         =   "U轴"
         Height          =   255
         Left            =   360
         TabIndex        =   46
         Top             =   1560
         Width           =   615
      End
      Begin VB.OptionButton RADIO_Z 
         Caption         =   "Z轴"
         Height          =   180
         Left            =   360
         TabIndex        =   45
         Top             =   1200
         Width           =   615
      End
      Begin VB.OptionButton RADIO_Y 
         Caption         =   "Y轴"
         Height          =   255
         Left            =   360
         TabIndex        =   44
         Top             =   840
         Width           =   615
      End
      Begin VB.OptionButton RADIO_AXISST 
         Caption         =   "X轴"
         Height          =   255
         Left            =   360
         TabIndex        =   43
         Top             =   480
         Value           =   -1  'True
         Width           =   615
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "通用输出口(1-24)"
      Height          =   1575
      Left            =   360
      TabIndex        =   1
      Top             =   1920
      Width           =   9135
      Begin VB.Label Label_OUT 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "23"
         Height          =   255
         Index           =   23
         Left            =   8280
         TabIndex        =   67
         Top             =   1080
         Width           =   495
      End
      Begin VB.Label Label_OUT 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "22"
         Height          =   255
         Index           =   22
         Left            =   7560
         TabIndex        =   66
         Top             =   1080
         Width           =   495
      End
      Begin VB.Label Label_OUT 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "21"
         Height          =   255
         Index           =   21
         Left            =   6840
         TabIndex        =   65
         Top             =   1080
         Width           =   495
      End
      Begin VB.Label Label_OUT 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "20"
         Height          =   255
         Index           =   20
         Left            =   6120
         TabIndex        =   64
         Top             =   1080
         Width           =   495
      End
      Begin VB.Label Label_OUT 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "19"
         Height          =   255
         Index           =   19
         Left            =   5400
         TabIndex        =   41
         Top             =   1080
         Width           =   495
      End
      Begin VB.Label Label_OUT 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "9"
         Height          =   255
         Index           =   9
         Left            =   6840
         TabIndex        =   40
         Top             =   480
         Width           =   495
      End
      Begin VB.Label Label_OUT 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "18"
         Height          =   255
         Index           =   18
         Left            =   4680
         TabIndex        =   39
         Top             =   1080
         Width           =   495
      End
      Begin VB.Label Label_OUT 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "8"
         Height          =   255
         Index           =   8
         Left            =   6120
         TabIndex        =   38
         Top             =   480
         Width           =   495
      End
      Begin VB.Label Label_OUT 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "17"
         Height          =   255
         Index           =   17
         Left            =   3960
         TabIndex        =   37
         Top             =   1080
         Width           =   495
      End
      Begin VB.Label Label_OUT 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "7"
         Height          =   255
         Index           =   7
         Left            =   5400
         TabIndex        =   36
         Top             =   480
         Width           =   495
      End
      Begin VB.Label Label_OUT 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "16"
         Height          =   255
         Index           =   16
         Left            =   3240
         TabIndex        =   35
         Top             =   1080
         Width           =   495
      End
      Begin VB.Label Label_OUT 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "6"
         Height          =   255
         Index           =   6
         Left            =   4680
         TabIndex        =   34
         Top             =   480
         Width           =   495
      End
      Begin VB.Label Label_OUT 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "15"
         Height          =   255
         Index           =   15
         Left            =   2520
         TabIndex        =   33
         Top             =   1080
         Width           =   495
      End
      Begin VB.Label Label_OUT 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "5"
         Height          =   255
         Index           =   5
         Left            =   3960
         TabIndex        =   32
         Top             =   480
         Width           =   495
      End
      Begin VB.Label Label_OUT 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "14"
         Height          =   255
         Index           =   14
         Left            =   1800
         TabIndex        =   31
         Top             =   1080
         Width           =   495
      End
      Begin VB.Label Label_OUT 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "4"
         Height          =   255
         Index           =   4
         Left            =   3240
         TabIndex        =   30
         Top             =   480
         Width           =   495
      End
      Begin VB.Label Label_OUT 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "13"
         Height          =   255
         Index           =   13
         Left            =   1080
         TabIndex        =   29
         Top             =   1080
         Width           =   495
      End
      Begin VB.Label Label_OUT 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "3"
         Height          =   255
         Index           =   3
         Left            =   2520
         TabIndex        =   28
         Top             =   480
         Width           =   495
      End
      Begin VB.Label Label_OUT 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "12"
         Height          =   255
         Index           =   12
         Left            =   360
         TabIndex        =   27
         Top             =   1080
         Width           =   495
      End
      Begin VB.Label Label_OUT 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "2"
         Height          =   255
         Index           =   2
         Left            =   1800
         TabIndex        =   26
         Top             =   480
         Width           =   495
      End
      Begin VB.Label Label_OUT 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "11"
         Height          =   255
         Index           =   11
         Left            =   8280
         TabIndex        =   25
         Top             =   480
         Width           =   495
      End
      Begin VB.Label Label_OUT 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "1"
         Height          =   255
         Index           =   1
         Left            =   1080
         TabIndex        =   24
         Top             =   480
         Width           =   495
      End
      Begin VB.Label Label_OUT 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "10"
         Height          =   255
         Index           =   10
         Left            =   7560
         TabIndex        =   23
         Top             =   480
         Width           =   495
      End
      Begin VB.Label Label_OUT 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         Height          =   255
         Index           =   0
         Left            =   360
         TabIndex        =   22
         Top             =   480
         Width           =   495
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "通用输入口(1-24)"
      Height          =   1575
      Left            =   360
      TabIndex        =   0
      Top             =   120
      Width           =   9135
      Begin VB.Label Label_IN 
         Alignment       =   2  'Center
         BackColor       =   &H00FFFFFF&
         Caption         =   "23"
         Height          =   255
         Index           =   23
         Left            =   8280
         TabIndex        =   63
         Top             =   960
         Width           =   495
      End
      Begin VB.Label Label_IN 
         Alignment       =   2  'Center
         BackColor       =   &H00FFFFFF&
         Caption         =   "22"
         Height          =   255
         Index           =   22
         Left            =   7560
         TabIndex        =   62
         Top             =   960
         Width           =   495
      End
      Begin VB.Label Label_IN 
         Alignment       =   2  'Center
         BackColor       =   &H00FFFFFF&
         Caption         =   "21"
         Height          =   255
         Index           =   21
         Left            =   6840
         TabIndex        =   61
         Top             =   960
         Width           =   495
      End
      Begin VB.Label Label_IN 
         Alignment       =   2  'Center
         BackColor       =   &H00FFFFFF&
         Caption         =   "20"
         Height          =   255
         Index           =   20
         Left            =   6120
         TabIndex        =   60
         Top             =   960
         Width           =   495
      End
      Begin VB.Label Label_IN 
         Alignment       =   2  'Center
         BackColor       =   &H8000000E&
         Caption         =   "19"
         Height          =   255
         Index           =   19
         Left            =   5400
         TabIndex        =   21
         Top             =   960
         Width           =   495
      End
      Begin VB.Label Label_IN 
         Alignment       =   2  'Center
         BackColor       =   &H8000000E&
         Caption         =   "18"
         Height          =   255
         Index           =   18
         Left            =   4680
         TabIndex        =   20
         Top             =   960
         Width           =   495
      End
      Begin VB.Label Label_IN 
         Alignment       =   2  'Center
         BackColor       =   &H8000000E&
         Caption         =   "17"
         Height          =   255
         Index           =   17
         Left            =   3960
         TabIndex        =   19
         Top             =   960
         Width           =   495
      End
      Begin VB.Label Label_IN 
         Alignment       =   2  'Center
         BackColor       =   &H8000000E&
         Caption         =   "16"
         Height          =   255
         Index           =   16
         Left            =   3240
         TabIndex        =   18
         Top             =   960
         Width           =   495
      End
      Begin VB.Label Label_IN 
         Alignment       =   2  'Center
         BackColor       =   &H8000000E&
         Caption         =   "15"
         Height          =   255
         Index           =   15
         Left            =   2520
         TabIndex        =   17
         Top             =   960
         Width           =   495
      End
      Begin VB.Label Label_IN 
         Alignment       =   2  'Center
         BackColor       =   &H8000000E&
         Caption         =   "14"
         Height          =   255
         Index           =   14
         Left            =   1800
         TabIndex        =   16
         Top             =   960
         Width           =   495
      End
      Begin VB.Label Label_IN 
         Alignment       =   2  'Center
         BackColor       =   &H8000000E&
         Caption         =   "13"
         Height          =   255
         Index           =   13
         Left            =   1080
         TabIndex        =   15
         Top             =   960
         Width           =   495
      End
      Begin VB.Label Label_IN 
         Alignment       =   2  'Center
         BackColor       =   &H8000000E&
         Caption         =   "12"
         Height          =   255
         Index           =   12
         Left            =   360
         TabIndex        =   14
         Top             =   960
         Width           =   495
      End
      Begin VB.Label Label_IN 
         Alignment       =   2  'Center
         BackColor       =   &H8000000E&
         Caption         =   "11"
         Height          =   255
         Index           =   11
         Left            =   8280
         TabIndex        =   13
         Top             =   360
         Width           =   495
      End
      Begin VB.Label Label_IN 
         Alignment       =   2  'Center
         BackColor       =   &H8000000E&
         Caption         =   "10"
         Height          =   255
         Index           =   10
         Left            =   7560
         TabIndex        =   12
         Top             =   360
         Width           =   495
      End
      Begin VB.Label Label_IN 
         Alignment       =   2  'Center
         BackColor       =   &H8000000E&
         Caption         =   "9"
         Height          =   255
         Index           =   9
         Left            =   6840
         TabIndex        =   11
         Top             =   360
         Width           =   495
      End
      Begin VB.Label Label_IN 
         Alignment       =   2  'Center
         BackColor       =   &H8000000E&
         Caption         =   "8"
         Height          =   255
         Index           =   8
         Left            =   6120
         TabIndex        =   10
         Top             =   360
         Width           =   495
      End
      Begin VB.Label Label_IN 
         Alignment       =   2  'Center
         BackColor       =   &H8000000E&
         Caption         =   "7"
         Height          =   255
         Index           =   7
         Left            =   5400
         TabIndex        =   9
         Top             =   360
         Width           =   495
      End
      Begin VB.Label Label_IN 
         Alignment       =   2  'Center
         BackColor       =   &H8000000E&
         Caption         =   "6"
         Height          =   255
         Index           =   6
         Left            =   4680
         TabIndex        =   8
         Top             =   360
         Width           =   495
      End
      Begin VB.Label Label_IN 
         Alignment       =   2  'Center
         BackColor       =   &H8000000E&
         Caption         =   "5"
         Height          =   255
         Index           =   5
         Left            =   3960
         TabIndex        =   7
         Top             =   360
         Width           =   495
      End
      Begin VB.Label Label_IN 
         Alignment       =   2  'Center
         BackColor       =   &H8000000E&
         Caption         =   "4"
         Height          =   255
         Index           =   4
         Left            =   3240
         TabIndex        =   6
         Top             =   360
         Width           =   495
      End
      Begin VB.Label Label_IN 
         Alignment       =   2  'Center
         BackColor       =   &H8000000E&
         Caption         =   "3"
         Height          =   255
         Index           =   3
         Left            =   2520
         TabIndex        =   5
         Top             =   360
         Width           =   495
      End
      Begin VB.Label Label_IN 
         Alignment       =   2  'Center
         BackColor       =   &H8000000E&
         Caption         =   "2"
         Height          =   255
         Index           =   2
         Left            =   1800
         TabIndex        =   4
         Top             =   360
         Width           =   495
      End
      Begin VB.Label Label_IN 
         Alignment       =   2  'Center
         BackColor       =   &H8000000E&
         Caption         =   "1"
         Height          =   255
         Index           =   1
         Left            =   1080
         TabIndex        =   3
         Top             =   360
         Width           =   495
      End
      Begin VB.Label Label_IN 
         Alignment       =   2  'Center
         BackColor       =   &H00FFFFFF&
         Caption         =   "0"
         Height          =   255
         Index           =   0
         Left            =   360
         TabIndex        =   2
         Top             =   360
         Width           =   495
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim m_nAxisST As Integer
Dim g_UseCard As Integer        '卡号定义

Private Sub Form_Load()
    Dim My_CardNum As Integer     '定义卡数
    Dim My_CardList(7) As Integer '定义卡号数组
    Dim My_CardTypeList(7) As Long  '定义各卡类型
    
    If dmc_board_init() <= 0 Then '控制卡的初始化操作
        MsgBox "初始化控制卡失败！", vbOKOnly, "出错"
    End If
    
    For i = 0 To 23
        Label_IN(i).BackColor = vbYellow
        Label_OUT(i).BackColor = vbYellow
    Next
    S_ALM.BackColor = vbYellow
    S_PEL.BackColor = vbYellow
    S_NEL.BackColor = vbYellow
    S_EMG.BackColor = vbYellow
    S_ORG.BackColor = vbYellow
    S_PSL.BackColor = vbYellow
    S_NSL.BackColor = vbYellow
    S_INP.BackColor = vbYellow
    Label_sevon.BackColor = vbYellow
    
    dmc_get_CardInfList My_CardNum, My_CardTypeList(0), My_CardList(0)  '获取正在使用的卡号列表
    g_UseCard = My_CardList(0)       '初始化选择卡
    m_nAxisST = 0
 End Sub

Private Sub Form_Unload(Cancel As Integer)
    dmc_board_close
    Unload Me
End Sub

Private Sub Label_OUT_Click(index As Integer)
    Dim outBit As Integer
    outBit = index
    
    If dmc_read_outbit(g_UseCard, outBit) = 1 Then
       dmc_write_outbit g_UseCard, outBit, 0
    Else
       dmc_write_outbit g_UseCard, outBit, 1
    End If
End Sub



Private Sub Label_sevon_Click()
    If dmc_read_sevon_pin(g_UseCard, m_nAxisST) = 0 Then
        dmc_write_sevon_pin g_UseCard, m_nAxisST, 1
    ElseIf dmc_read_sevon_pin(g_UseCard, m_nAxisST) = 1 Then
        dmc_write_sevon_pin g_UseCard, m_nAxisST, 0
    End If

End Sub

'轴号选择
Private Sub RADIO_AXISST_Click()
    m_nAxisST = 0
End Sub

Private Sub RADIO_U_Click()
    m_nAxisST = 3
End Sub

Private Sub RADIO_Y_Click()
    m_nAxisST = 1
End Sub

Private Sub RADIO_Z_Click()
    m_nAxisST = 2
End Sub





Private Sub Timer1_Timer()
    Dim i As Integer
    Dim AxisStatus As Integer
    Dim tempState As Long
    AxisStatus = dmc_axis_io_status(g_UseCard, m_nAxisST)
    If (AxisStatus And (2 ^ 0)) = 0 Then S_ALM.BackColor = vbGreen Else S_ALM.BackColor = vbRed
    If (AxisStatus And (2 ^ 1)) = 0 Then S_PEL.BackColor = vbGreen Else S_PEL.BackColor = vbRed
    If (AxisStatus And (2 ^ 2)) = 0 Then S_NEL.BackColor = vbGreen Else S_NEL.BackColor = vbRed
    If (AxisStatus And (2 ^ 3)) = 0 Then S_EMG.BackColor = vbGreen Else S_EMG.BackColor = vbRed
    If (AxisStatus And (2 ^ 4)) = 0 Then S_ORG.BackColor = vbGreen Else S_ORG.BackColor = vbRed
    If (AxisStatus And (2 ^ 6)) = 0 Then S_PSL.BackColor = vbGreen Else S_PSL.BackColor = vbRed
    If (AxisStatus And (2 ^ 7)) = 0 Then S_NSL.BackColor = vbGreen Else S_NSL.BackColor = vbRed
    If (AxisStatus And (2 ^ 8)) = 0 Then S_INP.BackColor = vbGreen Else S_INP.BackColor = vbRed
    For i = 0 To 23
        If dmc_read_inbit(g_UseCard, i) = 0 Then
            Label_IN(i).BackColor = vbGreen
        ElseIf dmc_read_inbit(g_UseCard, i) = 1 Then
            Label_IN(i).BackColor = vbRed
        End If
    Next i
    
    For i = 0 To 23
        If dmc_read_outbit(g_UseCard, i) = 0 Then
            Label_OUT(i).BackColor = vbGreen
        ElseIf dmc_read_outbit(g_UseCard, i) = 1 Then
            Label_OUT(i).BackColor = vbRed
        End If
    Next i
   If dmc_read_sevon_pin(g_UseCard, m_nAxisST) = 0 Then
        Label_sevon.BackColor = vbGreen
    ElseIf dmc_read_sevon_pin(g_UseCard, m_nAxisST) = 1 Then
        Label_sevon.BackColor = vbRed
    End If
End Sub

