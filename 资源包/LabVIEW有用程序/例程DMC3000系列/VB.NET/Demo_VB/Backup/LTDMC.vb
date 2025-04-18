Module ModuleCard
    '�忨����
    ''' <summary>
    ''' ���ƿ���ʼ������
    ''' </summary>
    ''' <returns>����0��������С��0������ֵ��1��ʾ�����غţ�����0��û�ҵ����ƿ�Ӳ�����ʼ��ʧ��</returns>
    ''' <remarks></remarks>
    Declare Function dmc_board_init Lib "LTDMC.dll" () As Int16
    ''' <summary>
    ''' ���ƿ��رպ��� ��Դ�ͷ�
    ''' </summary>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_board_close Lib "LTDMC.dll" () As Int16
    ''' <summary>
    ''' ���ƿ�Ӳ����λ
    ''' </summary>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_board_reset Lib "LTDMC.dll" () As Int16
    ''' <summary>
    ''' ��ȡ��ʼ������ƿ���Ϣ
    ''' </summary>
    ''' <param name="CardNum">��ʼ���ɹ��Ŀ���</param>
    ''' <param name="CardTypeList">�������б������Ͳ���16���Ʊ�ʾ����0x5410,0x5800</param>
    ''' <param name="CardIdList">��ID�б�</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_CardInfList Lib "LTDMC.dll" (ByRef CardNum As UInt16, ByRef CardTypeList As UInt32, ByRef CardIdList As UInt16) As Int16
    ''' <summary>
    ''' ��ȡ���ƿ��汾��Ϣ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="CardVersion">���ƿ�Ӳ���汾��</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_card_version Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByRef CardVersion As UInt32) As Int16
    ''' <summary>
    ''' 
    ''' </summary>
    ''' <param name="CardNo"></param>
    ''' <param name="FirmID">���ƿ��̼�����</param>
    ''' <param name="SubFirmID">���ƿ��̼��汾��</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_card_soft_version Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByRef FirmID As UInt32, ByRef SubFirmID As UInt32) As Int16
    ''' <summary>
    ''' ��ȡ��̬��汾�� �����ڱ�ʾ
    ''' </summary>
    ''' <param name="LibVer">�汾��</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_card_lib_version Lib "LTDMC.dll" (ByRef LibVer As Int32) As Int16
    ''' <summary>
    ''' ���ú����⺯�����ò�����ӡ���ģʽ
    ''' </summary>
    ''' <param name="mode">��ӡ���ģʽ��0-�������1-���</param>
    ''' <param name="FileName">�ļ�������Ի���Ե�ַ�ļ�</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_debug_mode Lib "LTDMC.dll" (ByVal mode As UIn16,ByRef FileName As String) As Int16
    ''' <summary>
    ''' ��ȡ�����⺯�����ò�����ӡ���ģʽ
    ''' </summary>
    ''' <param name="mode">��ӡ���ģʽ��0-�������1-���</param>
    ''' <param name="FileName">�ļ�������Ի���Ե�ַ�ļ�</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_debug_mode Lib "LTDMC.dll" (ByVal mode As UIn16,ByRef FileName As String) As Int16
    '�������
    ''' <summary>
    ''' ����У�� ʧ��3��֮�� �޷��ٴ�У��
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="check_sn">������</param>
    ''' <returns>У��״̬��0-ʧ�ܣ�1-�ɹ�</returns>
    ''' <remarks></remarks>
    Declare Function dmc_check_sn Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByRef check_sn As String) As Int16
    ''' <summary>
    ''' �����޸�
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="new_sn">������</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_write_sn Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByRef new_sn As String) As Int16
    '���ز����ļ�
    ''' <summary>
    ''' ���ز����ļ�
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="FileName">�ļ�������Ի���Ե�ַ�ļ�</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_download_configfile Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByRef FileName As String) As Int16
    '���ع̼��ļ�
    ''' <summary>
    ''' ���ع̼��ļ�
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="FileName">�ļ�������Ի���Ե�ַ�ļ�</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_download_firmware Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByRef FileName As String) As Int16
    ''' <summary>
    ''' ��ȡ���ƿ�����
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="TotalAxis">����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_total_axes Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByRef TotalAxis As UInt32) As Int16

    '3800 5800ר�� ��IOӳ������
    ''' <summary>
    ''' ������IOӳ��
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="IoType">��IO�ź�����</param>
    ''' <param name="MapIoType">��IOӳ��IO������</param>
    ''' <param name="MapIoIndex">��IOӳ��IO�ں�</param>
    ''' <param name="Filter">�˲�ʱ�䣬��λs</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_axis_io_map Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal IoType As UInt16, ByVal MapIoType As UInt16, ByVal MapIoIndex As UInt16, ByVal Filter As Double) As Int16
    ''' <summary>
    ''' ��ȡ��IOӳ��
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="IoType">��IO�ź�����</param>
    ''' <param name="MapIoType">��IOӳ��IO������</param>
    ''' <param name="MapIoIndex">��IOӳ��IO�ں�</param>
    ''' <param name="Filter">�˲�ʱ�䣬��λs</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_axis_io_map Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal IoType As UInt16, ByRef MapIoType As UInt16, ByRef MapIoIndex As UInt16, ByRef Filter As Double) As Int16
    ''' <summary>
    ''' ��������ר��IO�˲�ʱ��
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="filter_time">�˲�ʱ�䣬��λs</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_special_input_filter Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal filter_time As Double) As Int16

    'DMC3800ר�� ����IOӳ��  ���ڶ�ȡ�˲����IO�ڵ�ƽ״̬
    ''' <summary>
    ''' ��������IOӳ��
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="bitno">����IO�ںţ�0-15</param>
    ''' <param name="MapIoType">��IOӳ��IO������</param>
    ''' <param name="MapIoIndex">��IOӳ��IO�ں�</param>
    ''' <param name="Filter">�˲�ʱ�䣬��λs</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_io_map_virtual Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal bitno As UInt16, ByVal MapIoType As UInt16, ByVal MapIoIndex As UInt16, ByVal Filter As Double) As Int16
    ''' <summary>
    ''' ��ȡ����IOӳ��
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="bitno">����IO�ںţ�0-15</param>
    ''' <param name="MapIoType">��IOӳ��IO������</param>
    ''' <param name="MapIoIndex">��IOӳ��IO�ں�</param>
    ''' <param name="Filter">�˲�ʱ�䣬��λs</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_io_map_virtual Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal bitno As UInt16, ByRef MapIoType As UInt16, ByRef MapIoIndex As UInt16, ByRef Filter As Double) As Int16
    ''' <summary>
    ''' ��ȡ�˲����IO����״̬
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="bitno">����IO�ںţ�0-15</param>
    ''' <returns>����״̬��0-�͵�ƽ��1-�ߵ�ƽ</returns>
    ''' <remarks></remarks>
    Declare Function dmc_read_inbit_virtual Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal bitno As UInt16) As Int16

    '��λ/�쳣����
    ''' <summary>
    ''' ��������λ����
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7></param>
    ''' <param name="enable">ʹ�ܣ�0-��ֹ��1-����</param>
    ''' <param name="source_sel">λ��Դ��0-ָ��λ�ã�1-������λ��</param>
    ''' <param name="SL_action">�ƶ���ʽ��0-����ֹͣ��1-����ֹͣ</param>
    ''' <param name="N_limit">����λֵ</param>
    ''' <param name="P_limit">����λֵ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_softlimit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal enable As UInt16, ByVal source_sel As UInt16, ByVal SL_action As UInt16, ByVal N_limit As Int32, ByVal P_limit As Int32) As Int16  '��������λ����
    ''' <summary>
    ''' ��ȡ����λ����
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7></param>
    ''' <param name="enable">ʹ�ܣ�0-��ֹ��1-����</param>
    ''' <param name="source_sel">λ��Դ��0-ָ��λ�ã�1-������λ��</param>
    ''' <param name="SL_action">�ƶ���ʽ��0-����ֹͣ��1-����ֹͣ</param>
    ''' <param name="N_limit">����λֵ</param>
    ''' <param name="P_limit">����λֵ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_softlimit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef enable As UInt16, ByRef source_sel As UInt16, ByRef SL_action As UInt16, ByRef N_limit As Int32, ByRef P_limit As Int32) As Int16    '��ȡ����λ����
    ''' <summary>
    ''' ����Ӳ����λģʽ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="el_enable">ʹ�ܣ�0-��ֹ��1-����</param>
    ''' <param name="el_logic">��Ч��ƽ��0-�͵�ƽ��1-�ߵ�ƽ</param>
    ''' <param name="el_mode">�ƶ���ʽ��0-����ֹͣ��1-����ֹͣ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_el_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal el_enable As UInt16, ByVal el_logic As UInt16, ByVal el_mode As UInt16) As Int16      '����EL�ź�
    ''' <summary>
    ''' ��ȡӲ����λģʽ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="el_enable">ʹ�ܣ�0-��ֹ��1-����</param>
    ''' <param name="el_logic">��Ч��ƽ��0-�͵�ƽ��1-�ߵ�ƽ</param>
    ''' <param name="el_mode">�ƶ���ʽ��0-����ֹͣ��1-����ֹͣ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_el_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef el_enable As UInt16, ByRef el_logic As UInt16, ByRef el_mode As UInt16) As Int16   '��ȡ����EL�ź�
    ''' <summary>
    ''' ����Ӳ����ͣģʽ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="enable">ʹ�ܣ�0-��ֹ��1-����</param>
    ''' <param name="emg_logic">��Ч��ƽ��0-�͵�ƽ��1-�ߵ�ƽ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_emg_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal enable As UInt16, ByVal emg_logic As UInt16) As Int16    '����EMG�ź�
    ''' <summary>
    ''' ��ȡӲ����ͣģʽ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="enable">ʹ�ܣ�0-��ֹ��1-����</param>
    ''' <param name="emg_logic">��Ч��ƽ��0-�͵�ƽ��1-�ߵ�ƽ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_emg_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef enable As UInt16, ByRef emg_logic As UInt16) As Int16        '��ȡ����EMG�ź�
    '3800 5800ר�� �ⲿ����ֹͣ�źż�����ֹͣʱ������
    ''' <summary>
    ''' �����ⲿIO����ֹͣģʽ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="enable">ʹ�ܣ�0-��ֹ��1-����</param>
    ''' <param name="logic">��Ч��ƽ��0-�͵�ƽ��1-�ߵ�ƽ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_io_dstp_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal enable As UInt16, ByVal logic As UInt16) As Int16
    ''' <summary>
    ''' ��ȡ�ⲿIO����ֹͣģʽ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="enable">ʹ�ܣ�0-��ֹ��1-����</param>
    ''' <param name="logic">��Ч��ƽ��0-�͵�ƽ��1-�ߵ�ƽ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_io_dstp_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef enable As UInt16, ByRef logic As UInt16) As Int16
    ''' <summary>
    ''' ���ü���ֹͣʱ�䣬������м���ֹͣ��Ч
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="stop_time">ֹͣʱ�䣬��λs</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_dec_stop_time Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef stop_time As Double) As Int16
    ''' <summary>
    ''' ��ȡ����ֹͣʱ�䣬������м���ֹͣ��Ч
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="stop_time">ֹͣʱ�䣬��λs</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_dec_stop_time Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef stop_time As Double) As Int16

    '�ٶ�����
    ''' <summary>
    ''' ���õ����ٶȲ���
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="Min_Vel">��ʼ�ٶ�</param>
    ''' <param name="Max_Vel">�����ٶ�</param>
    ''' <param name="Tacc">����ʱ�䣬��λs</param>
    ''' <param name="Tdec">����ʱ�䣬��λs</param>
    ''' <param name="Stop_vel">ֹͣ�ٶ�</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_profile Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal Min_Vel As Double, ByVal Max_Vel As Double, ByVal Tacc As Double, ByVal Tdec As Double, ByVal Stop_vel As Double) As Int16 '�趨�ٶ����߲���
    ''' <summary>
    ''' ��ȡ�����ٶȲ���
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="Min_Vel">��ʼ�ٶ�</param>
    ''' <param name="Max_Vel">�����ٶ�</param>
    ''' <param name="Tacc">����ʱ�䣬��λs</param>
    ''' <param name="Tdec">����ʱ�䣬��λs</param>
    ''' <param name="Stop_vel">ֹͣ�ٶ�</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_profile Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef Min_Vel As Double, ByRef Max_Vel As Double, ByRef Tacc As Double, ByRef Tdec As Double, ByRef Stop_vel As Double) As Int16 '��ȡ�ٶ����߲���
    ''' <summary>
    ''' ����S�ٶ����߲���
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="s_mode">s�β���ģʽ��0</param>
    ''' <param name="s_para">s��ʱ�䣬��λs</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_s_profile Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal s_mode As UInt16, ByVal s_para As Double) As Int16        '����ƽ���ٶ����߲���
    ''' <summary>
    ''' ����S�ٶ����߲���
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="s_mode">s�β���ģʽ��0</param>
    ''' <param name="s_para">s��ʱ�䣬��λs</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_s_profile Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal s_mode As UInt16, ByRef s_para As Double) As Int16    '��ȡƽ���ٶ����߲���
    ''' <summary>
    ''' ���õ��β岹�ٶȲ���
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="Min_Vel">��ʼ�ٶ�</param>
    ''' <param name="Max_Vel">�����ٶ�</param>
    ''' <param name="Tacc">����ʱ�䣬��λs</param>
    ''' <param name="Tdec">����ʱ�䣬��λs</param>
    ''' <param name="Stop_vel">ֹͣ�ٶ�</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_vector_profile_multicoor Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal Min_Vel As Double, ByVal Max_Vel As Double, ByVal Tacc As Double, ByVal Tdec As Double, ByVal Stop_vel As Double) As Int16
    ''' <summary>
    ''' ��ȡ���β岹�ٶȲ���
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="Min_Vel">��ʼ�ٶ�</param>
    ''' <param name="Max_Vel">�����ٶ�</param>
    ''' <param name="Tacc">����ʱ�䣬��λs</param>
    ''' <param name="Tdec">����ʱ�䣬��λs</param>
    ''' <param name="Stop_vel">ֹͣ�ٶ�</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_vector_profile_multicoor Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByRef Min_Vel As Double, ByRef Max_Vel As Double, ByRef Tacc As Double, ByRef Tdec As Double, ByRef Stop_vel As Double) As Int16

    '�˶�ģ������ģʽ
    ''' <summary>
    ''' ��������ģʽ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="outmode">�������ģʽ��0-5</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_pulse_outmode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal outmode As UInt16) As Int16    '�趨�������ģʽ
    ''' <summary>
    ''' ��ȡ����ģʽ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="outmode">�������ģʽ��0-5</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_pulse_outmode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef outmode As UInt16) As Int16      '��ȡ�������ģʽ

    '�����˶�
    '��λ�˶�
    ''' <summary>
    ''' ���ᶨ���˶�
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="Dist">Ŀ��λ��</param>
    ''' <param name="posi_mode">λ��ģʽ��0-��ԣ�1-����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_pmove Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal Dist As Int32, ByVal posi_mode As UInt16) As Int16  'ָ����������λ���˶�
    ''' <summary>
    ''' ���߱�λ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="Dist">Ŀ��λ��</param>
    ''' <param name="posi_mode">λ��ģʽ��0 ����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_reset_target_position Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal Dist As Int32, ByVal posi_mode As UInt16) As Int16  '�˶��иı�Ŀ��λ��
    ''' <summary>
    ''' ���߱���
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="Curr_Vel">���ٶ�ֵ</param>
    ''' <param name="Taccdec">�¼Ӽ���ʱ�䣬��λs</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_change_speed Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal Curr_Vel As Double, ByVal Taccdec As Double) As Int16        '���߸ı�ָ����ĵ�ǰ�˶��ٶ�
    ''' <summary>
    ''' ǿ�Ʊ�λ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="Dist">Ŀ��λ��</param>
    ''' <param name="posi_mode">λ��ģʽ��0 ����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_update_target_position Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal Dist As Int32, ByVal posi_mode As UInt16) As Int16  'ǿ�иı�Ŀ��λ��
    'JOG�˶�
    ''' <summary>
    ''' �ٶ��˶�
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="dir">�˶�����0-������1-������</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_vmove Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal dir As UInt16) As Int16    'ָ�����������˶�
    'PVT�˶�
    ''' <summary>
    ''' PVT�˶�����
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="Count">��������Ԫ�ظ���</param>
    ''' <param name="pTime">ʱ���������飬��λs</param>
    ''' <param name="pPos">λ����������</param>
    ''' <param name="pVel">�ٶ���������</param>
    ''' <returns></returns>
    ''' <remarks></remarks>
    Declare Function dmc_PvtTable Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal Count As Int32, ByRef pTime As Double, ByRef pPos As Int32, ByRef pVel As Double) As Int16
    ''' <summary>
    ''' PTS�˶�����
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="Count">��������Ԫ�ظ���</param>
    ''' <param name="pTime">ʱ���������飬��λs</param>
    ''' <param name="pPos">λ����������</param>
    ''' <param name="pPercent">���ٶȱ仯�ٷֱ���������</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_PtsTable Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal Count As Int32, ByRef pTime As Double, ByRef pPos As Int32, ByRef pPercent As Double) As Int16
    ''' <summary>
    ''' PVTS�˶�����
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="Count">��������Ԫ�ظ���</param>
    ''' <param name="pTime">ʱ���������飬��λs</param>
    ''' <param name="pPos">λ����������</param>
    ''' <param name="velBegin">��ʼ�ٶ�</param>
    ''' <param name="velEnd">ֹͣ�ٶ�</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_PvtsTable Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal Count As Int32, ByRef pTime As Double, ByRef pPos As Int32, ByVal velBegin As Double, ByVal velEnd As Double) As Int16
    ''' <summary>
    ''' PTT�˶�����
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="Count">��������Ԫ�ظ���</param>
    ''' <param name="pTime">ʱ���������飬��λs</param>
    ''' <param name="pPos">λ����������</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_PttTable Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal Count As Int32, ByRef pTime As Double, ByRef pPos As Int32) As Int16
    ''' <summary>
    ''' PVT�����˶�
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="AxisNum">������1-8</param>
    ''' <param name="AxisList">���б�</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_PvtMove Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal AxisNum As UInt16, ByRef AxisList As UInt16) As Int16

    '�����˶�
    'ֱ�߲岹
    ''' <summary>
    ''' ����ֱ�߲岹
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="AxisNum">������2-8</param>
    ''' <param name="AxisList">���б�</param>
    ''' <param name="DistList">Ŀ��λ���б�</param>
    ''' <param name="posi_mode">λ��ģʽ��0-��ԣ�1-����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_line_multicoor Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal AxisNum As UInt16, ByRef AxisList As UInt16, ByRef DistList As Int32, ByVal posi_mode As UInt16) As Int16     'ָ����ֱ�߲岹�˶�
    'ƽ��Բ��
    ''' <summary>
    ''' 2�ᵥ��Բ���岹
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="AxisList">���б�</param>
    ''' <param name="Target_Pos">Ŀ��λ��</param>
    ''' <param name="Cen_Pos">Բ��λ��</param>
    ''' <param name="Arc_Dir">Բ������0-˳ʱ�룬1-��ʱ��</param>
    ''' <param name="posi_mode">λ��ģʽ��0-��ԣ�1-����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_arc_move_multicoor Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByRef AxisList As UInt16, ByRef Target_Pos As Int32, ByRef Cen_Pos As Int32, ByVal Arc_Dir As UInt16, ByVal posi_mode As UInt16) As Int16

    '�����˶�
    ''' <summary>
    ''' ����ԭ���ź�
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="org_logic">��Ч��ƽ��0-�͵�ƽ��1-�ߵ�ƽ</param>
    ''' <param name="Filter">�˲�ʱ�䣺0 ����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_home_pin_logic Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal org_logic As UInt16, ByVal Filter As Double) As Int16         '����HOME�ź�
    ''' <summary>
    ''' ��ȡԭ���ź�
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="org_logic">��Ч��ƽ��0-�͵�ƽ��1-�ߵ�ƽ</param>
    ''' <param name="Filter">�˲�ʱ�䣺0 ����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_home_pin_logic Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef org_logic As UInt16, ByRef Filter As Double) As Int16     '��ȡ����HOME�ź�
    ''' <summary>
    ''' ���û���ģʽ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="home_dir">���㷽��0-������1-������</param>
    ''' <param name="vel_mode">�����ٶ�ģʽ��0-���ٻ��㣬1-���ٻ���</param>
    ''' <param name="home_mode">����ģʽ��0-һ�λ��㣬1-һ�λ���+���ң�2-���λ��㣬3-һ�λ���+һ��EZ���㣬4-һ��EZ����</param>
    ''' <param name="EZ_count">EZ������1 ����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_homemode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal home_dir As UInt16, ByVal vel_mode As Double, ByVal home_mode As UInt16, ByVal EZ_count As UInt16) As Int16 '�趨ָ����Ļ�ԭ��ģʽ
    ''' <summary>
    ''' ��ȡ����ģʽ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="home_dir">���㷽��0-������1-������</param>
    ''' <param name="vel_mode">�����ٶ�ģʽ��0-���ٻ��㣬1-���ٻ���</param>
    ''' <param name="home_mode">����ģʽ��0-һ�λ��㣬1-һ�λ���+���ң�2-���λ��㣬3-һ�λ���+һ��EZ���㣬4-һ��EZ����</param>
    ''' <param name="EZ_count">EZ������1 ����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_homemode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef home_dir As UInt16, ByRef vel_mode As Double, ByRef home_mode As UInt16, ByRef EZ_count As UInt16) As Int16 '��ȡָ����Ļ�ԭ��ģʽ
    ''' <summary>
    ''' �����˶�
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_home_move Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int16

    'ԭ������
    '3800 5800ר��
    ''' <summary>
    ''' ����ԭ������ģʽ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="enable">ʹ�ܣ�0-��ֹ��1-����</param>
    ''' <param name="logic">���津����ʽ��0-�½��ش�����1-�����ش���</param>
    ''' <param name="source">����Դ��0-ָ��λ�ã�1-����λ��</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_homelatch_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal enable As UInt16, ByVal logic As UInt16, ByVal source As UInt16) As Int16
    ''' <summary>
    ''' ��ȡԭ������ģʽ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="enable">ʹ�ܣ�0-��ֹ��1-����</param>
    ''' <param name="logic">���津����ʽ��0-�½��ش�����1-�����ش���</param>
    ''' <param name="source">����Դ��0-ָ��λ�ã�1-����λ��</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_homelatch_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef enable As UInt16, ByRef logic As UInt16, ByRef source As UInt16) As Int16
    ''' <summary>
    ''' ��ȡԭ������״̬
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <returns>����״̬��0-δ���棬1-������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_homelatch_flag Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int32
    ''' <summary>
    ''' ���ԭ������״̬
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_reset_homelatch_flag Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int16
    ''' <summary>
    ''' ��ȡԭ������ֵ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_homelatch_value Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int32

    '�����˶�
    '3800 5800ר�� ����ͨ��ѡ��
    ''' <summary>
    ''' ��������ͨ��
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="index">����ͨ����0-����ͨ����1-����ͨ��</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_handwheel_channel Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal index As UInt16) As Int16
    ''' <summary>
    ''' ��ȡ����ͨ��
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="index">����ͨ����0-����ͨ����1-����ͨ��</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_handwheel_channel Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByRef index As UInt16) As Int16
    'һ�������źſ��Ƶ������˶�
    ''' <summary>
    ''' ��������ģʽ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="inmode">����ģʽ��0-AB�࣬1-����+����</param>
    ''' <param name="multi">���ʣ�[-100,100],��ֵ��ʾ����</param>
    ''' <param name="vh">����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_handwheel_inmode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal inmode As UInt16, ByVal multi As Int32, ByVal vh As Double) As Int16      '�����������������źŵĹ�����ʽ
    ''' <summary>
    ''' ��ȡ����ģʽ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="inmode">����ģʽ��0-AB�࣬1-����+����</param>
    ''' <param name="multi">���ʣ�[-100,100],��ֵ��ʾ����</param>
    ''' <param name="vh">����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_handwheel_inmode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef inmode As UInt16, ByRef multi As Int32, ByRef vh As Double) As Int16    '��ȡ�������������źŵĹ�����ʽ
    '3800 5800ר�� һ�������źſ��ƶ����˶�
    ''' <summary>
    ''' ���ö����������ģʽ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="inmode">����ģʽ��0-AB�࣬1-����+����</param>
    ''' <param name="AxisNum">������1-8</param>
    ''' <param name="AxisList">�����������б�</param>
    ''' <param name="multi">���汶���б�[-100,100],��ֵ��ʾ����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_handwheel_inmode_extern Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal inmode As UInt16, ByVal AxisNum As UInt16, ByRef AxisList As UInt16, ByRef multi As Int32) As Int16     '�����������������źŵĹ�����ʽ
    ''' <summary>
    ''' ��ȡ�����������ģʽ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="inmode">����ģʽ��0-AB�࣬1-����+����</param>
    ''' <param name="AxisNum">������1-8</param>
    ''' <param name="AxisList">�����������б�</param>
    ''' <param name="multi">���汶���б�[-100,100],��ֵ��ʾ����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_handwheel_inmode_extern Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByRef inmode As UInt16, ByRef AxisNum As UInt16, ByRef AxisList As UInt16, ByRef multi As Int32) As Int16   '��ȡ�������������źŵĹ�����ʽ
    '���������˶�
    ''' <summary>
    ''' ���������˶�
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_handwheel_move Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int16         '����ָ��������������˶�
    '������
    ''' <summary>
    ''' ���ñ�����ģʽ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="mode">����������ģʽ��0-����+����1-1��AB�࣬2-1��AB��,3-4��AB��</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_counter_inmode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal mode As UInt16) As Int16      '�趨�������ļ�����ʽ
    ''' <summary>
    ''' ��ȡ������ģʽ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="mode">����������ģʽ��0-����+����1-1��AB�࣬2-1��AB��,3-4��AB��</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_counter_inmode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef mode As UInt16) As Int16        '��ȡ�������ļ�����ʽ
    ''' <summary>
    ''' ��ȡ����������ֵ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <returns>����ֵ</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_encoder Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int32
    ''' <summary>
    ''' ���ñ�����λ��ֵ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="encoder_value">λ��ֵ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_encoder Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal encoder_value As Int32) As Int16
    ''' <summary>
    ''' ����EZ�ź�ģʽ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="ez_logic">��Ч��ƽ��0-�͵�ƽ��1-�ߵ�ƽ</param>
    ''' <param name="ez_mode">������0</param>
    ''' <param name="Filter">������0</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_ez_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal ez_logic As UInt16, ByVal ez_mode As UInt16, ByVal Filter As Double) As Int16       '����EZ�ź�
    ''' <summary>
    ''' ��ȡEZ�ź�ģʽ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="ez_logic">��Ч��ƽ��0-�͵�ƽ��1-�ߵ�ƽ</param>
    ''' <param name="ez_mode">������0</param>
    ''' <param name="Filter">������0</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_ez_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef ez_logic As UInt16, ByRef ez_mode As UInt16, ByRef Filter As Double) As Int16     '��ȡ����EZ�ź�
    '����
    ''' <summary>
    ''' ���������ź�ģʽ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="ltc_logic">LTC �źŵĴ�����ʽ��0���½������棬1������������</param>
    ''' <param name="ltc_mode">������0</param>
    ''' <param name="Filter">������0</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_ltc_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal ltc_logic As UInt16, ByVal ltc_mode As UInt16, ByVal Filter As Double) As Int16    '����LTC�ź�
    ''' <summary>
    ''' ��ȡ�����ź�ģʽ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="ltc_logic">LTC �źŵĴ�����ʽ��0���½������棬1������������</param>
    ''' <param name="ltc_mode">������0</param>
    ''' <param name="Filter">������0</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_ltc_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef ltc_logic As UInt16, ByRef ltc_mode As UInt16, ByRef Filter As Double) As Int16  '��ȡ����LTC�ź�
    ''' <summary>
    ''' ��������ģʽ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="all_enable">����ģʽ��0-���ᵥ�����棬1-������ͬʱ�������棬2-�����������棬3-�ⲿ������ʱ��ͣ</param>
    ''' <param name="latch_source">����Դ��0-ָ��λ�ã�1-����λ��</param>
    ''' <param name="latch_channel">������0</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_latch_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal all_enable As UInt16, ByVal latch_source As UInt16, ByVal latch_channel As UInt16) As Int16     '�������淽ʽ
    ''' <summary>
    ''' ��ȡ����ģʽ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="all_enable">����ģʽ��0-���ᵥ�����棬1-������ͬʱ�������棬2-�����������棬3-�ⲿ������ʱ��ͣ</param>
    ''' <param name="latch_source">����Դ��0-ָ��λ�ã�1-����λ��</param>
    ''' <param name="latch_channel">������0</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_latch_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef all_enable As UInt16, ByRef latch_source As UInt16, ByRef latch_channel As UInt16) As Int16
    ''' <summary>
    ''' ��ȡ����ֵ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <returns>����ֵ</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_latch_value Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int32           '��ȡ���ƿ�������ֵ������������ģʽ�¶�ȡһ�ο��ƿ�����Ч������������Զ���1,��������ֵ������PC��������
    ''' <summary>
    ''' ��ȡ�������
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_latch_flag Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int16             '��ȡ���ƿ�����Ч�������
    ''' <summary>
    ''' ��λ�������
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_reset_latch_flag Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int16       '��λ��־
    ''' <summary>
    ''' �������Ŷ�ȡ��������ֵ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="index">������</param>
    ''' <returns>����ֵ</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_latch_value_extern Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal index As UInt16) As Int32  '�������Ŷ�ȡPC���������ѱ��������ֵ������ʱ��Ὣ���ƿ��ڵ���Ч����ֵȫ��������PC��������
    ''' <summary>
    ''' ��ȡ�����������
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_latch_flag_extern Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int16            '��ȡPC���������ѱ����������ֵ����
    'DMC3410 5800ר�� LTC�˿ڴ�����ʱ��ͣʱ�� ��λus
    ''' <summary>
    ''' �����ⲿ������ʱ��ͣʱ��
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="time">��ʱ��ͣʱ�䣬��λus</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_latch_stop_time Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal time As Int32) As Int16
    ''' <summary>
    ''' ��ȡ�ⲿ������ʱ��ͣʱ��
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="time">��ʱ��ͣʱ�䣬��λus</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_latch_stop_time Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef time As Int32) As Int16
    'DMC3800 5800ר�� LTC�������
    ''' <summary>
    ''' ����LTC���淴�����ģʽ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="enable">ʹ�ܣ�0-��ֹ��1-����</param>
    ''' <param name="bitno">��������ڣ�0-15</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_SetLtcOutMode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal enable As UInt16, ByVal bitno As UInt16) As Int16
    ''' <summary>
    ''' ��ȡLTC���淴�����ģʽ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="enable">ʹ�ܣ�0-��ֹ��1-����</param>
    ''' <param name="bitno">��������ڣ�0-15</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_GetLtcOutMode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef enable As UInt16, ByRef bitno As UInt16) As Int16

    '�������λ�ñȽ�
    ''' <summary>
    ''' ���õ������λ�ñȽ�������
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="enable">ʹ�ܣ�0-��ֹ��1-����</param>
    ''' <param name="cmp_source">�Ƚ�Դ��0-ָ��λ�ã�1-����λ��</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_compare_set_config Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal enable As UInt16, ByVal cmp_source As UInt16) As Int16       '���ñȽ���
    ''' <summary>
    ''' ��ȡ�������λ�ñȽ�������
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="enable">ʹ�ܣ�0-��ֹ��1-����</param>
    ''' <param name="cmp_source">�Ƚ�Դ��0-ָ��λ�ã�1-����λ��</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_compare_get_config Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef enable As UInt16, ByRef cmp_source As UInt16) As Int16   '��ȡ���ñȽ���
    ''' <summary>
    ''' ���λ�ñȽ�λ��
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_compare_clear_points Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int16          '������бȽϵ�
    ''' <summary>
    ''' ��ӱȽ�λ��
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="pos">�Ƚ�λ��</param>
    ''' <param name="dir">�ȽϷ���0��С�ڵ��ڣ�1�����ڵ���0   �Ƚ�λ���뵱ǰλ�ñȽ�</param>
    ''' <param name="action">������������</param>
    ''' <param name="actpara">������������</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_compare_add_point Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal pos As Int32, ByVal dir As UInt16, ByVal action As UInt16, ByVal actpara As Int32) As Int16    '��ӱȽϵ�
    ''' <summary>
    ''' ��ȡ��ǰ�Ƚ�λ��
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="pos">�Ƚ�λ��</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_compare_get_current_point Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef pos As Int32) As Int16    '��ȡ��ǰ�Ƚϵ�
    ''' <summary>
    ''' ��ȡ�ѱȽϵ���
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="pointNum">�ѱȽϵ���</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_compare_get_points_runned Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef pointNum As Int32) As Int16       '��ѯ�Ѿ��ȽϹ��ĵ�
    ''' <summary>
    ''' ��ȡʣ��ȽϿռ�
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="pointNum">ʣ��ȽϿռ�</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_compare_get_points_remained Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef pointNum As Int32) As Int16     '��ѯ���Լ���ıȽϵ�����
    '��ά����λ�ñȽ�
    ''' <summary>
    ''' ���ö�ά�Ƚ�������
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="enable">ʹ�ܣ�0-��ֹ��1-����</param>
    ''' <param name="cmp_source">�Ƚ�Դ��0-ָ��λ�ã�1-����λ��</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_compare_set_config_extern Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal enable As UInt16, ByVal cmp_source As UInt16) As Int16           '���ñȽ���
    ''' <summary>
    ''' ��ȡ��ά�Ƚ�������
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="enable">ʹ�ܣ�0-��ֹ��1-����</param>
    ''' <param name="cmp_source">�Ƚ�Դ��0-ָ��λ�ã�1-����λ��</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_compare_get_config_extern Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByRef enable As UInt16, ByRef cmp_source As UInt16) As Int16           '��ȡ���ñȽ���
    ''' <summary>
    ''' �����ά�Ƚ�λ��
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_compare_clear_points_extern Lib "LTDMC.dll" (ByVal CardNo As UInt16) As Int16          '������бȽϵ�
    ''' <summary>
    ''' ��Ӷ�ά�Ƚ�λ��
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="pos">�Ƚ�λ�ã�xpos,ypos)</param>
    ''' <param name="dir">�ȽϷ���x_dir,y_dir)</param>
    ''' <param name="action">������������</param>
    ''' <param name="actpara">������������</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_compare_add_point_extern Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByRef axis As UInt16, ByRef pos As Int32, ByRef dir As UInt16, ByVal action As UInt16, ByVal actpara As Int32) As Int16          '�������λ�ñȽϵ�
    ''' <summary>
    ''' ��ȡ��ǰ�Ƚ�λ��
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="pos">�Ƚ�λ�ã�xpos,ypos)</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_compare_get_current_point_extern Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByRef pos As Int32) As Int16    '��ȡ��ǰ�Ƚϵ�
    ''' <summary>
    ''' ��ȡ�ѱȽϵ���
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="pointNum">�ѱȽϵ���</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_compare_get_points_runned_extern Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByRef pointNum As Int32) As Int16       '��ѯ�Ѿ��ȽϹ��ĵ�
    ''' <summary>
    ''' ��ȡʣ��ȽϿռ�
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="pointNum">ʣ��ȽϿռ�</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_compare_get_points_remained_extern Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByRef pointNum As Int32) As Int16      '��ѯ���Լ���Ķ�ά�Ƚϵ�����

    '�������λ�ñȽϺ���
    ''' <summary>
    ''' ���ø��ٱȽ�ģʽ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="hcmp">���ٱȽ����ţ�0-3</param>
    ''' <param name="cmp_mode">�Ƚ�ģʽ��0-��ֹ��1-���ڣ�2-С�ڣ�3-���ڣ�4-���У�5-����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_hcmp_set_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal hcmp As UInt16, ByVal cmp_mode As UInt16) As Int16
    ''' <summary>
    ''' ��ȡ���ٱȽ�ģʽ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="hcmp">���ٱȽ����ţ�0-3</param>
    ''' <param name="cmp_mode">�Ƚ�ģʽ��0-��ֹ��1-���ڣ�2-С�ڣ�3-���ڣ�4-���У�5-����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_hcmp_get_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal hcmp As UInt16, ByRef cmp_mode As UInt16) As Int16
    ''' <summary>
    ''' ���ø��ٱȽϲ���
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="hcmp">���ٱȽ����ţ�0-3</param>
    ''' <param name="axis">�Ƚ���ţ�0-7</param>
    ''' <param name="cmp_source">�Ƚ�Դ��0-ָ��λ�ã�1-����λ��</param>
    ''' <param name="cmp_logic">�Ƚ����״̬��0-�͵�ƽ��1-�ߵ�ƽ</param>
    ''' <param name="time">����ʱ�䣬��λus,��С1us</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_hcmp_set_config Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal hcmp As UInt16, ByVal axis As UInt16, ByVal cmp_source As UInt16, ByVal cmp_logic As UInt16, ByVal time As Int32) As Int16
    ''' <summary>
    ''' ��ȡ���ٱȽϲ���
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="hcmp">���ٱȽ����ţ�0-3</param>
    ''' <param name="axis">�Ƚ���ţ�0-7</param>
    ''' <param name="cmp_source">�Ƚ�Դ��0-ָ��λ�ã�1-����λ��</param>
    ''' <param name="cmp_logic">�Ƚ����״̬��0-�͵�ƽ��1-�ߵ�ƽ</param>
    ''' <param name="time">����ʱ�䣬��λus,��С1us</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_hcmp_get_config Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal hcmp As UInt16, ByRef axis As UInt16, ByRef cmp_source As UInt16, ByRef cmp_logic As UInt16, ByRef time As Int32) As Int16
    ''' <summary>
    ''' ��Ӹ��ٱȽ�λ��
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="hcmp">���ٱȽ����ţ�0-3</param>
    ''' <param name="cmp_pos">�Ƚ�λ��</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_hcmp_add_point Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal hcmp As UInt16, ByVal cmp_pos As Int32) As Int16
    ''' <summary>
    ''' ���ø��ٱȽ�����ģʽ����
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="hcmp">���ٱȽ����ţ�0-3</param>
    ''' <param name="Increment">�Ƚ�λ������ֵ</param>
    ''' <param name="Count">�Ƚϴ���</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_hcmp_set_liner Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal hcmp As UInt16, ByVal Increment As Int32, ByVal Count As Int32) As Int16
    ''' <summary>
    ''' ��ȡ���ٱȽ�����ģʽ����
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="hcmp">���ٱȽ����ţ�0-3</param>
    ''' <param name="Increment">�Ƚ�λ������ֵ</param>
    ''' <param name="Count">�Ƚϴ���</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_hcmp_get_liner Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal hcmp As UInt16, ByRef Increment As Int32, ByRef Count As Int32) As Int16
    ''' <summary>
    ''' ��ȡ���ٱȽϵ�ǰ״̬
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="hcmp">���ٱȽ����ţ�0-3</param>
    ''' <param name="remained_points">ʣ����ñȽϵ���</param>
    ''' <param name="current_point">��ǰ�Ƚ�λ��</param>
    ''' <param name="runned_points">�ѱȽϵ���</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_hcmp_get_current_state Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal hcmp As UInt16, ByRef remained_points As Int32, ByRef current_point As Int32, ByRef runned_points As Int32) As Int16
    ''' <summary>
    ''' ������ٱȽ�λ��
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="hcmp">���ٱȽ����ţ�0-3</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_hcmp_clear_points Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal hcmp As UInt16) As Int16
    ''' <summary>
    ''' �����ٱȽ������
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="hcmp">���ٱȽ����ţ�0-3</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_read_cmp_pin Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal hcmp As UInt16) As Int16
    ''' <summary>
    ''' д���ٱȽ������
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="hcmp">���ٱȽ����ţ�0-3</param>
    ''' <param name="on_off">�����״̬��0-�͵�ƽ��1-�ߵ�ƽ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_write_cmp_pin Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal hcmp As UInt16, ByVal on_off As UInt16) As Int16

    'ͨ��IO
    ''' <summary>
    ''' ��λ�������
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="bitno">IO�ںţ�0-31</param>
    ''' <returns>�����״̬��0-�͵�ƽ��1-�ߵ�ƽ</returns>
    ''' <remarks></remarks>
    Declare Function dmc_read_inbit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal bitno As UInt16) As Int16            '��ȡ����ڵ�״̬
    ''' <summary>
    ''' ��λд�����
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="bitno">IO�ںţ�0-31</param>
    ''' <param name="on_off">���״̬��0-�͵�ƽ��1-�ߵ�ƽ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_write_outbit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal bitno As UInt16, ByVal on_off As UInt16) As Int16         '��������ڵ�״̬
    ''' <summary>
    ''' ��λ�������
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="bitno">IO�ںţ�0-31</param>
    ''' <returns>�����״̬��0-�͵�ƽ��1-�ߵ�ƽ</returns>
    ''' <remarks></remarks>
    Declare Function dmc_read_outbit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal bitno As UInt16) As Int16           '��ȡ����ڵ�״̬
    ''' <summary>
    ''' ���˿ڶ������
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="portno">�˿ںţ�0-1</param>
    ''' <returns>�����״̬��bit0-bit31��ʾin0-in31,λֵ��0-�͵�ƽ��1-�ߵ�ƽ</returns>
    ''' <remarks></remarks>
    Declare Function dmc_read_inport Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal portno As UInt16) As UInt32     '��ȡ����˿ڵ�ֵ
    ''' <summary>
    ''' ���˿ڶ������
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="portno">�˿ںţ�0</param>
    ''' <returns>�����״̬��bit0-bit31��ʾout0-out31,λֵ��0-�͵�ƽ��1-�ߵ�ƽ</returns>
    ''' <remarks></remarks>
    Declare Function dmc_read_outport Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal portno As UInt16) As UInt32            '��ȡ����˿ڵ�ֵ
    ''' <summary>
    ''' ���˿�д�����
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="portno">�˿ںţ�0</param>
    ''' <param name="outport_val">�����״̬��bit0-bit31��ʾout0-out31,λֵ��0-�͵�ƽ��1-�ߵ�ƽ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_write_outport Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal portno As UInt16, ByVal outport_val As UInt32) As Int16       '��������˿ڵ�ֵ
    '3800 5800ר�� IO�������ܺ���
    ''' <summary>
    ''' IO��ת
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="bitno">IO�ںţ�0-31</param>
    ''' <param name="reverse_time">��תʱ�䣬��λs</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_reverse_outbit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal bitno As UInt16, ByVal reverse_time As Double) As Int16
    ''' <summary>
    ''' ����IO����ģʽ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="bitno">IO�ںţ�0-31</param>
    ''' <param name="mode">IO����ģʽ0�����ã�1�������ؼ�����2���½��ؼ���</param>
    ''' <param name="Filter">�˲�ʱ�䣬��λs</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_io_count_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal bitno As UInt16, ByVal mode As UInt16, ByVal Filter As Double) As Int16
    ''' <summary>
    ''' ��ȡIO����ģʽ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="bitno">IO�ںţ�0-31</param>
    ''' <param name="mode">IO����ģʽ0�����ã�1�������ؼ�����2���½��ؼ���</param>
    ''' <param name="Filter">�˲�ʱ�䣬��λs</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_io_count_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal bitno As UInt16, ByRef mode As UInt16, ByRef Filter As Double) As Int16
    ''' <summary>
    ''' ����IO����ֵ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="bitno">IO�ںţ�0-31</param>
    ''' <param name="CountValue">����ֵ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_io_count_value Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal bitno As UInt16, ByVal CountValue As Int32) As Int16
    ''' <summary>
    ''' ��ȡIO����ֵ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="bitno">IO�ںţ�0-31</param>
    ''' <param name="CountValue">����ֵ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_io_count_value Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal bitno As UInt16, ByRef CountValue As Int32) As Int16

    '�ŷ�ר��IO
    ''' <summary>
    ''' ����INPģʽ  INP�źŻ�Ӱ�쵽����˶�״̬��check_done)
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="enable">ʹ��״̬��0-��ֹ��1-����</param>
    ''' <param name="inp_logic">��Ч��ƽ��0-�͵�ƽ��1-�ߵ�ƽ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_inp_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal enable As UInt16, ByVal inp_logic As UInt16) As Int16      '����INP�ź�
    ''' <summary>
    ''' ��ȡINPģʽ  INP�źŻ�Ӱ�쵽����˶�״̬��check_done)
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="enable">ʹ��״̬��0-��ֹ��1-����</param>
    ''' <param name="inp_logic">��Ч��ƽ��0-�͵�ƽ��1-�ߵ�ƽ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_inp_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef enable As UInt16, ByRef inp_logic As UInt16) As Int16  '��ȡ����INP�ź�
    ''' <summary>
    ''' ����ALMģʽ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="enable">ʹ��״̬��0-��ֹ��1-����</param>
    ''' <param name="alm_logic">��Ч��ƽ��0-�͵�ƽ��1-�ߵ�ƽ</param>
    ''' <param name="alm_action">�ƶ���ʽ��0-����ֹͣ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_alm_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal enable As UInt16, ByVal alm_logic As UInt16, ByVal alm_action As UInt16) As Int16 '����ALM�ź�
    ''' <summary>
    ''' ��ȡALMģʽ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="enable">ʹ��״̬��0-��ֹ��1-����</param>
    ''' <param name="alm_logic">��Ч��ƽ��0-�͵�ƽ��1-�ߵ�ƽ</param>
    ''' <param name="alm_action">�ƶ���ʽ��0-����ֹͣ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_alm_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef enable As UInt16, ByRef alm_logic As UInt16, ByRef alm_action As UInt16) As Int16     '��ȡ����ALM�ź�
    ''' <summary>
    ''' д�ŷ�ʹ���ź������
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="on_off">���״̬��0-�͵�ƽ��1-�ߵ�ƽ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_write_sevon_pin Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal on_off As UInt16) As Int16       '���SEVON�ź�
    ''' <summary>
    ''' ���ŷ�ʹ���ź������
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <returns>���״̬��0-�͵�ƽ��1-�ߵ�ƽ</returns>
    ''' <remarks></remarks>
    Declare Function dmc_read_sevon_pin Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int16         '��ȡSEVON�ź�
    ''' <summary>
    ''' ���ŷ�׼�����ź������
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <returns>����״̬��0-�͵�ƽ��1-�ߵ�ƽ</returns>
    ''' <remarks></remarks>
    Declare Function dmc_read_rdy_pin Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int16           '��ȡRDY״̬
    ''' <summary>
    ''' д�ŷ������������
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="on_off">���״̬��0-�͵�ƽ��1-�ߵ�ƽ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_write_erc_pin Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal on_off As UInt16) As Int16       '����ERC�ź���� 
    ''' <summary>
    ''' ���ŷ������������
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <returns>���״̬��0-�͵�ƽ��1-�ߵ�ƽ</returns>
    ''' <remarks></remarks>
    Declare Function dmc_read_erc_pin Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int16       '��ȡ����ERC�ź���� 
    '�˶�״̬
    ''' <summary>
    ''' ��ȡ��ǰ�ٶ�
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <returns>�ٶ�ֵ</returns>
    ''' <remarks></remarks>
    Declare Function dmc_read_current_speed Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Double      '��ȡָ����ĵ�ǰ�ٶ�
    ''' <summary>
    ''' ��ȡ��ǰ�岹�ٶ�
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <returns>�岹�ٶ�</returns>
    ''' <remarks></remarks>
    Declare Function dmc_read_vector_speed Lib "LTDMC.dll" (ByVal CardNo As UInt16) As Double    '��ȡ��ǰ���Ĳ岹�ٶ�
    ''' <summary>
    ''' ��ȡ��ǰָ��λ��
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <returns>λ��ֵ</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_position Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int32      '��ȡָ����ĵ�ǰλ��
    ''' <summary>
    ''' ����ָ��λ��
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="current_position">λ��ֵ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_position Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal current_position As Int32) As Int16   '�趨ָ����ĵ�ǰλ��
    ''' <summary>
    ''' �������˶�״̬
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <returns>�˶�״̬��0-�˶���1-ֹͣ</returns>
    ''' <remarks></remarks>
    Declare Function dmc_check_done Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int16     '��ȡָ������˶�״̬
    ''' <summary>
    ''' ��ⵥ�β岹�˶�״̬
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <returns>�˶�״̬��0-�˶���1-ֹͣ</returns>
    ''' <remarks></remarks>
    Declare Function dmc_check_done_multicoor Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16) As Int16
    ''' <summary>
    ''' ��IO״̬
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <returns>��IO״̬��0 ALM 1 EL+ 2 EL- 3 EMG 4 ORG 6 SL+ 7 SL- 8 INP 9 EZ 10 RDY 11 DSTP</returns>
    ''' <remarks></remarks>
    Declare Function dmc_axis_io_status Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As UInt32    '��ȡָ�����й��˶��źŵ�״̬
    ''' <summary>
    ''' ֹͣ�����˶�
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="stop_mode">ֹͣģʽ��0-����ֹͣ��1-����ֹͣ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_stop Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal stop_mode As UInt16) As Int16       '����ֹͣ
    ''' <summary>
    ''' ֹͣ���β岹�˶�
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="stop_mode">ֹͣģʽ��0-����ֹͣ��1-����ֹͣ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_stop_multicoor Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal stop_mode As UInt16) As Int16
    ''' <summary>
    ''' ��ͣ�������˶�
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_emg_stop Lib "LTDMC.dll" (ByVal CardNo As UInt16) As Int16      '����ֹͣ������
    ''' <summary>
    ''' ��ȡĿ��λ��
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <returns>Ŀ��λ��ֵ</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_target_position Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int32      '��ȡĿ��λ��
    '����ᵽλ״̬
    ''' <summary>
    ''' ��������
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="factor">������ϵ��</param>
    ''' <param name="pos_error">����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_factor_error Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal factor As Double, ByVal pos_error As Int32) As Int16
    ''' <summary>
    ''' ��ȡ����
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="factor">������ϵ��</param>
    ''' <param name="pos_error">����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_factor_error Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef factor As Double, ByRef pos_error As Int32) As Int16
    ''' <summary>
    ''' ���ָ��λ�õ�λ ��ʱ100ms
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <returns>��λ״̬��0-����������Χ�ڣ�1-��������Χ��</returns>
    ''' <remarks></remarks>
    Declare Function dmc_check_success_pulse Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int16
    ''' <summary>
    ''' ��ⷴ��λ�õ�λ ��ʱ100ms
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <returns>��λ״̬��0-����������Χ�ڣ�1-��������Χ��</returns>
    ''' <remarks></remarks>
    Declare Function dmc_check_success_encoder Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int16

    '3800 5800ר�� ��������ߺ�ͨѶ״̬
    ''' <summary>
    ''' ��ȡͨѶ״̬
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="state">״̬��0-���ӣ�1-�Ͽ�</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_LinkState Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByRef state As UInt16) As Int16      '����״̬

    'DMC5410 DMC5800ר�� ���嵱������ �����岹����
    ''' <summary>
    ''' ��ȡ�˶�ģʽ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="run_mode">�˶�ģʽ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_axis_run_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef run_mode As UInt16) As Int16       '���˶�ģʽ
    ''' <summary>
    ''' ��ȡ���嵱��
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="equiv">���嵱��ֵ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_equiv Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef equiv As Double) As Int16       '���嵱��
    ''' <summary>
    ''' �������嵱��
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="equiv">���嵱��ֵ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_equiv Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal equiv As Double) As Int16
    ''' <summary>
    ''' ���÷����϶
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="backlash">�����϶ֵ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_backlash_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal backlash As Double) As Int16  '�����϶
    ''' <summary>
    ''' ��ȡ�����϶ֵ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="backlash">�����϶ֵ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_backlash_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef backlash As Double) As Int16
    ''' <summary>
    ''' ����ָ��λ��ֵ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="pos">λ��ֵ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_position_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal pos As Double) As Int16    '��ǰָ��λ��
    ''' <summary>
    ''' ��ȡָ��λ��ֵ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="pos">ָ��λ��ֵ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_position_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef pos As Double) As Int16
    ''' <summary>
    ''' ���ñ�������������λ��ֵ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="pos">λ��ֵ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_encoder_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal pos As Double) As Int16   '��ǰ����λ��
    ''' <summary>
    ''' ��ȡ��������������λ��ֵ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="pos">λ��ֵ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_encoder_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef pos As Double) As Int16
    ''' <summary>
    ''' �����˶�
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="Dist">Ŀ��λ��</param>
    ''' <param name="posi_mode">λ��ģʽ��0-��ԣ�1-����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_pmove_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal Dist As Double, ByVal posi_mode As UInt16) As Int16  '����
    ''' <summary>
    ''' ����ֱ�߲岹
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="AxisNum">������2-6</param>
    ''' <param name="AxisList">���б�</param>
    ''' <param name="Target_Pos">Ŀ��λ��</param>
    ''' <param name="posi_mode">λ��ģʽ��0-��ԣ�1-����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_line_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal AxisNum As UInt16, ByRef AxisList As UInt16, ByRef Target_Pos As Double, ByVal posi_mode As UInt16) As Int16   '����ֱ��
    ''' <summary>
    ''' ���β岹Բ��Բ��/������/������
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="AxisNum">������2-6</param>
    ''' <param name="AxisList">���б�</param>
    ''' <param name="Target_Pos">Ŀ��λ��</param>
    ''' <param name="Cen_Pos">Բ��λ��</param>
    ''' <param name="Arc_Dir">Բ������0-˳ʱ�룬1-��ʱ��</param>
    ''' <param name="Circle">Բ��Ȧ��</param>
    ''' <param name="posi_mode">λ��ģʽ��0-��ԣ�1-����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_arc_move_center_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal AxisNum As UInt16, ByRef AxisList As UInt16, ByRef Target_Pos As Double, ByRef Cen_Pos As Double, ByVal Arc_Dir As UInt16, ByVal Circle As Int32, ByVal posi_mode As UInt16) As Int16    'Բ���յ�ʽԲ��/������/������
    ''' <summary>
    ''' ���β岹�뾶Բ��/������
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="AxisNum">������2-6</param>
    ''' <param name="AxisList">���б�</param>
    ''' <param name="Target_Pos">Ŀ��λ��</param>
    ''' <param name="Arc_Radius">�뾶ֵ</param>
    ''' <param name="Arc_Dir">Բ������0-˳ʱ�룬1-��ʱ��</param>
    ''' <param name="Circle">Բ��Ȧ��</param>
    ''' <param name="posi_mode">λ��ģʽ��0-��ԣ�1-����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_arc_move_radius_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal AxisNum As UInt16, ByRef AxisList As UInt16, ByRef Target_Pos As Double, ByVal Arc_Radius As Double, ByVal Arc_Dir As UInt16, ByVal Circle As Int32, ByVal posi_mode As UInt16) As Int16   '�뾶�յ�ʽԲ��/������
    ''' <summary>
    ''' �����岹����Բ���������ռ䣩/������
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="AxisNum">������2-6</param>
    ''' <param name="AxisList">���б�</param>
    ''' <param name="Target_Pos">Ŀ��λ��</param>
    ''' <param name="Mid_Pos">�м�λ��</param>
    ''' <param name="Circle">Ȧ������С��0ʱ��ʾ�������б�ǰ����ƽ��������ߣ�С��0ʱ����ֵ��1��ʾ�ռ�Բ��Ȧ��</param>
    ''' <param name="posi_mode">λ��ģʽ��0-��ԣ�1-����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_arc_move_3points_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal AxisNum As UInt16, ByRef AxisList As UInt16, ByRef Target_Pos As Double, ByRef Mid_Pos As Double, ByVal Circle As Int32, ByVal posi_mode As UInt16) As Int16    '����ʽԲ��/������
    ''' <summary>
    ''' ��������岹
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="AxisNum">������2</param>
    ''' <param name="AxisList">���б�</param>
    ''' <param name="Target_Pos">�Խ�λ��</param>
    ''' <param name="Mark_Pos">���η�����λ��</param>
    ''' <param name="Count">����/Ȧ��</param>
    ''' <param name="rect_mode">���β岹ģʽ:0-���У�1-������</param>
    ''' <param name="posi_mode">λ��ģʽ��0-��ԣ�1-����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_rectangle_move_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal AxisNum As UInt16, ByRef AxisList As UInt16, ByRef Target_Pos As Double, ByRef Mark_Pos As Double, ByVal Count As Long, ByVal rect_mode As UInt16, ByVal posi_mode As UInt16) As Int16
    ''' <summary>
    ''' ��ȡ��ǰ�ٶȣ������岹�����ǲ岹�ٶ�
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="current_speed">��ǰ�ٶ�ֵ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_read_current_speed_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef current_speed As Double) As Int16  '�ᵱǰ�����ٶ�
    ''' <summary>
    ''' ���õ��β岹�ٶȲ���
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="Min_Vel">��ʼ�ٶ�</param>
    ''' <param name="Max_Vel">�����ٶ�</param>
    ''' <param name="Tacc">����ʱ�䣬��λs</param>
    ''' <param name="Tdec">����ʱ�䣬��λs</param>
    ''' <param name="Stop_vel">ֹͣ�ٶ�</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_vector_profile_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal Min_Vel As Double, ByVal Max_Vel As Double, ByVal Tacc As Double, ByVal Tdec As Double, ByVal Stop_vel As Double) As Int16    '���β岹�ٶȲ���
    ''' <summary>
    ''' ��ȡ���β岹�ٶȲ���
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="Min_Vel">��ʼ�ٶ�</param>
    ''' <param name="Max_Vel">�����ٶ�</param>
    ''' <param name="Tacc">����ʱ�䣬��λs</param>
    ''' <param name="Tdec">����ʱ�䣬��λs</param>
    ''' <param name="Stop_vel">ֹͣ�ٶ�</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_vector_profile_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByRef Min_Vel As Double, ByRef Max_Vel As Double, ByRef Tacc As Double, ByRef Tdec As Double, ByRef Stop_vel As Double) As Int16
    ''' <summary>
    ''' ���õ����ٶȲ���
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="Min_Vel">��ʼ�ٶ�</param>
    ''' <param name="Max_Vel">�����ٶ�</param>
    ''' <param name="Tacc">����ʱ�䣬��λs</param>
    ''' <param name="Tdec">����ʱ�䣬��λs</param>
    ''' <param name="Stop_vel">ֹͣ�ٶ�</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_profile_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal Min_Vel As Double, ByVal Max_Vel As Double, ByVal Tacc As Double, ByVal Tdec As Double, ByVal Stop_vel As Double) As Int16   '�����ٶȲ���
    ''' <summary>
    ''' ��ȡ�����ٶȲ���
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="Min_Vel">��ʼ�ٶ�</param>
    ''' <param name="Max_Vel">�����ٶ�</param>
    ''' <param name="Tacc">����ʱ�䣬��λs</param>
    ''' <param name="Tdec">����ʱ�䣬��λs</param>
    ''' <param name="Stop_vel">ֹͣ�ٶ�</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_profile_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef Min_Vel As Double, ByRef Max_Vel As Double, ByRef Tacc As Double, ByRef Tdec As Double, ByRef Stop_vel As Double) As Int16
    ''' <summary>
    ''' ���߱�λ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="New_pos">��λ��ֵ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_reset_target_position_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal New_pos As Double) As Int16   '���߱�λ
    ''' <summary>
    ''' ǿ�Ʊ�λ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="New_pos">��λ��ֵ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_update_target_position_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal New_pos As Double) As Int16   'ǿ�б�λ
    ''' <summary>
    ''' ���߱���
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="New_vel">���ٶ�ֵ</param>
    ''' <param name="Taccdec">�¼Ӽ���ʱ�䣬��λs</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_change_speed_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal New_vel As Double, ByVal Taccdec As Double) As Int16           '���߱���

    '�����岹
    ''' <summary>
    ''' �������岹������
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="AxisNum">������2-6</param>
    ''' <param name="AxisList">���б�AxisList[0]-X,AxisList[1]-Y,AxisList[2]-Z,AxisList[3]-U,AxisList[4]-V,AxisList[5]-W</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_open_list Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal AxisNum As UInt16, ByRef AxisList As UInt16) As Int16     '������������
    ''' <summary>
    ''' �ر������岹������
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_close_list Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16) As Int16     '�ر�����������
    ''' <summary>
    ''' ֹͣ�����岹
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="stop_mode">ֹͣģʽ��0-����ֹͣ��1-����ֹͣ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_stop_list Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal stop_mode As UInt16) As Int16    '�����岹��ֹͣ
    ''' <summary>
    ''' ��ͣ�����岹
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_pause_list Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16) As Int16     '�����岹����ͣ
    ''' <summary>
    ''' ���������岹
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_start_list Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16) As Int16    '��ʼ�����岹
    ''' <summary>
    ''' ��ȡʣ�໺�����ռ䣬���ò岹ָ���������ж��Ƿ���ʣ��ռ�
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <returns>ʣ��ռ�</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_remain_space Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16) As Int32     '�������岹ʣ�໺����
    ''' <summary>
    ''' ��ȡ��ǰ�κ�
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <returns>��ǰ�κ�</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_read_current_mark Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16) As Int32  '��ȡ��ǰ�����岹�εı��
    ''' <summary>
    ''' ���ùսǻ���˶��Զ�ƽ������ʹ��״̬
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="enable">ʹ��״̬��0-���ã�1-����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_set_blend Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal enable As UInt16) As Int16    'blend�սǹ���ģʽ
    ''' <summary>
    ''' ��ȡ�սǻ���˶��Զ�ƽ������ʹ��״̬
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="enable">ʹ��״̬��0-���ã�1-����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_get_blend Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByRef enable As UInt16) As Int16
    ''' <summary>
    ''' ���ò岹�ٶ�  �򿪻�����ǰ����Ԥ�������ȷ���Ӽ���ʱ�䣬�򿪻�����֮��Ӽ���ʱ����������ڻ������У�ִ��ʱBlendʧЧ���ٶȲ�����
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="Min_Vel">����</param>
    ''' <param name="Max_Vel">��������ٶ�</param>
    ''' <param name="Tacc">�Ӽ���ʱ�䣬��λs</param>
    ''' <param name="Tdec">����</param>
    ''' <param name="Stop_vel">����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_set_profile_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal Min_Vel As Double, ByVal Max_Vel As Double, ByVal Tacc As Double, ByVal Tdec As Double, ByVal Stop_vel As Double) As Int16   '���������岹�ٶ�

    ''' <summary>
    ''' ���ò岹�ٶ�
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="Max_Vel">��������ٶ�</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_set_speed_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16,  ByVal Max_Vel As Double) As Int16   '���������岹�ٶ�

    ''' <summary>
    ''' ���������岹�Ӽ���ʱ�䣬���򿪻�����֮��Ӽ���ʱ����������ڻ������У�ִ��ʱBlendʧЧ���ٶȲ�����
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="Taccdec">�Ӽ���ʱ�䣬��λs</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_set_taccdec Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal Taccdec As Double) As Int16  
    ''' <summary>
    ''' ����S���ٶ����߲���
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="s_mode">������0</param>
    ''' <param name="s_para">S��ʱ�䣬��λs</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_set_s_profile Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal s_mode As UInt16, ByVal s_para As Double) As Int16      '���������岹ƽ��ʱ��
    ''' <summary>
    ''' ��ȡS���ٶ����߲���
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="s_mode">������0</param>
    ''' <param name="s_para">S��ʱ�䣬��λs</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_get_s_profile Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal s_mode As UInt16, ByRef s_para As Double) As Int16
    ''' <summary>
    ''' Ԥ�赥���ٶȱ���
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="Percent">�ٶȱ��ʣ�0-1</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_set_override Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal Percent As Double) As Int16   '����ÿ���ٶȱ���  ������ָ��
    ''' <summary>
    ''' ���ߵ����ٶȱ���
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="Percent">�ٶȱ��ʣ�0-1</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_change_speed_ratio Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal Percent As Double) As Int16
    ''' <summary>
    ''' ��ȡ�����岹״̬
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <returns>�����岹״̬��0-���У�1-��ͣ��2-����ֹͣ��3-δ������4-����</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_get_run_state Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16) As Int16
    ''' <summary>
    ''' ��ȡ�����岹�˶�״̬
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <returns>�˶�״̬��0-���У�1-ֹͣ</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_check_done Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16) As Int16
    ''' <summary>
    ''' �ȴ�����
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="bitno">IO�ںţ�0-31</param>
    ''' <param name="on_off">�������Ч״̬��0-�͵�ƽ��1-�ߵ�ƽ</param>
    ''' <param name="TimeOut">��ʱʱ�䣬��λs</param>
    ''' <param name="mark">�κţ�0-�Զ�����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_wait_input Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal bitno As UInt16, ByVal on_off As UInt16, ByVal TimeOut As Double, ByVal mark As Int32) As Int16   '���������岹�ȴ�����
    ''' <summary>
    ''' ������IO�ͺ����
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="bitno">����ںţ�0-31</param>
    ''' <param name="on_off">���״̬��0-�͵�ƽ��1-�ߵ�ƽ</param>
    ''' <param name="delay_value">�ͺ�ֵ</param>
    ''' <param name="delay_mode">�ͺ�ģʽ��0-ʱ�䣬1-����</param>
    ''' <param name="ReverseTime">��תʱ�䣬��λs</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_delay_outbit_to_start Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal bitno As UInt16, ByVal on_off As UInt16, ByVal delay_value As Double, ByVal delay_mode As UInt16, ByVal ReverseTime As Double) As Int16    '����ڹ켣�����IO�ͺ����
    ''' <summary>
    ''' ����յ�IO�ͺ����
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="bitno">����ںţ�0-31</param>
    ''' <param name="on_off">���״̬��0-�͵�ƽ��1-�ߵ�ƽ</param>
    ''' <param name="delay_time">�ͺ�ʱ�䣬��λs</param>
    ''' <param name="ReverseTime">��תʱ�䣬��λs</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_delay_outbit_to_stop Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal bitno As UInt16, ByVal on_off As UInt16, ByVal delay_time As Double, ByVal ReverseTime As Double) As Int16   '����ڹ켣���յ�IO�ͺ����
    ''' <summary>
    ''' ����յ�IO��ǰ���
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="bitno">����ںţ�0-31</param>
    ''' <param name="on_off">���״̬��0-�͵�ƽ��1-�ߵ�ƽ</param>
    ''' <param name="ahead_value">��ǰ��</param>
    ''' <param name="ahead_mode">��ǰģʽ��0-ʱ�䣬1-����</param>
    ''' <param name="ReverseTime">��תʱ�䣬��λs</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_ahead_outbit_to_stop Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal bitno As UInt16, ByVal on_off As UInt16, ByVal ahead_value As Double, ByVal ahead_mode As UInt16, ByVal ReverseTime As Double) As Int16  '��Թ켣���յ�IO��ǰ���
    ''' <summary>
    ''' ������IO��ȷ�ͺ�������
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="cmp_no">���ٱȽ�����ںţ�0-3</param>
    ''' <param name="on_off">���״̬��0-�͵�ƽ��1-�ߵ�ƽ</param>
    ''' <param name="map_axis">������ţ�0-X,1-Y,2-Z,3-U,4-V,5-W</param>
    ''' <param name="delay_dist">�ͺ����</param>
    ''' <param name="pos_source">λ��Դ��0-ָ��λ�ã�1-����λ��</param>
    ''' <param name="ReverseTime">��תʱ��,��λus,����1us</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_accurate_outbit_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal cmp_no As UInt16, ByVal on_off As UInt16, ByVal map_axis As UInt16, ByVal delay_dist As Double, ByVal pos_source As UInt16, ByVal ReverseTime As Double) As Int16     'ȷ��λ�þ�ȷ���
    ''' <summary>
    ''' �����岹�������IO
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="bitno">IO�ںţ�0-31</param>
    ''' <param name="on_off">���״̬��0-�͵�ƽ��1-�ߵ�ƽ</param>
    ''' <param name="ReverseTime">��תʱ�䣬��λs</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_write_outbit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal bitno As UInt16, ByVal on_off As UInt16, ByVal ReverseTime As Double) As Int16     '����������IO���
    ''' <summary>
    ''' ���IO����δִ����Ķ�����������ʱ��ת
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="IoMask">IO�ڱ�ǣ�bit0-bit31����out0-out31,λֵ��0-�������1-���</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_clear_io_action Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal IoMask As UInt32) As Int16   '�������δִ�����IO����
    ''' <summary>
    ''' ���������岹��ͣʱ���
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="action">ִ�ж�����0-��������1-��ͣʱ���������ʱ���ָ���2-��ͣʱ���������ʱ�ָ���3-ֹͣʱ���������ʱ���ָ�</param>
    ''' <param name="mask">IO�ڱ�ǣ�bit0-bit31����out0-out31,λֵ��0-�����붯����1-���붯��</param>
    ''' <param name="state">IO��״̬��bit0-bit31����out0-out31,λֵ��0-�͵�ƽ��1-�ߵ�ƽ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_set_pause_output Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal action As UInt16, ByVal mask As Int32, ByVal state As Int32) As Int16   '��ͣʱIO��� action 0, ��������1�� ��ͣʱ���io_state; 2 ��ͣʱ���io_state, ��������ʱ���Ȼָ�ԭ����io; 3,��2�Ļ����ϣ�ֹͣʱҲ��Ч
    ''' <summary>
    ''' ��ȡ�����岹��ͣʱ���
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="action">ִ�ж�����0-��������1-��ͣʱ���������ʱ���ָ���2-��ͣʱ���������ʱ�ָ���3-ֹͣʱ���������ʱ���ָ�</param>
    ''' <param name="mask">IO�ڱ�ǣ�bit0-bit31����out0-out31,λֵ��0-�����붯����1-���붯��</param>
    ''' <param name="state">IO��״̬��bit0-bit31����out0-out31,λֵ��0-�͵�ƽ��1-�ߵ�ƽ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_get_pause_output Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByRef action As UInt16, ByRef mask As Int32, ByRef state As Int32) As Int16
    ''' <summary>
    ''' �����岹��ͣ��ʱ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="delay_time">��ʱʱ�䣬��λs</param>
    ''' <param name="mark">�κţ�0-�Զ�����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_delay Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal delay_time As Double, ByVal mark As Int32) As Int16    '�����ʱָ��
    ''' <summary>
    ''' �����岹ֱ�߲岹
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="AxisNum">������2-6</param>
    ''' <param name="AxisList">���б�</param>
    ''' <param name="Target_Pos">Ŀ��λ��</param>
    ''' <param name="posi_mode">λ��ģʽ��0-��ԣ�1-����</param>
    ''' <param name="mark">�κţ�0-�Զ�����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_line_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal AxisNum As UInt16, ByRef AxisList As UInt16, ByRef Target_Pos As Double, ByVal posi_mode As UInt16, ByVal mark As Int32) As Int16    '�����岹ֱ��
    ''' <summary>
    ''' �����岹Բ��Բ��/������/������
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="AxisNum">������2-6</param>
    ''' <param name="AxisList">���б�</param>
    ''' <param name="Target_Pos">Ŀ��λ��</param>
    ''' <param name="Cen_Pos">Բ��λ��</param>
    ''' <param name="Arc_Dir">Բ������0-˳ʱ�룬1-��ʱ��</param>
    ''' <param name="Circle">Բ��Ȧ��:��ֵ��ʾͬ��Բ</param>
    ''' <param name="posi_mode">λ��ģʽ</param>
    ''' <param name="mark">�κţ�0-�Զ�����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_arc_move_center_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal AxisNum As UInt16, ByRef AxisList As UInt16, ByRef Target_Pos As Double, ByRef Cen_Pos As Double, ByVal Arc_Dir As UInt16, ByVal Circle As Int32, ByVal posi_mode As UInt16, ByVal mark As Int32) As Int16    'Բ���յ�ʽԲ��/������/������
    ''' <summary>
    ''' �����岹�뾶Բ��/������
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="AxisNum">������2-6</param>
    ''' <param name="AxisList">���б�</param>
    ''' <param name="Target_Pos">Ŀ��λ��</param>
    ''' <param name="Arc_Radius">�뾶ֵ</param>
    ''' <param name="Arc_Dir">Բ������0-˳ʱ�룬1-��ʱ��</param>
    ''' <param name="Circle">Բ��Ȧ��:��ֵ��ʾͬ��ԲȦ��</param>
    ''' <param name="posi_mode">λ��ģʽ��0-��ԣ�1-����</param>
    ''' <param name="mark">�κţ�0-�Զ�����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_arc_move_radius_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal AxisNum As UInt16, ByRef AxisList As UInt16, ByRef Target_Pos As Double, ByVal Arc_Radius As Double, ByVal Arc_Dir As UInt16, ByVal Circle As Int32, ByVal posi_mode As UInt16, ByVal mark As Int32) As Int16   '�뾶�յ�ʽԲ��/������
    ''' <summary>
    ''' �����岹����Բ���������ռ䣩/������
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="AxisNum">������2-6</param>
    ''' <param name="AxisList">���б�</param>
    ''' <param name="Target_Pos">Ŀ��λ��</param>
    ''' <param name="Mid_Pos">�м�λ��</param>
    ''' <param name="Circle">Ȧ������С��0ʱ��ʾ�������б�ǰ����ƽ��������ߣ�С��0ʱ����ֵ��1��ʾ�ռ�Բ��Ȧ��</param>
    ''' <param name="posi_mode">λ��ģʽ��0-��ԣ�1-����</param>
    ''' <param name="mark">�κţ�0-�Զ�����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_arc_move_3points_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal AxisNum As UInt16, ByRef AxisList As UInt16, ByRef Target_Pos As Double, ByRef Mid_Pos As Double, ByVal Circle As Int32, ByVal posi_mode As UInt16, ByVal mark As Int32) As Int16    '����ʽԲ��/������
    ''' <summary>
    ''' ���ý����߲岹ģʽ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="mode">ģʽ��0-����գ�1-���</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_set_involute_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal mode As UInt16) As Int16
    ''' <summary>
    ''' ��ȡ�����߲岹ģʽ
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="mode">���Բģʽ��0-����գ�1-���</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_get_involute_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByRef mode As UInt16) As Int16
    ''' <summary>
    ''' ��������岹
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="AxisNum">������2</param>
    ''' <param name="AxisList">���б�</param>
    ''' <param name="Target_Pos">�Խ�λ��</param>
    ''' <param name="Mark_Pos">���η�����λ��</param>
    ''' <param name="Count">����/Ȧ��</param>
    ''' <param name="rect_mode">���β岹ģʽ:0-���У�1-������</param>
    ''' <param name="posi_mode">λ��ģʽ��0-��ԣ�1-����</param>
    ''' <param name="mark">�κţ�0-�Զ�������>0������ֵ���öκ�</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_rectangle_move_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal AxisNum As UInt16, ByRef AxisList As UInt16, ByRef Target_Pos As Double, ByRef Mark_Pos As Double, ByVal Count As Long, ByVal rect_mode As UInt16, ByVal posi_mode As UInt16, ByVal mark As Long) As Int16
    ''' <summary>
    ''' ����Բ��Բ������
    ''' </summary>
    ''' <param name="start_pos">��ʼλ��</param>
    ''' <param name="target_pos">Ŀ��λ��</param>
    ''' <param name="cen_pos">Բ��λ��</param>
    ''' <param name="arc_dir">Բ������</param>
    ''' <param name="circle">Ȧ��</param>
    ''' <param name="ArcLength">����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_calculate_arclength_center Lib "LTDMC.dll" (ByRef start_pos As Double, ByRef target_pos As Double, ByRef cen_pos As Double, ByVal arc_dir As UInt16, ByVal circle As Double, ByRef ArcLength As Double) As Int16
    ''' <summary>
    ''' ��������Բ������
    ''' </summary>
    ''' <param name="start_pos">��ʼλ��</param>
    ''' <param name="target_pos">Ŀ��λ��</param>
    ''' <param name="cen_pos">Բ��λ��</param>
    ''' <param name="circle">Ȧ��</param>
    ''' <param name="ArcLength">����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_calculate_arclength_3point Lib "LTDMC.dll" (ByRef start_pos As Double, ByRef target_pos As Double, ByRef cen_pos As Double, ByVal circle As Double, ByRef ArcLength As Double) As Int16
    ''' <summary>
    ''' ����뾶Բ������
    ''' </summary>
    ''' <param name="start_pos">��ʼλ��</param>
    ''' <param name="target_pos">Ŀ��λ��</param>
    ''' <param name="arc_radius">Բ���뾶</param>
    ''' <param name="arc_dir">Բ������</param>
    ''' <param name="circle">Ȧ��</param>
    ''' <param name="ArcLength">����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_calculate_arclength_radius Lib "LTDMC.dll" (ByRef start_pos As Double, ByRef target_pos As Double, ByVal arc_radius As Double, ByVal arc_dir As UInt16, ByVal circle As Double, ByRef ArcLength As Double) As Int16

    ''' <summary>
    ''' ����CanIOͨѶ״̬
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="NodeNum">�ڵ�����1-8</param>
    ''' <param name="state">״̬��0-�Ͽ���1-���ӣ�2-��λ���Զ�����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_can_state Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal NodeNum As UInt16, ByVal state As UInt16) As Int16
    ''' <summary>
    ''' ��ȡCanIOͨѶ״̬
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="NodeNum">�ڵ�����1-8</param>
    ''' <param name="state">״̬��0-�Ͽ���1-���ӣ�2-�쳣</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_can_state Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByRef NodeNum As UInt16, ByRef state As UInt16) As Int16
    ''' <summary>
    ''' ��λдCanIO�����
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Node">�ڵ�ţ�0-7</param>
    ''' <param name="bitno">IO�ںţ�0-15</param>
    ''' <param name="on_off">�����״̬��0-�͵�ƽ��1-�ߵ�ƽ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_write_can_outbit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Node As UInt16, ByVal bitno As UInt16, ByVal on_off As UInt16) As Int16
    ''' <summary>
    ''' ��λ��CanIo�����
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Node">�ڵ�ţ�0-7</param>
    ''' <param name="bitno">IO�ںţ�0-15</param>
    ''' <returns>�����״̬��0-�͵�ƽ��1-�ߵ�ƽ</returns>
    ''' <remarks></remarks>
    Declare Function dmc_read_can_outbit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Node As UInt16, ByVal bitno As UInt16) As Int16
    ''' <summary>
    ''' ��λ��CanIo�����
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Node">�ڵ�ţ�0-7</param>
    ''' <param name="bitno">IO�ںţ�0-15</param>
    ''' <returns>�����״̬��0-�͵�ƽ��1-�ߵ�ƽ</returns>
    ''' <remarks></remarks>
    Declare Function dmc_read_can_inbit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Node As UInt16, ByVal bitno As UInt16) As Int16
    ''' <summary>
    ''' ���˿ں�дCanIO�����
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Node">�ڵ�ţ�0-7</param>
    ''' <param name="PortNo">�˿ںţ�0-1</param>
    ''' <param name="outport_val">����˿�ֵ��bit0-bit31��ӦOut0-out31,0-�͵�ƽ��1-�ߵ�ƽ</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_write_can_outport Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Node As UInt16, ByVal PortNo As UInt16, ByVal outport_val As UInt32) As Int16
    ''' <summary>
    ''' ���˿ںŶ�CanIO�����
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Node">�ڵ�ţ�0-7</param>
    ''' <param name="PortNo">�˿ںţ�0-1</param>
    ''' <returns>����˿�ֵ��bit0-bit31��ӦOut0-out31,0-�͵�ƽ��1-�ߵ�ƽ</returns>
    ''' <remarks></remarks>
    Declare Function dmc_read_can_outport Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Node As UInt16, ByVal PortNo As UInt16) As UInt32
    ''' <summary>
    ''' ���˿ںŶ�CanIO�����
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Node">�ڵ�ţ�0-7</param>
    ''' <param name="PortNo">�˿ںţ�0-1</param>
    ''' <returns>����˿�ֵ��bit0-bit31��ӦOut0-out31,0-�͵�ƽ��1-�ߵ�ƽ</returns>
    ''' <remarks></remarks>
    Declare Function dmc_read_can_inport Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Node As UInt16, ByVal PortNo As UInt16) As UInt32
    ''' <summary>
    ''' ��ȡCanIoͨѶ������
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Errcode">CAN������</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_can_errcode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByRef Errcode As UInt16) As Int16
    ''' <summary>
    ''' ��ȡ��ֹͣԭ��
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="StopReason">ֹͣԭ��</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_stop_reason Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef StopReason As Int32) As Int16   '��ȡ��ֹͣԭ��
    ''' <summary>
    ''' �����ֹͣԭ��
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_clear_stop_reason Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int16   '�����ֹͣԭ��

    ''' <summary>
    ''' ���������˶�
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="axis">��ţ�0-7</param>
    ''' <param name="dist">���룬��λunit</param>
    ''' <param name="posi_mode">λ��ģʽ��0-��ԣ�1-����</param>
    ''' <param name="mode">ģʽ��0-��ͣ������1-ֱ������</param>
    ''' <param name="mark">�κţ�0-�Զ�������>0������ֵ���öκ�</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_pmove_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal axis As UInt16, ByVal dist As Double, ByVal posi_mode As UInt16, ByVal mode As UInt16, ByVal mark As Int32) As Int16

    ''' <summary>
    ''' ����7����PWM�������
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="enable">ʹ�ܣ�0-���ã�1-����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_pwm_enable Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal enable As UInt16) As Int16
    ''' <summary>
    ''' ��ȡ7����PWM�������
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="enable">ʹ�ܣ�0-���ã�1-����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_pwm_enable Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByRef enable As UInt16) As Int16
    ''' <summary>
    ''' �����岹������PWM���
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="pwm_no">PWMͨ����0-1</param>
    ''' <param name="fDuty">ռ�ձȣ�0-1</param>
    ''' <param name="fFre">Ƶ�ʣ�0-2MHz</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_set_pwm_output Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal pwm_no As UInt16, ByVal fDuty As Double, ByVal fFre As Double) As Int16
    ''' <summary>
    ''' ����PWM���������ִ��
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="pwm_no">PWMͨ����0-1</param>
    ''' <param name="fDuty">ռ�ձȣ�0-1</param>
    ''' <param name="fFre">Ƶ�ʣ�0-2MHz</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_pwm_output Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal pwm_no As UInt16, ByVal fDuty As Double, ByVal fFre As Double) As Int16
    ''' <summary>
    ''' ��ȡPWM���
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="pwm_no">PWMͨ����0-1</param>
    ''' <param name="fDuty">ռ�ձȣ�0-1</param>
    ''' <param name="fFre">Ƶ�ʣ�0-2MHz</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_pwm_output Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal pwm_no As UInt16, ByRef fDuty As Double, ByRef fFre As Double) As Int16
    ''' <summary>
    ''' ����PWM�ٶȸ������
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="pwm_no">PWMͨ����0-1</param>
    ''' <param name="mode">����ģʽ:0-������ ����״̬,1-������ ����͵�ƽ,2-������ ����ߵ�ƽ,3-���� ռ�ձ��Զ�����,4-���� Ƶ���Զ�����</param>
    ''' <param name="MaxVel">��������ٶȣ���λunit</param>
    ''' <param name="MaxValue">������ռ�ձȻ���Ƶ��</param>
    ''' <param name="OutValue">�̶����Ƶ�ʣ�0-2MHz)��ռ�ձȣ�0-1��</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_set_pwm_follow_speed Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal pwm_no As UInt16, ByVal mode As UInt16, ByVal MaxVel As Double, ByVal MaxValue As Double, ByVal OutValue As Double) As Int16
    ''' <summary>
    ''' ��ȡPWM�ٶȸ������
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="pwm_no">PWMͨ����0-1</param>
    ''' <param name="mode">����ģʽ:0-������ ����״̬,1-������ ����͵�ƽ,2-������ ����ߵ�ƽ,3-���� ռ�ձ��Զ�����,4-���� Ƶ���Զ�����</param>
    ''' <param name="MaxVel">��������ٶȣ���λunit</param>
    ''' <param name="MaxValue">������ռ�ձȻ���Ƶ��</param>
    ''' <param name="OutValue">�̶����Ƶ�ʣ�0-2MHz)��ռ�ձȣ�0-1��</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_get_pwm_follow_speed Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal pwm_no As UInt16, ByRef mode As UInt16, ByRef MaxVel As Double, ByRef MaxValue As Double, ByRef OutValue As Double) As Int16
    ''' <summary>
    ''' ����PWM���ض�Ӧ��ռ�ձ�
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="pwmno">pwm�ںţ�0-1</param>
    ''' <param name="fOnDuty">��ռ�ձȣ�0-1</param>
    ''' <param name="fOffDuty">�ر�ռ�ձȣ�0-1</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_pwm_onoff_duty Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal pwmno As UInt16, ByVal fOnDuty As Double, ByVal fOffDuty As Double) As Int16
    Declare Function dmc_get_pwm_onoff_duty Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal pwmno As UInt16, ByRef fOnDuty As Double, ByRef fOffDuty As Double) As Int16
   ''' <summary>
    ''' ������PWM�ͺ����
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="pwmno">pwm�ںţ�0-1</param>
    ''' <param name="on_off">���״̬��0-�رգ�1-��</param>
    ''' <param name="delay_value">�ͺ�ֵ</param>
    ''' <param name="delay_mode">�ͺ�ģʽ��0-ʱ�䣬1-����</param>
    ''' <param name="ReverseTime">����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_delay_pwm_to_start Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal pwmno As UInt16, ByVal on_off As UInt16, ByVal delay_value As Double, ByVal delay_mode As UInt16, ByVal ReverseTime As Double) As Int16    '����ڹ켣�����IO�ͺ����
    ''' <summary>
    ''' ����յ�PWM��ǰ���
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="pwmno">pwm�ںţ�0-1</param>
    ''' <param name="on_off">���״̬��0-�رգ�1-��</param>
    ''' <param name="ahead_value">��ǰ��</param>
    ''' <param name="ahead_mode">��ǰģʽ��0-ʱ�䣬1-����</param>
    ''' <param name="ReverseTime">����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_ahead_pwm_to_stop Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal pwmno As UInt16, ByVal on_off As UInt16, ByVal ahead_value As Double, ByVal ahead_mode As UInt16, ByVal ReverseTime As Double) As Int16  '��Թ켣���յ�pwm��ǰ���
    ''' <summary>
    ''' �����岹�������PWM
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="pwmno">pwm�ںţ�0-1</param>
    ''' <param name="on_off">���״̬��0-�رգ�1-��</param>
    ''' <param name="ReverseTime">����</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_write_pwm Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal pwmno As UInt16, ByVal on_off As UInt16, ByVal ReverseTime As Double) As Int16     '����������IO���
