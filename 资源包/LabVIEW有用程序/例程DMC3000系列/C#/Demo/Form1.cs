using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using csLTDMC;

namespace WindowsApplication1
{
    public partial class Form1 : Form
    {
        const int XCH = 0;
        const int YCH = 1;
        const int ZCH = 2;
        const int UCH = 3;

        UInt16 nAxis = 0;
        UInt16 nCardNo = 0;
        public Form1()
        {
            InitializeComponent();
            
            int nCard = 0;
            UInt32 FirmID = 0;
            UInt32 SubFirmID = 0;
            nCard = LTDMC.dmc_board_init();
            if (nCard <= 0)//控制卡初始化
                MessageBox.Show("未找到控制卡!", "警告");
            else
            {
                LTDMC.dmc_get_card_soft_version(nCardNo, ref FirmID, ref SubFirmID);
                MessageBox.Show("找到DMC"+Convert.ToString(FirmID,16).ToUpper()+"控制卡!", "警告");
            }
            timer1.Enabled = true;
        }

        private void Form1_FormClosed() 
        {
            timer1.Enabled = false;
            LTDMC.dmc_board_close();
        }
    
        private void timer1_Tick(object sender, EventArgs e)
        {
            UInt16 i;
            int ComparePos = 0;
            Int32 ComparedPointNum = 0;
            Int32 RemainPointNum = 0;
            int IOState;
            label_RunState.Text = "";
            label_position.Text = "";
            label_input.Text = "";
            LTDMC.dmc_compare_get_current_point(nCardNo, nAxis, ref ComparePos);
            LTDMC.dmc_compare_get_points_runned(nCardNo, nAxis, ref ComparedPointNum);
            LTDMC.dmc_compare_get_points_remained(nCardNo, nAxis, ref RemainPointNum);
            label_CompareState.Text = "当前比较位置 " + ComparePos + ", 已比较点数 " + ComparedPointNum + ",可加入比较点数 " + RemainPointNum;
            for (i = 0; i < 4; i++)
            {
                label_RunState.Text += "Axis" + i + "："+Convert.ToString(LTDMC.dmc_check_done(nCardNo, i) == 0 ? "运行" : "停止") + ", ";
                label_position.Text += "Axis" + i + "："+ Convert.ToString(LTDMC.dmc_get_position(nCardNo, i)) + ", ";                
                label_input.Text += "IN" + (i + 1) + "：" + Convert.ToString(LTDMC.dmc_read_outbit(nCardNo, (UInt16)(i + 1))) + ", ";
                switch (i)
                {
                    case 0:
                        IOState = LTDMC.dmc_read_outbit(nCardNo, (UInt16)(i + 1));
                        checkBoxOut1.Checked = (IOState == 1 ? true : false);
                        checkBoxOut1.Text = (IOState == 1 ? "OUT1：高电平" : "OUT1：低电平");
                        break;
                    case 1:
                        IOState = LTDMC.dmc_read_outbit(nCardNo, (UInt16)(i + 1));
                        checkBoxOut2.Checked = (IOState == 1 ? true : false);
                        checkBoxOut2.Text = (IOState == 1 ? "OUT2：高电平" : "OUT2：低电平");
                        break;
                    case 2:
                        IOState = LTDMC.dmc_read_outbit(nCardNo, (UInt16)(i + 1));
                        checkBoxOut3.Checked = (IOState == 1 ? true : false);
                        checkBoxOut3.Text = (IOState == 1 ? "OUT3：高电平" : "OUT3：低电平");
                        break;
                    case 3:
                        IOState = LTDMC.dmc_read_outbit(nCardNo, (UInt16)(i + 1));
                        checkBoxOut4.Checked = (IOState == 1 ? true : false);
                        checkBoxOut4.Text = (IOState == 1 ? "OUT4：高电平" : "OUT4：低电平");
                        break;
                    default:
                        break;
                }
            }           
        }

        private void button_start_Click(object sender, EventArgs e)
        {
            if (LTDMC.dmc_check_done(nCardNo, nAxis) == 0) return;//若在运行，则返回
                        
            UInt16 nDir = (UInt16)(checkBoxDir.Checked ? 1 : 0);

            double nStart = Convert.ToDouble(textBoxOSpd.Text);
            double nMSpeed = Convert.ToDouble(textBoxMSpd.Text);
            double nESpeed = Convert.ToDouble(textBoxESpd.Text);
            double nTAcc = Convert.ToDouble(textBoxTAcc.Text);
            double nTDec = Convert.ToDouble(textBoxTDec.Text);
            Int32 nPulse = Convert.ToInt32(textBoxPulse.Text);
            double nSpara = Convert.ToDouble(textBoxSpara.Text);

            //启动位置比较
            LTDMC.dmc_compare_set_config(nCardNo, nAxis, 1, 0);

            //设置S段系数
            LTDMC.dmc_set_s_profile(nCardNo, nAxis, 0,nSpara);

            //设置速度、加速度
            LTDMC.dmc_set_profile(nCardNo, nAxis, nStart, nMSpeed, nTAcc, nTDec, nESpeed);

            if (radioButtonM.Checked)//定长运动
            {
                LTDMC.dmc_pmove(nCardNo, nAxis, nPulse * ((nDir == 0) ? -1 : 1), 0);
            }
            else if (radioButtonCM.Checked)//连续运动
            {
                LTDMC.dmc_vmove(nCardNo, nAxis, nDir);               
            }
                   
        }

