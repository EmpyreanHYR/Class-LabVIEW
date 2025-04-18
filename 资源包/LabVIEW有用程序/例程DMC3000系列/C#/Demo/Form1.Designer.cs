namespace WindowsApplication1
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.button_start = new System.Windows.Forms.Button();
            this.button_clear = new System.Windows.Forms.Button();
            this.button_stop = new System.Windows.Forms.Button();
            this.label_position = new System.Windows.Forms.Label();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.radioButtonU = new System.Windows.Forms.RadioButton();
            this.radioButtonZ = new System.Windows.Forms.RadioButton();
            this.radioButtonY = new System.Windows.Forms.RadioButton();
            this.radioButtonX = new System.Windows.Forms.RadioButton();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.radioButtonCM = new System.Windows.Forms.RadioButton();
            this.radioButtonM = new System.Windows.Forms.RadioButton();
            this.checkBoxDir = new System.Windows.Forms.CheckBox();
            this.groupBox5 = new System.Windows.Forms.GroupBox();
            this.label7 = new System.Windows.Forms.Label();
            this.textBoxSpara = new System.Windows.Forms.TextBox();
            this.textBoxPulse = new System.Windows.Forms.TextBox();
            this.textBoxTDec = new System.Windows.Forms.TextBox();
            this.textBoxTAcc = new System.Windows.Forms.TextBox();
            this.textBoxESpd = new System.Windows.Forms.TextBox();
            this.textBoxMSpd = new System.Windows.Forms.TextBox();
            this.textBoxOSpd = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.checkBoxOut1 = new System.Windows.Forms.CheckBox();
            this.checkBoxOut2 = new System.Windows.Forms.CheckBox();
            this.checkBoxOut3 = new System.Windows.Forms.CheckBox();
            this.checkBoxOut4 = new System.Windows.Forms.CheckBox();
            this.label_input = new System.Windows.Forms.Label();
            this.BUTTON_RESETPOS = new System.Windows.Forms.Button();
            this.BUTTON_CHANGESPEED = new System.Windows.Forms.Button();
            this.EMGStopButton = new System.Windows.Forms.Button();
            this.ClearCompareButton = new System.Windows.Forms.Button();
            this.AddCompareButton = new System.Windows.Forms.Button();
            this.label_CompareState = new System.Windows.Forms.Label();
            this.label_RunState = new System.Windows.Forms.Label();
            this.groupBox1.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.groupBox5.SuspendLayout();
            this.SuspendLayout();
            // 
            // button_start
            // 
            this.button_start.Location = new System.Drawing.Point(374, 19);
            this.button_start.Name = "button_start";
            this.button_start.Size = new System.Drawing.Size(79, 29);
            this.button_start.TabIndex = 0;
            this.button_start.Text = "开始";
            this.button_start.UseVisualStyleBackColor = true;
            this.button_start.Click += new System.EventHandler(this.button_start_Click);
            // 
            // button_clear
            // 
            this.button_clear.Location = new System.Drawing.Point(374, 209);
            this.button_clear.Name = "button_clear";
            this.button_clear.Size = new System.Drawing.Size(79, 29);
            this.button_clear.TabIndex = 1;
            this.button_clear.Text = "位置清零";
            this.button_clear.UseVisualStyleBackColor = true;
            this.button_clear.Click += new System.EventHandler(this.button_clear_Click);
            // 
            // button_stop
            // 
            this.button_stop.Location = new System.Drawing.Point(374, 247);
            this.button_stop.Name = "button_stop";
            this.button_stop.Size = new System.Drawing.Size(79, 29);
            this.button_stop.TabIndex = 2;
            this.button_stop.Text = "减速停止";
            this.button_stop.UseVisualStyleBackColor = true;
            this.button_stop.Click += new System.EventHandler(this.button_stop_Click);
            // 
            // label_position
            // 
            this.label_position.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.label_position.Location = new System.Drawing.Point(25, 303);
            this.label_position.Name = "label_position";
            this.label_position.Size = new System.Drawing.Size(324, 30);
            this.label_position.TabIndex = 3;
            this.label_position.Text = "位置记录";
            this.label_position.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // timer1
            // 
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.radioButtonU);
            this.groupBox1.Controls.Add(this.radioButtonZ);
            this.groupBox1.Controls.Add(this.radioButtonY);
            this.groupBox1.Controls.Add(this.radioButtonX);
            this.groupBox1.Location = new System.Drawing.Point(23, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(155, 78);
            this.groupBox1.TabIndex = 4;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "轴号选择";
            // 
            // radioButtonU
            // 
            this.radioButtonU.AutoSize = true;
            this.radioButtonU.Location = new System.Drawing.Point(82, 52);
            this.radioButtonU.Name = "radioButtonU";
            this.radioButtonU.Size = new System.Drawing.Size(41, 16);
            this.radioButtonU.TabIndex = 3;
            this.radioButtonU.Text = "U轴";
            this.radioButtonU.UseVisualStyleBackColor = true;
            this.radioButtonU.CheckedChanged += new System.EventHandler(this.radioButtonU_CheckedChanged);
            // 
            // radioButtonZ
            // 
            this.radioButtonZ.AutoSize = true;
            this.radioButtonZ.Location = new System.Drawing.Point(10, 52);
            this.radioButtonZ.Name = "radioButtonZ";
            this.radioButtonZ.Size = new System.Drawing.Size(41, 16);
            this.radioButtonZ.TabIndex = 2;
            this.radioButtonZ.Text = "Z轴";
            this.radioButtonZ.UseVisualStyleBackColor = true;
            this.radioButtonZ.CheckedChanged += new System.EventHandler(this.radioButtonZ_CheckedChanged);
            // 
            // radioButtonY
            // 
            this.radioButtonY.AutoSize = true;
            this.radioButtonY.Location = new System.Drawing.Point(82, 24);
            this.radioButtonY.Name = "radioButtonY";
            this.radioButtonY.Size = new System.Drawing.Size(41, 16);
            this.radioButtonY.TabIndex = 1;
            this.radioButtonY.Text = "Y轴";
            this.radioButtonY.UseVisualStyleBackColor = true;
            this.radioButtonY.CheckedChanged += new System.EventHandler(this.radioButtonY_CheckedChanged);
            // 
            // radioButtonX
            // 
            this.radioButtonX.AutoSize = true;
            this.radioButtonX.Checked = true;
            this.radioButtonX.Location = new System.Drawing.Point(10, 24);
            this.radioButtonX.Name = "radioButtonX";
            this.radioButtonX.Size = new System.Drawing.Size(41, 16);
            this.radioButtonX.TabIndex = 0;
            this.radioButtonX.TabStop = true;
            this.radioButtonX.Text = "X轴";
            this.radioButtonX.UseVisualStyleBackColor = true;
            this.radioButtonX.CheckedChanged += new System.EventHandler(this.radioButtonX_CheckedChanged);
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.radioButtonCM);
            this.groupBox3.Controls.Add(this.radioButtonM);
            this.groupBox3.Location = new System.Drawing.Point(187, 13);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(163, 77);
            this.groupBox3.TabIndex = 6;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "运动选择";
            // 
            // radioButtonCM
            // 
            this.radioButtonCM.AutoSize = true;
            this.radioButtonCM.Location = new System.Drawing.Point(29, 51);
            this.radioButtonCM.Name = "radioButtonCM";
            this.radioButtonCM.Size = new System.Drawing.Size(71, 16);
            this.radioButtonCM.TabIndex = 1;
            this.radioButtonCM.TabStop = true;
            this.radioButtonCM.Text = "连续运动";
            this.radioButtonCM.UseVisualStyleBackColor = true;
            // 
            // radioButtonM
            // 
            this.radioButtonM.AutoSize = true;
            this.radioButtonM.Checked = true;
            this.radioButtonM.Location = new System.Drawing.Point(29, 23);
            this.radioButtonM.Name = "radioButtonM";
            this.radioButtonM.Size = new System.Drawing.Size(71, 16);
            this.radioButtonM.TabIndex = 0;
            this.radioButtonM.TabStop = true;
            this.radioButtonM.Text = "定长运动";
            this.radioButtonM.UseVisualStyleBackColor = true;
            // 
            // checkBoxDir
            // 
            this.checkBoxDir.AutoSize = true;
            this.checkBoxDir.Checked = true;
            this.checkBoxDir.CheckState = System.Windows.Forms.CheckState.Checked;
            this.checkBoxDir.Location = new System.Drawing.Point(202, 20);
            this.checkBoxDir.Name = "checkBoxDir";
            this.checkBoxDir.Size = new System.Drawing.Size(96, 16);
            this.checkBoxDir.TabIndex = 3;
            this.checkBoxDir.Text = "运动方向：正";
            this.checkBoxDir.UseVisualStyleBackColor = true;
            this.checkBoxDir.CheckedChanged += new System.EventHandler(this.checkBoxDir_CheckedChanged);
            // 
            // groupBox5
            // 
            this.groupBox5.Controls.Add(this.label7);
            this.groupBox5.Controls.Add(this.textBoxSpara);
            this.groupBox5.Controls.Add(this.checkBoxDir);
            this.groupBox5.Controls.Add(this.textBoxPulse);
            this.groupBox5.Controls.Add(this.textBoxTDec);
            this.groupBox5.Controls.Add(this.textBoxTAcc);
            this.groupBox5.Controls.Add(this.textBoxESpd);
            this.groupBox5.Controls.Add(this.textBoxMSpd);
            this.groupBox5.Controls.Add(this.textBoxOSpd);
            this.groupBox5.Controls.Add(this.label4);
            this.groupBox5.Controls.Add(this.label5);
            this.groupBox5.Controls.Add(this.label6);
            this.groupBox5.Controls.Add(this.label3);
            this.groupBox5.Controls.Add(this.label2);
            this.groupBox5.Controls.Add(this.label1);
            this.groupBox5.Location = new System.Drawing.Point(23, 96);
            this.groupBox5.Name = "groupBox5";
            this.groupBox5.Size = new System.Drawing.Size(327, 165);
            this.groupBox5.TabIndex = 8;
            this.groupBox5.TabStop = false;
            this.groupBox5.Text = "运动参数设置";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(202, 67);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(59, 12);
            this.label7.TabIndex = 9;
            this.label7.Text = "S段时间ms";
            // 
            // textBoxSpara
            // 
            this.textBoxSpara.Location = new System.Drawing.Point(203, 86);
            this.textBoxSpara.Name = "textBoxSpara";
            this.textBoxSpara.Size = new System.Drawing.Size(85, 21);
            this.textBoxSpara.TabIndex = 8;
            this.textBoxSpara.Text = "0";
            // 
            // textBoxPulse
            // 
            this.textBoxPulse.Location = new System.Drawing.Point(202, 131);
            this.textBoxPulse.Name = "textBoxPulse";
            this.textBoxPulse.Size = new System.Drawing.Size(85, 21);
            this.textBoxPulse.TabIndex = 7;
            this.textBoxPulse.Text = "2000";
            // 
            // textBoxTDec
            // 
            this.textBoxTDec.Location = new System.Drawing.Point(82, 131);
            this.textBoxTDec.Name = "textBoxTDec";
            this.textBoxTDec.Size = new System.Drawing.Size(85, 21);
            this.textBoxTDec.TabIndex = 6;
            this.textBoxTDec.Text = "0.01";
            // 
            // textBoxTAcc
            // 
            this.textBoxTAcc.Location = new System.Drawing.Point(82, 103);
            this.textBoxTAcc.Name = "textBoxTAcc";
            this.textBoxTAcc.Size = new System.Drawing.Size(85, 21);
            this.textBoxTAcc.TabIndex = 6;
            this.textBoxTAcc.Text = "0.01";
            // 
            // textBoxESpd
            // 
            this.textBoxESpd.Location = new System.Drawing.Point(82, 76);
            this.textBoxESpd.Name = "textBoxESpd";
            this.textBoxESpd.Size = new System.Drawing.Size(85, 21);
            this.textBoxESpd.TabIndex = 5;
            this.textBoxESpd.Text = "1000";
            // 
            // textBoxMSpd
            // 
            this.textBoxMSpd.Location = new System.Drawing.Point(82, 49);
            this.textBoxMSpd.Name = "textBoxMSpd";
            this.textBoxMSpd.Size = new System.Drawing.Size(85, 21);
            this.textBoxMSpd.TabIndex = 5;
            this.textBoxMSpd.Text = "1000";
            // 
            // textBoxOSpd
            // 
            this.textBoxOSpd.Location = new System.Drawing.Point(82, 20);
            this.textBoxOSpd.Name = "textBoxOSpd";
            this.textBoxOSpd.Size = new System.Drawing.Size(85, 21);
            this.textBoxOSpd.TabIndex = 4;
            this.textBoxOSpd.Text = "500";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(200, 112);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(65, 12);
            this.label4.TabIndex = 3;
            this.label4.Text = "运动距离：";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(12, 79);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(65, 12);
            this.label5.TabIndex = 1;
            this.label5.Text = "停止速度：";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(12, 134);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(65, 12);
            this.label6.TabIndex = 2;
            this.label6.Text = "减速时间：";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(12, 106);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(65, 12);
            this.label3.TabIndex = 2;
            this.label3.Text = "加速时间：";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 52);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(65, 12);
            this.label2.TabIndex = 1;
            this.label2.Text = "最大速度：";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 25);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(65, 12);
            this.label1.TabIndex = 0;
            this.label1.Text = "起始速度：";
            // 
            // checkBoxOut1
            // 
            this.checkBoxOut1.AutoSize = true;
            this.checkBoxOut1.Location = new System.Drawing.Point(22, 377);
            this.checkBoxOut1.Name = "checkBoxOut1";
            this.checkBoxOut1.Size = new System.Drawing.Size(96, 16);
            this.checkBoxOut1.TabIndex = 9;
            this.checkBoxOut1.Text = "OUT1：低电平";
            this.checkBoxOut1.UseVisualStyleBackColor = true;
            this.checkBoxOut1.CheckedChanged += new System.EventHandler(this.checkBoxOut1_CheckedChanged);
            // 
            // checkBoxOut2
            // 
            this.checkBoxOut2.AutoSize = true;
            this.checkBoxOut2.Location = new System.Drawing.Point(130, 377);
            this.checkBoxOut2.Name = "checkBoxOut2";
            this.checkBoxOut2.Size = new System.Drawing.Size(96, 16);
            this.checkBoxOut2.TabIndex = 10;
            this.checkBoxOut2.Text = "OUT2：低电平";
            this.checkBoxOut2.UseVisualStyleBackColor = true;
            this.checkBoxOut2.CheckedChanged += new System.EventHandler(this.checkBoxOut2_CheckedChanged);
            // 
            // checkBoxOut3
            // 
            this.checkBoxOut3.AutoSize = true;
            this.checkBoxOut3.Location = new System.Drawing.Point(243, 376);
            this.checkBoxOut3.Name = "checkBoxOut3";
            this.checkBoxOut3.Size = new System.Drawing.Size(96, 16);
            this.checkBoxOut3.TabIndex = 11;
            this.checkBoxOut3.Text = "OUT3：低电平";
            this.checkBoxOut3.UseVisualStyleBackColor = true;
            this.checkBoxOut3.CheckedChanged += new System.EventHandler(this.checkBoxOut3_CheckedChanged);
            // 
            // checkBoxOut4
            // 
            this.checkBoxOut4.AutoSize = true;
            this.checkBoxOut4.Location = new System.Drawing.Point(349, 376);
            this.checkBoxOut4.Name = "checkBoxOut4";
            this.checkBoxOut4.Size = new System.Drawing.Size(96, 16);
            this.checkBoxOut4.TabIndex = 12;
            this.checkBoxOut4.Text = "OUT4：低电平";
            this.checkBoxOut4.UseVisualStyleBackColor = true;
            this.checkBoxOut4.CheckedChanged += new System.EventHandler(this.checkBoxOut4_CheckedChanged);
            // 
            // label_input
            // 
            this.label_input.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.label_input.Location = new System.Drawing.Point(23, 405);
            this.label_input.Name = "label_input";
            this.label_input.Size = new System.Drawing.Size(430, 30);
            this.label_input.TabIndex = 13;
            this.label_input.Text = "Check Input";
            this.label_input.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // BUTTON_RESETPOS
            // 
            this.BUTTON_RESETPOS.Location = new System.Drawing.Point(374, 171);
            this.BUTTON_RESETPOS.Name = "BUTTON_RESETPOS";
            this.BUTTON_RESETPOS.Size = new System.Drawing.Size(79, 29);
            this.BUTTON_RESETPOS.TabIndex = 15;
            this.BUTTON_RESETPOS.Text = "在线变位";
            this.BUTTON_RESETPOS.UseVisualStyleBackColor = true;
            this.BUTTON_RESETPOS.Click += new System.EventHandler(this.BUTTON_RESETPOS_Click);
            // 
            // BUTTON_CHANGESPEED
            // 
            this.BUTTON_CHANGESPEED.Location = new System.Drawing.Point(374, 133);
            this.BUTTON_CHANGESPEED.Name = "BUTTON_CHANGESPEED";
            this.BUTTON_CHANGESPEED.Size = new System.Drawing.Size(79, 29);
            this.BUTTON_CHANGESPEED.TabIndex = 14;
            this.BUTTON_CHANGESPEED.Text = "在线变速";
            this.BUTTON_CHANGESPEED.UseVisualStyleBackColor = true;
            this.BUTTON_CHANGESPEED.Click += new System.EventHandler(this.BUTTON_CHANGESPEED_Click);
            // 
            // EMGStopButton
            // 
            this.EMGStopButton.Location = new System.Drawing.Point(374, 285);
            this.EMGStopButton.Name = "EMGStopButton";
            this.EMGStopButton.Size = new System.Drawing.Size(79, 29);
            this.EMGStopButton.TabIndex = 16;
            this.EMGStopButton.Text = "紧急停止";
            this.EMGStopButton.UseVisualStyleBackColor = true;
            this.EMGStopButton.Click += new System.EventHandler(this.button1_Click);
            // 
            // ClearCompareButton
            // 
            this.ClearCompareButton.Location = new System.Drawing.Point(374, 57);
            this.ClearCompareButton.Name = "ClearCompareButton";
            this.ClearCompareButton.Size = new System.Drawing.Size(79, 29);
            this.ClearCompareButton.TabIndex = 17;
            this.ClearCompareButton.Text = "清除比较点";
            this.ClearCompareButton.UseVisualStyleBackColor = true;
            this.ClearCompareButton.Click += new System.EventHandler(this.ClearCompareButton_Click);
            // 
            // AddCompareButton
            // 
            this.AddCompareButton.Location = new System.Drawing.Point(374, 95);
            this.AddCompareButton.Name = "AddCompareButton";
            this.AddCompareButton.Size = new System.Drawing.Size(79, 29);
            this.AddCompareButton.TabIndex = 18;
            this.AddCompareButton.Text = "添加比较点";
            this.AddCompareButton.UseVisualStyleBackColor = true;
            this.AddCompareButton.Click += new System.EventHandler(this.AddCompareButton_Click);
            // 
            // label_CompareState
            // 
            this.label_CompareState.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.label_CompareState.Location = new System.Drawing.Point(25, 339);
            this.label_CompareState.Name = "label_CompareState";
            this.label_CompareState.Size = new System.Drawing.Size(324, 30);
            this.label_CompareState.TabIndex = 19;
            this.label_CompareState.Text = "位置比较状态";
            this.label_CompareState.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // label_RunState
            // 
            this.label_RunState.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.label_RunState.Location = new System.Drawing.Point(25, 268);
            this.label_RunState.Name = "label_RunState";
            this.label_RunState.Size = new System.Drawing.Size(324, 30);
            this.label_RunState.TabIndex = 20;
            this.label_RunState.Text = "运动状态";
            this.label_RunState.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(473, 452);
            this.Controls.Add(this.label_RunState);
            this.Controls.Add(this.label_CompareState);
            this.Controls.Add(this.AddCompareButton);
            this.Controls.Add(this.ClearCompareButton);
            this.Controls.Add(this.EMGStopButton);
            this.Controls.Add(this.BUTTON_RESETPOS);
            this.Controls.Add(this.BUTTON_CHANGESPEED);
            this.Controls.Add(this.label_input);
            this.Controls.Add(this.checkBoxOut4);
            this.Controls.Add(this.checkBoxOut3);
            this.Controls.Add(this.checkBoxOut2);
            this.Controls.Add(this.checkBoxOut1);
            this.Controls.Add(this.groupBox5);
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.label_position);
            this.Controls.Add(this.button_stop);
            this.Controls.Add(this.button_clear);
            this.Controls.Add(this.button_start);
            this.Name = "Form1";
            this.Text = "运动及IO测试演示";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.groupBox5.ResumeLayout(false);
            this.groupBox5.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button button_start;
        private System.Windows.Forms.Button button_clear;
        private System.Windows.Forms.Button button_stop;
        private System.Windows.Forms.Label label_position;
        private System.Windows.Forms.Timer timer1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.RadioButton radioButtonX;
        private System.Windows.Forms.RadioButton radioButtonU;
        private System.Windows.Forms.RadioButton radioButtonZ;
        private System.Windows.Forms.RadioButton radioButtonY;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.RadioButton radioButtonCM;
        private System.Windows.Forms.RadioButton radioButtonM;
        private System.Windows.Forms.CheckBox checkBoxDir;
        private System.Windows.Forms.GroupBox groupBox5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox textBoxPulse;
        private System.Windows.Forms.TextBox textBoxTAcc;
        private System.Windows.Forms.TextBox textBoxMSpd;
        private System.Windows.Forms.TextBox textBoxOSpd;
        private System.Windows.Forms.CheckBox checkBoxOut1;
        private System.Windows.Forms.CheckBox checkBoxOut2;
        private System.Windows.Forms.CheckBox checkBoxOut3;
        private System.Windows.Forms.CheckBox checkBoxOut4;
        private System.Windows.Forms.Label label_input;
        private System.Windows.Forms.Button BUTTON_RESETPOS;
        private System.Windows.Forms.Button BUTTON_CHANGESPEED;
        private System.Windows.Forms.TextBox textBoxTDec;
        private System.Windows.Forms.TextBox textBoxESpd;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox textBoxSpara;
        private System.Windows.Forms.Button EMGStopButton;
        private System.Windows.Forms.Button ClearCompareButton;
        private System.Windows.Forms.Button AddCompareButton;
        private System.Windows.Forms.Label label_CompareState;
        private System.Windows.Forms.Label label_RunState;
    }
}