End Module

'''��̩�ֳ����
    ''' <summary>
    ''' ����ֱ�߲岹 ���ٶȲ���
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="AxisNum">������2-6</param>
    ''' <param name="AxisList">���б�</param>
    ''' <param name="Target_Pos">Ŀ��λ��</param>
    ''' <param name="posi_mode">λ��ģʽ��0-��ԣ�1-����</param>
    ''' <param name="MaxVel">�����ٶȣ���λunit</param>
    ''' <param name="Taccdec">�Ӽ���ʱ�䣬��λs</param>
    ''' <param name="Tspara">ƽ��ʱ�䣬��λs</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_line_unit1 Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal AxisNum As UInt16, ByRef AxisList As UInt16, ByRef Target_Pos As Double, ByVal posi_mode As UInt16,ByVal MaxVel As Double,ByVal Taccdec As double,ByVal Tspara As double) As Int16   '����ֱ��
    ''' <summary>
    ''' ���β岹Բ��Բ��/������/������ ���ٶȲ���
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="AxisNum">������2-6</param>
    ''' <param name="AxisList">���б�</param>
    ''' <param name="Target_Pos">Ŀ��λ��</param>
    ''' <param name="Cen_Pos">Բ��λ��</param>
    ''' <param name="Arc_Dir">Բ������0-˳ʱ�룬1-��ʱ��</param>
    ''' <param name="Circle">Բ��Ȧ��</param>
    ''' <param name="posi_mode">λ��ģʽ��0-��ԣ�1-����</param>
    ''' <param name="MaxVel">�����ٶȣ���λunit</param>
    ''' <param name="Taccdec">�Ӽ���ʱ�䣬��λs</param>   
    ''' <param name="Tspara">ƽ��ʱ�䣬��λs</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_arc_move_center_unit1 Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal AxisNum As UInt16, ByRef AxisList As UInt16, ByRef Target_Pos As Double, ByRef Cen_Pos As Double, ByVal Arc_Dir As UInt16, ByVal Circle As Int32, ByVal posi_mode As UInt16,ByVal MaxVel As Double,ByVal Taccdec As double,ByVal Tspara As double) As Int16   
    ''' <summary>
    ''' ���β岹�뾶Բ��/������ ���ٶȲ���
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="AxisNum">������2-6</param>
    ''' <param name="AxisList">���б�</param>
    ''' <param name="Target_Pos">Ŀ��λ��</param>
    ''' <param name="Arc_Radius">�뾶ֵ</param>
    ''' <param name="Arc_Dir">Բ������0-˳ʱ�룬1-��ʱ��</param>
    ''' <param name="Circle">Բ��Ȧ��</param>
    ''' <param name="posi_mode">λ��ģʽ��0-��ԣ�1-����</param>    
    ''' <param name="MaxVel">�����ٶȣ���λunit</param>
    ''' <param name="Taccdec">�Ӽ���ʱ�䣬��λs</param>
    ''' <param name="Tspara">ƽ��ʱ�䣬��λs</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_arc_move_radius_unit1 Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal AxisNum As UInt16, ByRef AxisList As UInt16, ByRef Target_Pos As Double, ByVal Arc_Radius As Double, ByVal Arc_Dir As UInt16, ByVal Circle As Int32, ByVal posi_mode As UInt16,ByVal MaxVel As Double,ByVal Taccdec As double,ByVal Tspara As double) As Int16 
    ''' <summary>
    ''' �����岹����Բ���������ռ䣩/������ ���ٶȲ���
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="AxisNum">������2-6</param>
    ''' <param name="AxisList">���б�</param>
    ''' <param name="Target_Pos">Ŀ��λ��</param>
    ''' <param name="Mid_Pos">�м�λ��</param>
    ''' <param name="Circle">Ȧ������С��0ʱ��ʾ�������б�ǰ����ƽ��������ߣ�С��0ʱ����ֵ��1��ʾ�ռ�Բ��Ȧ��</param>
    ''' <param name="posi_mode">λ��ģʽ��0-��ԣ�1-����</param>
    ''' <param name="MaxVel">�����ٶȣ���λunit</param>
    ''' <param name="Taccdec">�Ӽ���ʱ�䣬��λs</param>
    ''' <param name="Tspara">ƽ��ʱ�䣬��λs</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_arc_move_3points_unit1 Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal AxisNum As UInt16, ByRef AxisList As UInt16, ByRef Target_Pos As Double, ByRef Mid_Pos As Double, ByVal Circle As Int32, ByVal posi_mode As UInt16,ByVal MaxVel As Double,ByVal Taccdec As double,ByVal Tspara As double) As Int16  

    ''' <summary>
    ''' �����岹ֱ�߲岹  ���ٶȲ���
    ''' </summary>
    ''' <param name="CardNo">���ţ�0-7</param>
    ''' <param name="Crd">����ϵ�ţ�0-1</param>
    ''' <param name="AxisNum">������2-6</param>
    ''' <param name="AxisList">���б�</param>
    ''' <param name="Target_Pos">Ŀ��λ��</param>
    ''' <param name="posi_mode">λ��ģʽ��0-��ԣ�1-����</param>
    ''' <param name="mark">�κţ�0-�Զ�����</param>
    ''' <param name="MaxVel">�����ٶȣ���λunit</param>
    ''' <param name="Taccdec">�Ӽ���ʱ�䣬��λs</param>
    ''' <param name="Tspara">ƽ��ʱ�䣬��λs</param>
    ''' <returns>�������</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_line_unit1 Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal AxisNum As UInt16, ByRef AxisList As UInt16, ByRef Target_Pos As Double, ByVal posi_mode As UInt16, ByVal mark As Int32,ByVal MaxVel As Double,ByVal Taccdec As double,ByVal Tspara As double) As Int16