        private void button_clear_Click(object sender, EventArgs e)
        {
            //位置清零
            LTDMC.dmc_set_position(nCardNo, nAxis, 0);
        }

        private void button_stop_Click(object sender, EventArgs e)
        {
            //减速停止
            LTDMC.dmc_stop(nCardNo, nAxis, 0);         
        }                

        private void checkBoxDir_CheckedChanged(object sender, EventArgs e)
        {
            checkBoxDir.Text = (checkBoxDir.Checked ? "驱动方向：正" : "驱动方向：负");
        }

        private void checkBoxOut1_CheckedChanged(object sender, EventArgs e)
        {
            checkBoxOut1.Text = (checkBoxOut1.Checked ? "OUT1：高电平" : "OUT1：低电平");
            LTDMC.dmc_write_outbit(nCardNo, 1, (UInt16)(checkBoxOut1.Checked ? 1 : 0));
        }

        private void checkBoxOut2_CheckedChanged(object sender, EventArgs e)
        {
            checkBoxOut2.Text = (checkBoxOut2.Checked ? "OUT2：高电平" : "OUT2：低电平");
            LTDMC.dmc_write_outbit(nCardNo, 2, (UInt16)(checkBoxOut2.Checked ? 1 : 0));
        }

        private void checkBoxOut3_CheckedChanged(object sender, EventArgs e)
        {
            checkBoxOut3.Text = (checkBoxOut3.Checked ? "OUT3：高电平" : "OUT3：低电平");
            LTDMC.dmc_write_outbit(nCardNo, 3, (UInt16)(checkBoxOut3.Checked ? 1 : 0));            
        }

        private void checkBoxOut4_CheckedChanged(object sender, EventArgs e)
        {
            checkBoxOut4.Text = (checkBoxOut4.Checked ? "OUT4：高电平" : "OUT4：低电平");
            LTDMC.dmc_write_outbit(nCardNo, 4, (UInt16)(checkBoxOut4.Checked ? 1 : 0));
        }

        private void radioButtonX_CheckedChanged(object sender, EventArgs e)
        {
            nAxis = XCH;
        }

        private void radioButtonY_CheckedChanged(object sender, EventArgs e)
        {
            nAxis = YCH;
        }

        private void radioButtonZ_CheckedChanged(object sender, EventArgs e)
        {
            nAxis = ZCH;
        }

        private void radioButtonU_CheckedChanged(object sender, EventArgs e)
        {
            nAxis = UCH;
        }
        private void BUTTON_CHANGESPEED_Click(object sender, EventArgs e)
        {
            double m_nSpeed = Convert.ToDouble(textBoxMSpd.Text);
            //在线变速
            LTDMC.dmc_change_speed(nCardNo, nAxis, m_nSpeed, 0);
        }

        private void BUTTON_RESETPOS_Click(object sender, EventArgs e)
        {
            Int32 dist = Convert.ToInt32(textBoxPulse.Text)*(checkBoxDir.Checked ? 1 : -1);
            //在线变位
            LTDMC.dmc_reset_target_position(nCardNo, nAxis, dist, 0);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            LTDMC.dmc_emg_stop(nCardNo);
        }

        private void ClearCompareButton_Click(object sender, EventArgs e)
        {
            //禁止位置比较
            LTDMC.dmc_compare_set_config(nCardNo, nAxis, 0, 0);
            //清除比较点
            LTDMC.dmc_compare_clear_points(nCardNo, nAxis);
        }

        private void AddCompareButton_Click(object sender, EventArgs e)
        {
            UInt16 nDir = (UInt16)(checkBoxDir.Checked ? 1 : 0);
            Int32 nPulse = Convert.ToInt32(textBoxPulse.Text);
            //添加比较点
            LTDMC.dmc_compare_add_point(nCardNo, nAxis, nPulse * ((nDir == 0) ? -1 : 1), 0, 3, 1);
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }            
    }
}