Imports System.Windows.Forms



Public Class Dialog1
    Public m_UseAxis As Short
    Public m_UseCard As Short

    Private Sub OK_Button_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles OK_Button.Click
        Me.DialogResult = System.Windows.Forms.DialogResult.OK
        Me.Close()
    End Sub

    Private Sub Cancel_Button_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Cancel_Button.Click
        Me.DialogResult = System.Windows.Forms.DialogResult.Cancel
        Me.Close()
    End Sub

    Private Sub Dialog1_FormClosed(ByVal sender As Object, ByVal e As System.Windows.Forms.FormClosedEventArgs) Handles Me.FormClosed
        Dim INUM As Integer

        dmc_board_close()
        INUM = 20
    End Sub

    Private Sub Dialog1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Dim n As Short
        Dim i As Short


        n = dmc_board_init()                  '���ƿ��ĳ�ʼ�����������ú����ʹ��dmc_board_close�رտ���
        '�м䲻���ٴε��øó�ʼ��������

        If (n <= 0) Or (n > 8) Then             '�����Ŀ�����1- 8֮��
            MsgBox("��ʼ��LTDMC��ʧ�ܣ�", vbOKOnly, "����")
        End If
        m_UseCard = 0
        m_UseAxis = 0                           'Ĭ��ѡ��X��

        dmc_set_pulse_outmode(m_UseCard, m_UseAxis, 0)    '�趨�������ģʽ

        For i = 0 To 3
            dmc_set_position(m_UseCard, i, 0)
        Next

        Timer1.Enabled = True
    End Sub

    Private Sub BUTTON_MOVE_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BUTTON_MOVE.Click
        Dim m_nStart As Double
        Dim m_nSpeed As Double
        Dim fAcc As Double
        Dim dist As Int32

        m_nStart = Val(Text_STRSPD.Text)  '��ȡ������Ϣ
        m_nSpeed = Val(Text_RUNSPD.Text)
        fAcc = Val(Text_Tacc.Text)
        dist = Val(Text_Dist.Text)

        dmc_set_profile(m_UseCard, m_UseAxis, m_nStart, m_nSpeed, fAcc, fAcc, 0)   '�����ٶȡ����ٶ�

        dmc_pmove(m_UseCard, m_UseAxis, dist, 0)            '�����t���˶�
    End Sub

    Private Sub Button_Close_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button_Close.Click
        Me.Close()
    End Sub

    Private Sub Button_DelStop_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button_DelStop.Click
        dmc_stop(m_UseCard, m_UseAxis, 0)
    End Sub

    Private Sub Button_EmgStop_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button_EmgStop.Click
        dmc_emg_stop(m_UseCard)
    End Sub

    Private Sub OptionMoveAxis1_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles OptionMoveAxis1.CheckedChanged
        m_UseAxis = 0
    End Sub

    Private Sub OptionMoveAxis2_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles OptionMoveAxis2.CheckedChanged
        m_UseAxis = 1

    End Sub

    Private Sub OptionMoveAxis3_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles OptionMoveAxis3.CheckedChanged
        m_UseAxis = 2
    End Sub

    Private Sub OptionMoveAxis4_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles OptionMoveAxis4.CheckedChanged
        m_UseAxis = 3
    End Sub

    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick

        Dim pos As Int32
        Dim str_DisplayPos As String
        Dim cardStatus As Boolean

        pos = dmc_get_position(m_UseCard, 0)          '��ʾλ����Ϣ
        str_DisplayPos = "X=" + Str(pos)
        pos = dmc_get_position(m_UseCard, 1)
        str_DisplayPos = str_DisplayPos + "   Y=" + Str(pos)
        pos = dmc_get_position(m_UseCard, 2)
        str_DisplayPos = str_DisplayPos + "   Z=" + Str(pos)
        pos = dmc_get_position(m_UseCard, 3)
        str_DisplayPos = str_DisplayPos + "  U=" + Str(pos)
        Label_POSITION.Text = str_DisplayPos

        cardStatus = (1 = dmc_check_done(m_UseCard, 0)) And (1 = dmc_check_done(m_UseCard, 1)) And (1 = dmc_check_done(m_UseCard, 2)) And (1 = dmc_check_done(m_UseCard, 3))

        'If cardStatus Then                   '��ʾ�������
        '    Lable_STATUS.Caption = "ֹͣ"
        'Else
        '    Lable_STATUS.Caption = "����"
        'End If
    End Sub

    Private Sub Button_CLEAN_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button_CLEAN.Click
        dmc_set_position(m_UseCard, m_UseAxis, 0)
    End Sub
End Class
