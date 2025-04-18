<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Dialog1
    Inherits System.Windows.Forms.Form

    'Form 重写 Dispose，以清理组件列表。
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        If disposing AndAlso components IsNot Nothing Then
            components.Dispose()
        End If
        MyBase.Dispose(disposing)
    End Sub

    'Windows 窗体设计器所必需的
    Private components As System.ComponentModel.IContainer

    '注意: 以下过程是 Windows 窗体设计器所必需的
    '可以使用 Windows 窗体设计器修改它。
    '不要使用代码编辑器修改它。
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container
        Me.TableLayoutPanel1 = New System.Windows.Forms.TableLayoutPanel
        Me.OK_Button = New System.Windows.Forms.Button
        Me.Cancel_Button = New System.Windows.Forms.Button
        Me.VB_net演示 = New System.Windows.Forms.Label
        Me.GroupBox1 = New System.Windows.Forms.GroupBox
        Me.Text_Dist = New System.Windows.Forms.TextBox
        Me.Label4 = New System.Windows.Forms.Label
        Me.Text_Tacc = New System.Windows.Forms.TextBox
        Me.Label3 = New System.Windows.Forms.Label
        Me.Text_RUNSPD = New System.Windows.Forms.TextBox
        Me.Label2 = New System.Windows.Forms.Label
        Me.Text_STRSPD = New System.Windows.Forms.TextBox
        Me.Label1 = New System.Windows.Forms.Label
        Me.GroupBox2 = New System.Windows.Forms.GroupBox
        Me.OptionMoveAxis4 = New System.Windows.Forms.RadioButton
        Me.OptionMoveAxis3 = New System.Windows.Forms.RadioButton
        Me.OptionMoveAxis2 = New System.Windows.Forms.RadioButton
        Me.OptionMoveAxis1 = New System.Windows.Forms.RadioButton
        Me.BUTTON_MOVE = New System.Windows.Forms.Button
        Me.Button_DelStop = New System.Windows.Forms.Button
        Me.Button_EmgStop = New System.Windows.Forms.Button
        Me.Button_CLEAN = New System.Windows.Forms.Button
        Me.Button_Close = New System.Windows.Forms.Button
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.Label_POSITION = New System.Windows.Forms.Label
        Me.GroupBox1.SuspendLayout()
        Me.GroupBox2.SuspendLayout()
        Me.SuspendLayout()
        '
        'TableLayoutPanel1
        '
        Me.TableLayoutPanel1.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.TableLayoutPanel1.ColumnCount = 2
        Me.TableLayoutPanel1.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50.0!))
        Me.TableLayoutPanel1.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50.0!))
        Me.TableLayoutPanel1.Location = New System.Drawing.Point(292, 326)
        Me.TableLayoutPanel1.Name = "TableLayoutPanel1"
        Me.TableLayoutPanel1.RowCount = 1
        Me.TableLayoutPanel1.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50.0!))
        Me.TableLayoutPanel1.Size = New System.Drawing.Size(146, 27)
        Me.TableLayoutPanel1.TabIndex = 0
        '
        'OK_Button
        '
        Me.OK_Button.Anchor = System.Windows.Forms.AnchorStyles.None
        Me.OK_Button.Location = New System.Drawing.Point(304, 299)
        Me.OK_Button.Name = "OK_Button"
        Me.OK_Button.Size = New System.Drawing.Size(67, 21)
        Me.OK_Button.TabIndex = 0
        Me.OK_Button.Text = "确定"
        Me.OK_Button.Visible = False
        '
        'Cancel_Button
        '
        Me.Cancel_Button.Anchor = System.Windows.Forms.AnchorStyles.None
        Me.Cancel_Button.DialogResult = System.Windows.Forms.DialogResult.Cancel
        Me.Cancel_Button.Location = New System.Drawing.Point(371, 299)
        Me.Cancel_Button.Name = "Cancel_Button"
        Me.Cancel_Button.Size = New System.Drawing.Size(67, 21)
        Me.Cancel_Button.TabIndex = 1
        Me.Cancel_Button.Text = "取消"
        Me.Cancel_Button.Visible = False
        '
        'VB_net演示
        '
        Me.VB_net演示.AutoSize = True
        Me.VB_net演示.Font = New System.Drawing.Font("宋体", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(134, Byte))
        Me.VB_net演示.ForeColor = System.Drawing.Color.Red
        Me.VB_net演示.Location = New System.Drawing.Point(168, 20)
        Me.VB_net演示.Name = "VB_net演示"
        Me.VB_net演示.Size = New System.Drawing.Size(120, 16)
        Me.VB_net演示.TabIndex = 1
        Me.VB_net演示.Text = "VB.net演示程序"
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.Text_Dist)
        Me.GroupBox1.Controls.Add(Me.Label4)
        Me.GroupBox1.Controls.Add(Me.Text_Tacc)
        Me.GroupBox1.Controls.Add(Me.Label3)
        Me.GroupBox1.Controls.Add(Me.Text_RUNSPD)
        Me.GroupBox1.Controls.Add(Me.Label2)
        Me.GroupBox1.Controls.Add(Me.Text_STRSPD)
        Me.GroupBox1.Controls.Add(Me.Label1)
        Me.GroupBox1.Location = New System.Drawing.Point(32, 53)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(169, 157)
        Me.GroupBox1.TabIndex = 3
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "运动参数"
        '
        'Text_Dist
        '
        Me.Text_Dist.Location = New System.Drawing.Point(75, 122)
        Me.Text_Dist.Name = "Text_Dist"
        Me.Text_Dist.Size = New System.Drawing.Size(62, 21)
        Me.Text_Dist.TabIndex = 7
        Me.Text_Dist.Text = "500"
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(16, 124)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(53, 12)
        Me.Label4.TabIndex = 6
        Me.Label4.Text = "运动距离"
        '
        'Text_Tacc
        '
        Me.Text_Tacc.Location = New System.Drawing.Point(75, 87)
        Me.Text_Tacc.Name = "Text_Tacc"
        Me.Text_Tacc.Size = New System.Drawing.Size(62, 21)
        Me.Text_Tacc.TabIndex = 5
        Me.Text_Tacc.Text = "0.1"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(16, 89)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(53, 12)
        Me.Label3.TabIndex = 4
        Me.Label3.Text = "加速时间"
        '
        'Text_RUNSPD
        '
        Me.Text_RUNSPD.Location = New System.Drawing.Point(75, 52)
        Me.Text_RUNSPD.Name = "Text_RUNSPD"
        Me.Text_RUNSPD.Size = New System.Drawing.Size(62, 21)
        Me.Text_RUNSPD.TabIndex = 3
        Me.Text_RUNSPD.Text = "1000"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(16, 54)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(53, 12)
        Me.Label2.TabIndex = 2
        Me.Label2.Text = "运行速度"
        '
        'Text_STRSPD
        '
        Me.Text_STRSPD.Location = New System.Drawing.Point(75, 20)
        Me.Text_STRSPD.Name = "Text_STRSPD"
        Me.Text_STRSPD.Size = New System.Drawing.Size(62, 21)
        Me.Text_STRSPD.TabIndex = 1
        Me.Text_STRSPD.Text = "500"
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(16, 22)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(53, 12)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "起始速度"
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.OptionMoveAxis4)
        Me.GroupBox2.Controls.Add(Me.OptionMoveAxis3)
        Me.GroupBox2.Controls.Add(Me.OptionMoveAxis2)
        Me.GroupBox2.Controls.Add(Me.OptionMoveAxis1)
        Me.GroupBox2.Location = New System.Drawing.Point(250, 53)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(149, 73)
        Me.GroupBox2.TabIndex = 4
        Me.GroupBox2.TabStop = False
        Me.GroupBox2.Text = "运动轴"
        '
        'OptionMoveAxis4
        '
        Me.OptionMoveAxis4.AutoSize = True
        Me.OptionMoveAxis4.Location = New System.Drawing.Point(80, 47)
        Me.OptionMoveAxis4.Name = "OptionMoveAxis4"
        Me.OptionMoveAxis4.Size = New System.Drawing.Size(41, 16)
        Me.OptionMoveAxis4.TabIndex = 3
        Me.OptionMoveAxis4.Text = "U轴"
        Me.OptionMoveAxis4.UseVisualStyleBackColor = True
        '
        'OptionMoveAxis3
        '
        Me.OptionMoveAxis3.AutoSize = True
        Me.OptionMoveAxis3.Location = New System.Drawing.Point(20, 46)
        Me.OptionMoveAxis3.Name = "OptionMoveAxis3"
        Me.OptionMoveAxis3.Size = New System.Drawing.Size(41, 16)
        Me.OptionMoveAxis3.TabIndex = 2
        Me.OptionMoveAxis3.Text = "Z轴"
        Me.OptionMoveAxis3.UseVisualStyleBackColor = True
        '
        'OptionMoveAxis2
        '
        Me.OptionMoveAxis2.AutoSize = True
        Me.OptionMoveAxis2.Location = New System.Drawing.Point(80, 25)
        Me.OptionMoveAxis2.Name = "OptionMoveAxis2"
        Me.OptionMoveAxis2.Size = New System.Drawing.Size(41, 16)
        Me.OptionMoveAxis2.TabIndex = 1
        Me.OptionMoveAxis2.Text = "Y轴"
        Me.OptionMoveAxis2.UseVisualStyleBackColor = True
        '
        'OptionMoveAxis1
        '
        Me.OptionMoveAxis1.AutoSize = True
        Me.OptionMoveAxis1.Checked = True
        Me.OptionMoveAxis1.Location = New System.Drawing.Point(20, 24)
        Me.OptionMoveAxis1.Name = "OptionMoveAxis1"
        Me.OptionMoveAxis1.Size = New System.Drawing.Size(41, 16)
        Me.OptionMoveAxis1.TabIndex = 0
        Me.OptionMoveAxis1.TabStop = True
        Me.OptionMoveAxis1.Text = "X轴"
        Me.OptionMoveAxis1.UseVisualStyleBackColor = True
        '
        'BUTTON_MOVE
        '
        Me.BUTTON_MOVE.Location = New System.Drawing.Point(32, 237)
        Me.BUTTON_MOVE.Name = "BUTTON_MOVE"
        Me.BUTTON_MOVE.Size = New System.Drawing.Size(86, 28)
        Me.BUTTON_MOVE.TabIndex = 5
        Me.BUTTON_MOVE.Text = "启动"
        Me.BUTTON_MOVE.UseVisualStyleBackColor = True
        '
        'Button_DelStop
        '
        Me.Button_DelStop.Location = New System.Drawing.Point(171, 237)
        Me.Button_DelStop.Name = "Button_DelStop"
        Me.Button_DelStop.Size = New System.Drawing.Size(86, 28)
        Me.Button_DelStop.TabIndex = 6
        Me.Button_DelStop.Text = "减速停"
        Me.Button_DelStop.UseVisualStyleBackColor = True
        '
        'Button_EmgStop
        '
        Me.Button_EmgStop.Location = New System.Drawing.Point(313, 237)
        Me.Button_EmgStop.Name = "Button_EmgStop"
        Me.Button_EmgStop.Size = New System.Drawing.Size(86, 28)
        Me.Button_EmgStop.TabIndex = 7
        Me.Button_EmgStop.Text = "急停"
        Me.Button_EmgStop.UseVisualStyleBackColor = True
        '
        'Button_CLEAN
        '
        Me.Button_CLEAN.Location = New System.Drawing.Point(32, 280)
        Me.Button_CLEAN.Name = "Button_CLEAN"
        Me.Button_CLEAN.Size = New System.Drawing.Size(86, 28)
        Me.Button_CLEAN.TabIndex = 8
        Me.Button_CLEAN.Text = "位置清零"
        Me.Button_CLEAN.UseVisualStyleBackColor = True
        '
        'Button_Close
        '
        Me.Button_Close.Location = New System.Drawing.Point(171, 280)
        Me.Button_Close.Name = "Button_Close"
        Me.Button_Close.Size = New System.Drawing.Size(86, 28)
        Me.Button_Close.TabIndex = 9
        Me.Button_Close.Text = "退出"
        Me.Button_Close.UseVisualStyleBackColor = True
        '
        'Timer1
        '
        '
        'Label_POSITION
        '
        Me.Label_POSITION.AutoSize = True
        Me.Label_POSITION.Location = New System.Drawing.Point(30, 341)
        Me.Label_POSITION.Name = "Label_POSITION"
        Me.Label_POSITION.Size = New System.Drawing.Size(41, 12)
        Me.Label_POSITION.TabIndex = 10
        Me.Label_POSITION.Text = "Label5"
        '
        'Dialog1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 12.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(450, 364)
        Me.Controls.Add(Me.Cancel_Button)
        Me.Controls.Add(Me.OK_Button)
        Me.Controls.Add(Me.Label_POSITION)
        Me.Controls.Add(Me.Button_Close)
        Me.Controls.Add(Me.Button_CLEAN)
        Me.Controls.Add(Me.Button_EmgStop)
        Me.Controls.Add(Me.Button_DelStop)
        Me.Controls.Add(Me.BUTTON_MOVE)
        Me.Controls.Add(Me.GroupBox2)
        Me.Controls.Add(Me.GroupBox1)
        Me.Controls.Add(Me.VB_net演示)
        Me.Controls.Add(Me.TableLayoutPanel1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "Dialog1"
        Me.ShowInTaskbar = False
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent
        Me.Text = "控制卡功能演示"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox2.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents TableLayoutPanel1 As System.Windows.Forms.TableLayoutPanel
    Friend WithEvents OK_Button As System.Windows.Forms.Button
    Friend WithEvents Cancel_Button As System.Windows.Forms.Button
    Friend WithEvents VB_net演示 As System.Windows.Forms.Label
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents Text_Dist As System.Windows.Forms.TextBox
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents Text_Tacc As System.Windows.Forms.TextBox
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents Text_RUNSPD As System.Windows.Forms.TextBox
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Text_STRSPD As System.Windows.Forms.TextBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents OptionMoveAxis2 As System.Windows.Forms.RadioButton
    Friend WithEvents OptionMoveAxis1 As System.Windows.Forms.RadioButton
    Friend WithEvents OptionMoveAxis4 As System.Windows.Forms.RadioButton
    Friend WithEvents OptionMoveAxis3 As System.Windows.Forms.RadioButton
    Friend WithEvents BUTTON_MOVE As System.Windows.Forms.Button
    Friend WithEvents Button_DelStop As System.Windows.Forms.Button
    Friend WithEvents Button_EmgStop As System.Windows.Forms.Button
    Friend WithEvents Button_CLEAN As System.Windows.Forms.Button
    Friend WithEvents Button_Close As System.Windows.Forms.Button
    Friend WithEvents Timer1 As System.Windows.Forms.Timer
    Friend WithEvents Label_POSITION As System.Windows.Forms.Label

End Class
