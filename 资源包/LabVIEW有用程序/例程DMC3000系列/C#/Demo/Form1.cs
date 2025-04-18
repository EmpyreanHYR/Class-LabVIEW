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
            if (nCard <= 0)//���ƿ���ʼ��
                MessageBox.Show("δ�ҵ����ƿ�!", "����");
            else
            {
                LTDMC.dmc_get_card_soft_version(nCardNo, ref FirmID, ref SubFirmID);
                MessageBox.Show("�ҵ�DMC"+Convert.ToString(FirmID,16).ToUpper()+"���ƿ�!", "����");
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
            label_CompareState.Text = "��ǰ�Ƚ�λ�� " + ComparePos + ", �ѱȽϵ��� " + ComparedPointNum + ",�ɼ���Ƚϵ��� " + RemainPointNum;
            for (i = 0; i < 4; i++)
            {
                label_RunState.Text += "Axis" + i + "��"+Convert.ToString(LTDMC.dmc_check_done(nCardNo, i) == 0 ? "����" : "ֹͣ") + ", ";
                label_position.Text += "Axis" + i + "��"+ Convert.ToString(LTDMC.dmc_get_position(nCardNo, i)) + ", ";                
                label_input.Text += "IN" + (i + 1) + "��" + Convert.ToString(LTDMC.dmc_read_outbit(nCardNo, (UInt16)(i + 1))) + ", ";
                switch (i)
                {
                    case 0:
                        IOState = LTDMC.dmc_read_outbit(nCardNo, (UInt16)(i + 1));
                        checkBoxOut1.Checked = (IOState == 1 ? true : false);
                        checkBoxOut1.Text = (IOState == 1 ? "OUT1���ߵ�ƽ" : "OUT1���͵�ƽ");
                        break;
                    case 1:
                        IOState = LTDMC.dmc_read_outbit(nCardNo, (UInt16)(i + 1));
                        checkBoxOut2.Checked = (IOState == 1 ? true : false);
                        checkBoxOut2.Text = (IOState == 1 ? "OUT2���ߵ�ƽ" : "OUT2���͵�ƽ");
                        break;
                    case 2:
                        IOState = LTDMC.dmc_read_outbit(nCardNo, (UInt16)(i + 1));
                        checkBoxOut3.Checked = (IOState == 1 ? true : false);
                        checkBoxOut3.Text = (IOState == 1 ? "OUT3���ߵ�ƽ" : "OUT3���͵�ƽ");
                        break;
                    case 3:
                        IOState = LTDMC.dmc_read_outbit(nCardNo, (UInt16)(i + 1));
                        checkBoxOut4.Checked = (IOState == 1 ? true : false);
                        checkBoxOut4.Text = (IOState == 1 ? "OUT4���ߵ�ƽ" : "OUT4���͵�ƽ");
                        break;
                    default:
                        break;
                }
            }           
        }

        private void button_start_Click(object sender, EventArgs e)
        {
            if (LTDMC.dmc_check_done(nCardNo, nAxis) == 0) return;//�������У��򷵻�
                        
            UInt16 nDir = (UInt16)(checkBoxDir.Checked ? 1 : 0);

            double nStart = Convert.ToDouble(textBoxOSpd.Text);
            double nMSpeed = Convert.ToDouble(textBoxMSpd.Text);
            double nESpeed = Convert.ToDouble(textBoxESpd.Text);
            double nTAcc = Convert.ToDouble(textBoxTAcc.Text);
            double nTDec = Convert.ToDouble(textBoxTDec.Text);
            Int32 nPulse = Convert.ToInt32(textBoxPulse.Text);
            double nSpara = Convert.ToDouble(textBoxSpara.Text);

            //����λ�ñȽ�
            LTDMC.dmc_compare_set_config(nCardNo, nAxis, 1, 0);

            //����S��ϵ��
            LTDMC.dmc_set_s_profile(nCardNo, nAxis, 0,nSpara);

            //�����ٶȡ����ٶ�
            LTDMC.dmc_set_profile(nCardNo, nAxis, nStart, nMSpeed, nTAcc, nTDec, nESpeed);

            if (radioButtonM.Checked)//�����˶�
            {
                LTDMC.dmc_pmove(nCardNo, nAxis, nPulse * ((nDir == 0) ? -1 : 1), 0);
            }
            else if (radioButtonCM.Checked)//�����˶�
            {
                LTDMC.dmc_vmove(nCardNo, nAxis, nDir);               
            }
                   
        }

        private void button_clear_Click(object sender, EventArgs e)
        {
            //λ������
            LTDMC.dmc_set_position(nCardNo, nAxis, 0);
        }

        private void button_stop_Click(object sender, EventArgs e)
        {
            //����ֹͣ
            LTDMC.dmc_stop(nCardNo, nAxis, 0);         
        }                

        private void checkBoxDir_CheckedChanged(object sender, EventArgs e)
        {
            checkBoxDir.Text = (checkBoxDir.Checked ? "����������" : "�������򣺸�");
        }

        private void checkBoxOut1_CheckedChanged(object sender, EventArgs e)
        {
            checkBoxOut1.Text = (checkBoxOut1.Checked ? "OUT1���ߵ�ƽ" : "OUT1���͵�ƽ");
            LTDMC.dmc_write_outbit(nCardNo, 1, (UInt16)(checkBoxOut1.Checked ? 1 : 0));
        }

        private void checkBoxOut2_CheckedChanged(object sender, EventArgs e)
        {
            checkBoxOut2.Text = (checkBoxOut2.Checked ? "OUT2���ߵ�ƽ" : "OUT2���͵�ƽ");
            LTDMC.dmc_write_outbit(nCardNo, 2, (UInt16)(checkBoxOut2.Checked ? 1 : 0));
        }

        private void checkBoxOut3_CheckedChanged(object sender, EventArgs e)
        {
            checkBoxOut3.Text = (checkBoxOut3.Checked ? "OUT3���ߵ�ƽ" : "OUT3���͵�ƽ");
            LTDMC.dmc_write_outbit(nCardNo, 3, (UInt16)(checkBoxOut3.Checked ? 1 : 0));            
        }

        private void checkBoxOut4_CheckedChanged(object sender, EventArgs e)
        {
            checkBoxOut4.Text = (checkBoxOut4.Checked ? "OUT4���ߵ�ƽ" : "OUT4���͵�ƽ");
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
            //���߱���
            LTDMC.dmc_change_speed(nCardNo, nAxis, m_nSpeed, 0);
        }

        private void BUTTON_RESETPOS_Click(object sender, EventArgs e)
        {
            Int32 dist = Convert.ToInt32(textBoxPulse.Text)*(checkBoxDir.Checked ? 1 : -1);
            //���߱�λ
            LTDMC.dmc_reset_target_position(nCardNo, nAxis, dist, 0);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            LTDMC.dmc_emg_stop(nCardNo);
        }

        private void ClearCompareButton_Click(object sender, EventArgs e)
        {
            //��ֹλ�ñȽ�
            LTDMC.dmc_compare_set_config(nCardNo, nAxis, 0, 0);
            //����Ƚϵ�
            LTDMC.dmc_compare_clear_points(nCardNo, nAxis);
        }

        private void AddCompareButton_Click(object sender, EventArgs e)
        {
            UInt16 nDir = (UInt16)(checkBoxDir.Checked ? 1 : 0);
            Int32 nPulse = Convert.ToInt32(textBoxPulse.Text);
            //��ӱȽϵ�
            LTDMC.dmc_compare_add_point(nCardNo, nAxis, nPulse * ((nDir == 0) ? -1 : 1), 0, 3, 1);
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }            
    }
}