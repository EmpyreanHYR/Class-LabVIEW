Attribute VB_Name = "Module1"

Option Explicit
''''''''''''''''''''''''''''''''''  Leadshine technology  ''''''''''''''''''''''''
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'''                                 LTDMC V1.1 �����б�                           ''''
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
        '�忨����
        Declare Function dmc_board_init Lib "LTDMC.dll" () As Integer           '��ʼ�����ƿ�
        Declare Function dmc_board_close Lib "LTDMC.dll" () As Integer          '�رտ��ƿ�
        Declare Function dmc_board_reset Lib "LTDMC.dll" () As Integer
        Declare Function dmc_get_CardInfList Lib "LTDMC.dll" (ByRef CardNum As Integer, ByRef CardTypeList As Long, ByRef CardIdList As Integer) As Integer '��ȡ���п���
        Declare Function dmc_get_card_version Lib "LTDMC.dll" (ByVal CardNo As Integer, ByRef CardVersion As Long) As Integer     '��ȡ���ƿ�Ӳ���汾
        Declare Function dmc_get_card_soft_version Lib "LTDMC.dll" (ByVal CardNo As Integer, ByRef FirmID As Long, ByRef SubFirmID As Long) As Integer           '��ȡ���ƿ�Ӳ���Ĺ̼��汾
        Declare Function dmc_get_card_lib_version Lib "LTDMC.dll" (ByRef LibVer As Long) As Integer       '��ȡ���ƿ���̬��汾
        Declare Function dmc_get_total_axes Lib "LTDMC.dll" (ByVal CardNo As Integer, ByRef TotalAxis As Long) As Integer         '��ȡָ��������
        
        '3800,3600,5800,5600ר�� ��IOӳ������
        Declare Function dmc_set_AxisIoMap Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal MsgType As Integer, ByVal MapPortType As Integer, ByVal MapPortIndex As Integer, ByVal Filter As Long) As Integer
        Declare Function dmc_get_AxisIoMap Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal MsgType As Integer, ByRef MapPortType As Integer, ByRef MapPortIndex As Integer, ByRef Filter As Long) As Integer
        '���Ϻ����Ժ���Ϊ��λ�ɼ���ʹ�ã��º�����ʱ��ͳһ����Ϊ��λ
        Declare Function dmc_set_axis_io_map Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal IoType As Integer, ByVal MapIoType As Integer, ByVal MapIoIndex As Integer, ByVal Filter As Double) As Integer
        Declare Function dmc_get_axis_io_map Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal IoType As Integer, ByRef MapIoType As Integer, ByRef MapIoIndex As Integer, ByRef Filter As Double) As Integer
        Declare Function dmc_set_special_input_filter Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal filter_time As Double) As Integer      '��������ר��IO�˲�ʱ��
        
        'DMC5800ר�� ����IOӳ��  ���ڶ�ȡ�˲����IO�ڵ�ƽ״̬
        Declare Function dmc_set_io_map_virtual Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal bitno As Integer, ByVal MapIoType As Integer, ByVal MapIoIndex As Integer, ByVal Filter As Double) As Integer
        Declare Function dmc_get_io_map_virtual Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal bitno As Integer, ByRef MapIoType As Integer, ByRef MapIoIndex As Integer, ByRef Filter As Double) As Integer
        Declare Function dmc_read_inbit_virtual Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal bitno As Integer) As Integer
        
        '���ز����ļ�
        Declare Function dmc_download_configfile Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal FileName As String) As Integer
        '���ع̼��ļ�
        Declare Function dmc_download_firmware Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal FileName As String) As Integer
        '��λ/�쳣����
        Declare Function dmc_set_softlimit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal enable As Integer, ByVal source_sel As Integer, ByVal SL_action As Integer, ByVal N_limit As Long, ByVal P_limit As Long) As Integer  '��������λ����
        Declare Function dmc_get_softlimit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef enable As Integer, ByRef source_sel As Integer, ByRef SL_action As Integer, ByRef N_limit As Long, ByRef P_limit As Long) As Integer    '��ȡ����λ����
        Declare Function dmc_set_el_mode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal el_enable As Integer, ByVal el_logic As Integer, ByVal el_mode As Integer) As Integer      '����EL�ź�
        Declare Function dmc_get_el_mode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef el_enable As Integer, ByRef el_logic As Integer, ByRef el_mode As Integer) As Integer   '��ȡ����EL�ź�
        Declare Function dmc_set_emg_mode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal enable As Integer, ByVal emg_logic As Integer) As Integer    '����EMG�ź�
        Declare Function dmc_get_emg_mode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef enbale As Integer, ByRef emg_logic As Integer) As Integer        '��ȡ����EMG�ź�
        '3800,3600,5800,5600ר�� �ⲿ����ֹͣ�źż�����ֹͣʱ������
        Declare Function dmc_set_dstp_mode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal enable As Integer, ByVal logic As Integer, ByVal time As Long) As Integer
        Declare Function dmc_get_dstp_mode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef enable As Integer, ByRef logic As Integer, ByRef time As Long) As Integer
        Declare Function dmc_set_dstp_time Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef time As Long) As Integer
        Declare Function dmc_get_dstp_time Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef time As Long) As Integer
        '���Ϻ����Ժ���Ϊ��λ�ɼ���ʹ�ã��º�����ʱ��ͳһ����Ϊ��λ
        Declare Function dmc_set_io_dstp_mode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal enable As Integer, ByVal logic As Integer) As Integer
        Declare Function dmc_get_io_dstp_mode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef enable As Integer, ByRef logic As Integer) As Integer
        Declare Function dmc_set_dec_stop_time Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef stop_time As Double) As Integer
        Declare Function dmc_get_dec_stop_time Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef stop_time As Double) As Integer
        
        '�ٶ�����
        Declare Function dmc_set_profile Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal Min_Vel As Double, ByVal Max_Vel As Double, ByVal Tacc As Double, ByVal Tdec As Double, ByVal Stop_vel As Double) As Integer '�趨�ٶ����߲���
        Declare Function dmc_get_profile Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef Min_Vel As Double, ByRef Max_Vel As Double, ByRef Tacc As Double, ByRef Tdec As Double, ByRef Stop_vel As Double) As Integer '��ȡ�ٶ����߲���
        Declare Function dmc_set_s_profile Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal s_mode As Integer, ByVal s_para As Double) As Integer        '����ƽ���ٶ����߲���
        Declare Function dmc_get_s_profile Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal s_mode As Integer, ByRef s_para As Double) As Integer    '��ȡƽ���ٶ����߲���
        Declare Function dmc_set_vector_profile_multicoor Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer, ByVal Min_Vel As Double, ByVal Max_Vel As Double, ByVal Tacc As Double, ByVal Tdec As Double, ByVal Stop_vel As Double) As Integer
        Declare Function dmc_get_vector_profile_multicoor Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer, ByRef Min_Vel As Double, ByRef Max_Vel As Double, ByRef Tacc As Double, ByRef Tdec As Double, ByRef Stop_vel As Double) As Integer
        
        '�˶�ģ������ģʽ
        Declare Function dmc_set_pulse_outmode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal outmode As Integer) As Integer    '�趨�������ģʽ
        Declare Function dmc_get_pulse_outmode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef outmode As Integer) As Integer      '��ȡ�������ģʽ

        '�����˶�
        '��λ�˶�
        Declare Function dmc_pmove Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal Dist As Long, ByVal posi_mode As Integer) As Integer  'ָ����������λ���˶�
        Declare Function dmc_reset_target_position Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal Dist As Long, ByVal posi_mode As Integer) As Integer  '�˶��иı�Ŀ��λ��
        Declare Function dmc_change_speed Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal Curr_Vel As Double, ByVal Taccdec As Double) As Integer        '���߸ı�ָ����ĵ�ǰ�˶��ٶ�
        Declare Function dmc_update_target_position Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal Dist As Long, ByVal posi_mode As Integer) As Integer  'ǿ�иı�Ŀ��λ��
        'JOG�˶�
        Declare Function dmc_vmove Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal dir As Integer) As Integer    'ָ�����������˶�
        'PVT�˶�
        Declare Function dmc_PvtTable Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal Count As Long, ByRef pTime As Double, ByRef pPos As Long, ByRef pVel As Double) As Integer
        Declare Function dmc_PtsTable Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal Count As Long, ByRef pTime As Double, ByRef pPos As Long, ByRef pPercent As Double) As Integer
        Declare Function dmc_PvtsTable Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal Count As Long, ByRef pTime As Double, ByRef pPos As Long, ByVal velBegin As Double, ByVal velEnd As Double) As Integer
        Declare Function dmc_PttTable Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal Count As Long, ByRef pTime As Double, ByRef pPos As Long) As Integer
        Declare Function dmc_PvtMove Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal AxisNum As Integer, ByRef AxisList As Integer) As Integer
        
        '�����˶�
        'ֱ�߲岹
        Declare Function dmc_line_multicoor Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer, ByVal AxisNum As Integer, ByRef AxisList As Integer, ByRef DistList As Long, ByVal posi_mode As Integer) As Integer     'ָ����ֱ�߲岹�˶�
        'ƽ��Բ��
        Declare Function dmc_arc_move_multicoor Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer, ByRef AxisList As Integer, ByRef target_Pos As Long, ByRef cen_Pos As Long, ByVal arc_dir As Integer, ByVal posi_mode As Integer) As Integer
   
        '�����˶�
        Declare Function dmc_set_home_pin_logic Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal org_logic As Integer, ByVal Filter As Double) As Integer         '����HOME�ź�
        Declare Function dmc_get_home_pin_logic Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef org_logic As Integer, ByRef Filter As Double) As Integer     '��ȡ����HOME�ź�
        Declare Function dmc_set_homemode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal home_dir As Integer, ByVal vel_mode As Double, ByVal mode As Integer, ByVal EZ_count As Integer) As Integer '�趨ָ����Ļ�ԭ��ģʽ
        Declare Function dmc_get_homemode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef home_dir As Integer, ByRef vel_mode As Double, ByRef home_mode As Integer, ByRef EZ_count As Integer) As Integer '��ȡָ����Ļ�ԭ��ģʽ
        Declare Function dmc_home_move Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer) As Integer
        '3410ר�� ��ԭ���еļ����ź�
        Declare Function dmc_set_sd_mode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal enable As Integer, ByVal sd_logic As Integer, ByVal sd_mode As Integer) As Integer      '����SD�ź�
        Declare Function dmc_get_sd_mode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef enable As Integer, ByRef sd_logic As Integer, ByRef sd_mode As Integer) As Integer    '��ȡ����SD�ź�
  
        'ԭ������
        '3800,3600,5800,5600ר��
        Declare Function dmc_set_homelatch_mode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal enable As Integer, ByVal logic As Integer, ByVal source As Integer) As Integer
        Declare Function dmc_get_homelatch_mode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef enable As Integer, ByRef logic As Integer, ByRef source As Integer) As Integer
        Declare Function dmc_get_homelatch_flag Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer) As Long
        Declare Function dmc_reset_homelatch_flag Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer) As Integer
        Declare Function dmc_get_homelatch_value Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer) As Long

        '�����˶�
        '3800,3600,5800,5600ר�� ����ͨ��ѡ��
        Declare Function dmc_set_handwheel_channel Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal index As Integer) As Integer
        Declare Function dmc_get_handwheel_channel Lib "LTDMC.dll" (ByVal CardNo As Integer, ByRef index As Integer) As Integer
        'һ�������źſ��Ƶ������˶�
        Declare Function dmc_set_handwheel_inmode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal inmode As Integer, ByVal multi As Long, ByVal vh As Double) As Integer      '�����������������źŵĹ�����ʽ
        Declare Function dmc_get_handwheel_inmode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef inmode As Integer, ByRef multi As Long, ByRef vh As Double) As Integer    '��ȡ�������������źŵĹ�����ʽ
        '3800,3600,5800,5600ר�� һ�������źſ��ƶ����˶�
        Declare Function dmc_set_handwheel_inmode_extern Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal inmode As Integer, ByVal AxisNum As Integer, ByRef AxisList As Integer, ByRef multi As Long) As Integer     '�����������������źŵĹ�����ʽ
        Declare Function dmc_get_handwheel_inmode_extern Lib "LTDMC.dll" (ByVal CardNo As Integer, ByRef inmode As Integer, ByRef AxisNum As Integer, ByRef AxisList As Integer, ByRef multi As Long) As Integer   '��ȡ�������������źŵĹ�����ʽ
        '���������˶�
        Declare Function dmc_handwheel_move Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer) As Integer         '����ָ��������������˶�
        '������
        Declare Function dmc_set_counter_inmode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal mode As Integer) As Integer      '�趨�������ļ�����ʽ
        Declare Function dmc_get_counter_inmode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef mode As Integer) As Integer        '��ȡ�������ļ�����ʽ
        Declare Function dmc_get_encoder Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer) As Long
        Declare Function dmc_set_encoder Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal encoder_value As Long) As Integer
        Declare Function dmc_set_ez_mode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal ez_logic As Integer, ByVal ez_mode As Integer, ByVal Filter As Double) As Integer       '����EZ�ź�
        Declare Function dmc_get_ez_mode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef ez_logic As Integer, ByRef ez_mode As Integer, ByRef Filter As Double) As Integer     '��ȡ����EZ�ź�
        '����
        Declare Function dmc_set_ltc_mode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal ltc_logic As Integer, ByVal ltc_mode As Integer, ByVal Filter As Double) As Integer    '����LTC�ź�
        Declare Function dmc_get_ltc_mode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef ltc_logic As Integer, ByRef ltc_mode As Integer, ByRef Filter As Double) As Integer  '��ȡ����LTC�ź�
        Declare Function dmc_set_latch_mode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal all_enable As Integer, ByVal latch_source As Integer, ByVal latch_channel As Integer) As Integer     '�������淽ʽ
        Declare Function dmc_get_latch_mode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef all_enable As Integer, ByRef latch_source As Integer, ByRef latch_channel As Integer) As Integer
        Declare Function dmc_get_latch_value Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer) As Long           '��ȡ���ƿ�������ֵ������������ģʽ�¶�ȡһ�ο��ƿ�����Ч������������Զ���1,��������ֵ������PC��������
        Declare Function dmc_get_latch_flag Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer) As Integer             '��ȡ���ƿ�����Ч�������
        Declare Function dmc_reset_latch_flag Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer) As Integer       '��λ��־
        Declare Function dmc_get_latch_value_extern Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal index As Integer) As Long  '�������Ŷ�ȡPC���������ѱ��������ֵ������ʱ��Ὣ���ƿ��ڵ���Ч����ֵȫ��������PC��������
        Declare Function dmc_get_latch_flag_extern Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer) As Integer            '��ȡPC���������ѱ����������ֵ����
        'LTC�˿ڴ�����ʱ��ͣʱ�� ��λus
        Declare Function dmc_set_latch_stop_time Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal time As Long) As Integer
        Declare Function dmc_get_latch_stop_time Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef time As Long) As Integer
        '3800,3600,5800,5600ר�� LTC�������
        Declare Function dmc_SetLtcOutMode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal enable As Integer, ByVal bitno As Integer) As Integer
        Declare Function dmc_GetLtcOutMode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef enable As Integer, ByRef bitno As Integer) As Integer

        '�������λ�ñȽ�
        Declare Function dmc_compare_set_config Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal enable As Integer, ByVal cmp_source As Integer) As Integer       '���ñȽ���
        Declare Function dmc_compare_get_config Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef enable As Integer, ByRef cmp_source As Integer) As Integer   '��ȡ���ñȽ���
        Declare Function dmc_compare_clear_points Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer) As Integer          '������бȽϵ�
        Declare Function dmc_compare_add_point Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal pos As Long, ByVal dir As Integer, ByVal action As Integer, ByVal actpara As Long) As Integer    '��ӱȽϵ�
        Declare Function dmc_compare_get_current_point Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef pos As Long) As Integer    '��ȡ��ǰ�Ƚϵ�
        Declare Function dmc_compare_get_points_runned Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef pointNum As Long) As Integer       '��ѯ�Ѿ��ȽϹ��ĵ�
        Declare Function dmc_compare_get_points_remained Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef pointNum As Long) As Integer     '��ѯ���Լ���ıȽϵ�����
        '��ά����λ�ñȽ�
        Declare Function dmc_compare_set_config_extern Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal enable As Integer, ByVal cmp_source As Integer) As Integer           '���ñȽ���
        Declare Function dmc_compare_get_config_extern Lib "LTDMC.dll" (ByVal CardNo As Integer, ByRef enable As Integer, ByRef cmp_source As Integer) As Integer           '��ȡ���ñȽ���
        Declare Function dmc_compare_clear_points_extern Lib "LTDMC.dll" (ByVal CardNo As Integer) As Integer          '������бȽϵ�
        Declare Function dmc_compare_add_point_extern Lib "LTDMC.dll" (ByVal CardNo As Integer, ByRef axis As Integer, ByRef pos As Long, ByRef dir As Integer, ByVal action As Integer, ByVal actpara As Long) As Integer          '�������λ�ñȽϵ�
        Declare Function dmc_compare_get_current_point_extern Lib "LTDMC.dll" (ByVal CardNo As Integer, ByRef pos As Long) As Integer    '��ȡ��ǰ�Ƚϵ�
        Declare Function dmc_compare_get_points_runned_extern Lib "LTDMC.dll" (ByVal CardNo As Integer, ByRef pointNum As Long) As Integer       '��ѯ�Ѿ��ȽϹ��ĵ�
        Declare Function dmc_compare_get_points_remained_extern Lib "LTDMC.dll" (ByVal CardNo As Integer, ByRef pointNum As Long) As Integer      '��ѯ���Լ���Ķ�ά�Ƚϵ�����

        '�������λ�ñȽϺ���
        Declare Function dmc_hcmp_set_mode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal hcmp As Integer, ByVal cmp_mode As Integer) As Integer
        Declare Function dmc_hcmp_get_mode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal hcmp As Integer, ByRef cmp_mode As Integer) As Integer
        Declare Function dmc_hcmp_set_config Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal hcmp As Integer, ByVal axis As Integer, ByVal cmp_source As Integer, ByVal cmp_logic As Integer, ByVal time As Long) As Integer
        Declare Function dmc_hcmp_get_config Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal hcmp As Integer, ByRef axis As Integer, ByRef cmp_source As Integer, ByRef cmp_logic As Integer, ByRef time As Long) As Integer
        Declare Function dmc_hcmp_add_point Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal hcmp As Integer, ByVal cmp_pos As Long) As Integer
        Declare Function dmc_hcmp_set_liner Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal hcmp As Integer, ByVal Increment As Long, ByVal Count As Long) As Integer
        Declare Function dmc_hcmp_get_liner Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal hcmp As Integer, ByRef Increment As Long, ByRef Count As Long) As Integer
        Declare Function dmc_hcmp_get_current_state Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal hcmp As Integer, ByRef remained_points As Long, ByRef current_point As Long, ByRef runned_points As Long) As Integer
        Declare Function dmc_hcmp_clear_points Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal hcmp As Integer) As Integer
        Declare Function dmc_read_cmp_pin Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal hcmp As Integer) As Integer
        Declare Function dmc_write_cmp_pin Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal hcmp As Integer, ByVal on_off As Integer) As Integer
        
        'ͨ��IO
        Declare Function dmc_read_inbit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal bitno As Integer) As Integer            '��ȡ����ڵ�״̬
        Declare Function dmc_write_outbit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal bitno As Integer, ByVal on_off As Integer) As Integer         '��������ڵ�״̬
        Declare Function dmc_read_outbit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal bitno As Integer) As Integer           '��ȡ����ڵ�״̬
        Declare Function dmc_read_inport Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal PortNo As Integer) As Long     '��ȡ����˿ڵ�ֵ
        Declare Function dmc_read_outport Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal PortNo As Integer) As Long            '��ȡ����˿ڵ�ֵ
        Declare Function dmc_write_outport Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal PortNo As Integer, ByVal outport_val As Long) As Integer       '��������˿ڵ�ֵ
        '3800,3600,5800,5600ר�� IO�������ܺ���
        Declare Function dmc_IO_TurnOutDelay Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal bitno As Integer, ByVal DelayTime As Long) As Integer
        Declare Function dmc_SetIoCountMode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal bitno As Integer, ByVal mode As Integer, ByVal Filter As Long) As Integer
        Declare Function dmc_GetIoCountMode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal bitno As Integer, ByRef mode As Integer, ByRef Filter As Long) As Integer
        Declare Function dmc_SetIoCountValue Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal bitno As Integer, ByVal CountValue As Long) As Integer
        Declare Function dmc_GetIoCountValue Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal bitno As Integer, ByRef CountValue As Long) As Integer
        '���Ϻ����Ժ���Ϊ��λ�ɼ���ʹ�ã��º�����ʱ��ͳһ����Ϊ��λ
        Declare Function dmc_reverse_outbit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal bitno As Integer, ByVal reverse_time As Double) As Integer
        Declare Function dmc_set_io_count_mode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal bitno As Integer, ByVal mode As Integer, ByVal Filter As Double) As Integer
        Declare Function dmc_get_io_count_mode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal bitno As Integer, ByRef mode As Integer, ByRef Filter As Double) As Integer
        Declare Function dmc_set_io_count_value Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal bitno As Integer, ByVal CountValue As Long) As Integer
        Declare Function dmc_get_io_count_value Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal bitno As Integer, ByRef CountValue As Long) As Integer
        
        '�ŷ�ר��IO
        Declare Function dmc_set_inp_mode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal enable As Integer, ByVal inp_logic As Integer) As Integer      '����INP�ź�
        Declare Function dmc_get_inp_mode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef enable As Integer, ByRef inp_logic As Integer) As Integer  '��ȡ����INP�ź�
        Declare Function dmc_set_erc_mode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal enable As Integer, ByVal erc_logic As Integer, ByVal erc_width As Integer, ByVal erc_off_time As Integer) As Integer   '����ERC�ź�
        Declare Function dmc_get_erc_mode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef enable As Integer, ByRef erc_logic As Integer, ByRef erc_width As Integer, ByRef erc_off_time As Integer) As Integer   '��ȡ����ERC�ź�
        Declare Function dmc_set_alm_mode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal enable As Integer, ByVal alm_logic As Integer, ByVal alm_action As Integer) As Integer '����ALM�ź�
        Declare Function dmc_get_alm_mode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef enable As Integer, ByRef alm_logic As Integer, ByRef alm_action As Integer) As Integer     '��ȡ����ALM�ź�
        Declare Function dmc_write_sevon_pin Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal on_off As Integer) As Integer       '���SEVON�ź�
        Declare Function dmc_read_sevon_pin Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer) As Integer         '��ȡSEVON�ź�
        Declare Function dmc_read_rdy_pin Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer) As Integer           '��ȡRDY״̬
        Declare Function dmc_write_erc_pin Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal sel As Integer) As Integer    '����ERC�ź����
        Declare Function dmc_read_erc_pin Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer) As Integer    '��ȡERC�ź�����˿�
    
        '�˶�״̬
        Declare Function dmc_read_current_speed Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer) As Double      '��ȡָ����ĵ�ǰ�ٶ�
        Declare Function dmc_read_vector_speed Lib "LTDMC.dll" (ByVal CardNo As Integer) As Double    '��ȡ��ǰ���Ĳ岹�ٶ�
        Declare Function dmc_get_position Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer) As Long      '��ȡָ����ĵ�ǰλ��
        Declare Function dmc_set_position Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal current_position As Long) As Integer   '�趨ָ����ĵ�ǰλ��
        Declare Function dmc_check_done Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer) As Integer     '��ȡָ������˶�״̬
        Declare Function dmc_check_done_multicoor Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer) As Integer
        Declare Function dmc_axis_io_status Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer) As Long    '��ȡָ�����й��˶��źŵ�״̬
        Declare Function dmc_stop Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal stop_mode As Integer) As Integer       '����ֹͣ
        Declare Function dmc_stop_multicoor Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer, ByVal stop_mode As Integer) As Integer
        Declare Function dmc_emg_stop Lib "LTDMC.dll" (ByVal CardNo As Integer) As Integer      '����ֹͣ������
        Declare Function dmc_get_target_position Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer) As Long      '��ȡĿ��λ��
        '����ᵽλ״̬
        Declare Function dmc_set_factor_error Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal factor As Double, ByVal error As Long) As Integer
        Declare Function dmc_get_factor_error Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef factor As Double, ByRef error As Long) As Integer
        Declare Function dmc_check_success_pulse Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer) As Integer
        Declare Function dmc_check_success_encoder Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer) As Integer

        '3800,3600,5800,5600ר�� ��������ߺ�ͨѶ״̬
        Declare Function dmc_LinkState Lib "LTDMC.dll" (ByVal CardNo As Integer, ByRef state As Integer) As Integer      '����״̬
        
        
        '3800,3600,5800,5600ר�� CAN-IO��չ
        Declare Function dmc_set_can_state Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal NodeNum As Integer, ByVal state As Integer) As Integer
        Declare Function dmc_get_can_state Lib "LTDMC.dll" (ByVal CardNo As Integer, ByRef NodeNum As Integer, ByRef state As Integer) As Integer
        Declare Function dmc_write_can_outbit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Node As Integer, ByVal bitno As Integer, ByVal on_off As Integer) As Integer
        Declare Function dmc_read_can_outbit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Node As Integer, ByVal bitno As Integer) As Integer
        Declare Function dmc_read_can_inbit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Node As Integer, ByVal bitno As Integer) As Integer
        Declare Function dmc_write_can_outport Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Node As Integer, ByVal PortNo As Integer, ByVal outport_val As Long) As Integer
        Declare Function dmc_read_can_outport Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Node As Integer, ByVal PortNo As Integer) As Long
        Declare Function dmc_read_can_inport Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Node As Integer, ByVal PortNo As Integer) As Long
        Declare Function dmc_get_can_errcode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByRef Errcode As Integer) As Integer
        
        '�������
        Declare Function dmc_write_sn Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal new_sn As String) As Integer
        Declare Function dmc_check_sn Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal check_sn As String) As Integer
        
        '�������ӡ���
        Declare Function dmc_set_debug_mode Lib "LTDMC.dll" (ByVal mode As Integer, ByVal FileName As String) As Integer
        Declare Function dmc_get_debug_mode Lib "LTDMC.dll" (ByRef mode As Integer, ByRef FileName As String) As Integer
        
        
        'DMC5000ϵ��ר�ã��������嵱���ĸ߼��˶����ܣ������岹�˶�����
        Declare Function dmc_get_axis_run_mode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef run_mode As Integer) As Integer       '���˶�ģʽ
        Declare Function dmc_set_trace Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal enable As Integer) As Integer      'trace����
        Declare Function dmc_get_trace Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef enable As Integer) As Integer
        Declare Function dmc_read_trace_data Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal data_option As Integer, ByRef ReceiveSize As Long, ByRef time As Double, ByRef data As Double, ByRef remain_num As Long) As Integer
        Declare Function dmc_get_equiv Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef equiv As Double) As Integer       '���嵱��
        Declare Function dmc_set_equiv Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal equiv As Double) As Integer
        Declare Function dmc_set_backlash_unit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal backlash As Double) As Integer  '�����϶
        Declare Function dmc_get_backlash_unit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef backlash As Double) As Integer
        
        Declare Function dmc_set_position_unit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal pos As Double) As Integer    '��ǰָ��λ��
        Declare Function dmc_get_position_unit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef pos As Double) As Integer
        Declare Function dmc_set_encoder_unit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal pos As Double) As Integer   '��ǰ����λ��
        Declare Function dmc_get_encoder_unit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef pos As Double) As Integer
        
        Declare Function dmc_pmove_unit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal Dist As Double, ByVal posi_mode As Integer) As Integer  '����
        Declare Function dmc_t_pmove_unit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal Dist As Double, ByVal posi_mode As Integer) As Integer  '�Գ�T�Ͷ���
        Declare Function dmc_ex_t_pmove_unit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal Dist As Double, ByVal posi_mode As Integer) As Integer '�ǶԳ�T�Ͷ���
        Declare Function dmc_s_pmove_unit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal Dist As Double, ByVal posi_mode As Integer) As Integer    '�Գ�S�Ͷ���
        Declare Function dmc_ex_s_pmove_unit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal Dist As Double, ByVal posi_mode As Integer) As Integer  '�ǶԳ�S�Ͷ���

        Declare Function dmc_line_unit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer, ByVal AxisNum As Integer, ByRef AxisList As Integer, ByRef target_Pos As Double, ByVal posi_mode As Integer) As Integer   '����ֱ��

        Declare Function dmc_arc_move_center_unit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer, ByVal AxisNum As Integer, ByRef AxisList As Integer, ByRef target_Pos As Double, ByRef cen_Pos As Double, ByVal arc_dir As Integer, ByVal CircleNum As Long, ByVal posi_mode As Integer) As Integer    'Բ���յ�ʽԲ��/������/������
        Declare Function dmc_arc_move_radius_unit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer, ByVal AxisNum As Integer, ByRef AxisList As Integer, ByRef target_Pos As Double, ByVal arc_radius As Double, ByVal arc_dir As Integer, ByVal CircleNum As Long, ByVal posi_mode As Integer) As Integer   '�뾶�յ�ʽԲ��/������
        Declare Function dmc_arc_move_3points_unit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer, ByVal AxisNum As Integer, ByRef AxisList As Integer, ByRef target_Pos As Double, ByRef mid_pos As Double, ByVal CircleNum As Long, ByVal posi_mode As Integer) As Integer    '����ʽԲ��/������

        Declare Function dmc_read_current_speed_unit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef current_speed As Double) As Integer  '�ᵱǰ�����ٶ�
        Declare Function dmc_set_vector_profile_unit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer, ByVal Min_Vel As Double, ByVal Max_Vel As Double, ByVal Tacc As Double, ByVal Tdec As Double, ByVal Stop_vel As Double) As Integer    '���β岹�ٶȲ���
        Declare Function dmc_get_vector_profile_unit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer, ByRef Min_Vel As Double, ByRef Max_Vel As Double, ByRef Tacc As Double, ByRef Tdec As Double, ByRef Stop_vel As Double) As Integer

        Declare Function dmc_set_profile_unit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal Min_Vel As Double, ByVal Max_Vel As Double, ByVal Tacc As Double, ByVal Tdec As Double, ByVal Stop_vel As Double) As Integer   '�����ٶȲ���
        Declare Function dmc_get_profile_unit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef Min_Vel As Double, ByRef Max_Vel As Double, ByRef Tacc As Double, ByRef Tdec As Double, ByRef Stop_vel As Double) As Integer
        
        Declare Function dmc_reset_target_position_unit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal New_pos As Double) As Integer   '���߱�λ
        Declare Function dmc_update_target_position_unit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal New_pos As Double) As Integer   'ǿ�б�λ
        Declare Function dmc_change_speed_unit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByVal New_vel As Double, ByVal Taccdec As Double) As Integer           '���߱���

        '�����岹
        Declare Function dmc_conti_open_list Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer, ByVal AxisNum As Integer, ByRef AxisList As Integer) As Integer     '������������
        Declare Function dmc_conti_close_list Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer) As Integer     '�ر�����������
        Declare Function dmc_conti_stop_list Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer, ByVal stop_mode As Integer) As Integer    '�����岹��ֹͣ
        Declare Function dmc_conti_pause_list Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer) As Integer     '�����岹����ͣ
        Declare Function dmc_conti_start_list Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer) As Integer    '��ʼ�����岹
        Declare Function dmc_conti_remain_space Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer) As Long     '�������岹ʣ�໺����
        Declare Function dmc_conti_read_current_mark Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer) As Long  '��ȡ��ǰ�����岹�εı��
        Declare Function dmc_conti_set_blend Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer, ByVal enable As Integer) As Integer    'blend�սǹ���ģʽ
        Declare Function dmc_conti_get_blend Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer, ByRef enable As Integer) As Integer

        Declare Function dmc_conti_set_profile_unit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer, ByVal Min_Vel As Double, ByVal Max_Vel As Double, ByVal Tacc As Double, ByVal Tdec As Double, ByVal Stop_vel As Double) As Integer   '���������岹�ٶ�
        Declare Function dmc_conti_set_s_profile Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer, ByVal s_mode As Integer, ByVal s_para As Double) As Integer      '���������岹ƽ��ʱ��
        Declare Function dmc_conti_get_s_profile Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer, ByVal s_mode As Integer, ByRef s_para As Double) As Integer

        Declare Function dmc_conti_set_pause_output Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer, ByVal action As Integer, ByVal mask As Long, ByVal state As Long) As Integer   '��ͣʱIO��� action 0, ��������1�� ��ͣʱ���io_state; 2 ��ͣʱ���io_state, ��������ʱ���Ȼָ�ԭ����io; 3,��2�Ļ����ϣ�ֹͣʱҲ��Ч
        Declare Function dmc_conti_get_pause_output Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer, ByRef action As Integer, ByRef mask As Long, ByRef state As Long) As Integer
        Declare Function dmc_conti_set_override Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer, ByVal Percent As Double) As Integer   '����ÿ���ٶȱ���  ������ָ��
        Declare Function dmc_conti_change_speed_ratio Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer, ByVal Percent As Double) As Integer   '�����岹��̬����
        Declare Function dmc_conti_get_run_state Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer) As Integer    '��ȡ�����岹״̬��0-���У�1-��ͣ��2-����ֹͣ��3-�쳣ֹͣ
        Declare Function dmc_conti_check_done Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer) As Integer      '��������岹�˶�״̬��0-���У�1-ֹͣ
        Declare Function dmc_conti_wait_input Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer, ByVal bitno As Integer, ByVal on_off As Integer, ByVal TimeOut As Double, ByVal mark As Long) As Integer   '���������岹�ȴ�����

        Declare Function dmc_conti_delay_outbit_to_start Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer, ByVal bitno As Integer, ByVal on_off As Integer, ByVal delay_value As Double, ByVal delay_mode As Integer, ByVal ReverseTime As Double) As Integer    '����ڹ켣�����IO�ͺ����
        Declare Function dmc_conti_delay_outbit_to_stop Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer, ByVal bitno As Integer, ByVal on_off As Integer, ByVal delay_time As Double, ByVal ReverseTime As Double) As Integer   '����ڹ켣���յ�IO�ͺ����
        Declare Function dmc_conti_ahead_outbit_to_stop Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer, ByVal bitno As Integer, ByVal on_off As Integer, ByVal ahead_value As Double, ByVal ahead_mode As Integer, ByVal ReverseTime As Double) As Integer  '��Թ켣���յ�IO��ǰ���
        Declare Function dmc_conti_accurate_outbit_unit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer, ByVal cmp_no As Integer, ByVal on_off As Integer, ByVal map_axis As Integer, ByVal abs_pos As Double, ByVal pos_source As Integer, ByVal ReverseTime As Double) As Integer     'ȷ��λ�þ�ȷ���
        Declare Function dmc_conti_write_outbit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer, ByVal bitno As Integer, ByVal on_off As Integer, ByVal ReverseTime As Double) As Integer     '����������IO���

        Declare Function dmc_conti_delay Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer, ByVal delay_time As Double, ByVal mark As Long) As Integer    '�����ʱָ��
        Declare Function dmc_conti_line_unit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer, ByVal AxisNum As Integer, ByRef AxisList As Integer, ByRef target_Pos As Double, ByVal posi_mode As Integer, ByVal mark As Long) As Integer    '�����岹ֱ��
        Declare Function dmc_conti_arc_move_center_unit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer, ByVal AxisNum As Integer, ByRef AxisList As Integer, ByRef target_Pos As Double, ByRef cen_Pos As Double, ByVal arc_dir As Integer, ByVal CircleNum As Long, ByVal posi_mode As Integer, ByVal mark As Long) As Integer    'Բ���յ�ʽԲ��/������/������
        Declare Function dmc_conti_arc_move_radius_unit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer, ByVal AxisNum As Integer, ByRef AxisList As Integer, ByRef target_Pos As Double, ByVal arc_radius As Double, ByVal arc_dir As Integer, ByVal CircleNum As Long, ByVal posi_mode As Integer, ByVal mark As Long) As Integer   '�뾶�յ�ʽԲ��/������
        Declare Function dmc_conti_arc_move_3points_unit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer, ByVal AxisNum As Integer, ByRef AxisList As Integer, ByRef target_Pos As Double, ByRef mid_pos As Double, ByVal CircleNum As Long, ByVal posi_mode As Integer, ByVal mark As Long) As Integer    '����ʽԲ��/������

        Declare Function dmc_conti_clear_io_action Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer, ByVal IoMask As Long) As Integer   '�������δִ�����IO����
        Declare Function dmc_get_stop_reason Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer, ByRef StopReason As Long) As Integer   '��ȡ��ֹͣԭ��
        Declare Function dmc_clear_stop_reason Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal axis As Integer) As Integer   '�����ֹͣԭ��


        Declare Function dmc_rectangle_move_unit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer, ByVal AxisNum As Integer, ByRef AxisList As Integer, ByRef target_Pos As Double, ByRef Mark_Pos As Double, ByVal Count As Long, ByVal rect_mode As Integer, ByVal posi_mode As Integer) As Integer
        Declare Function dmc_conti_rectangle_move_unit Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer, ByVal AxisNum As Integer, ByRef AxisList As Integer, ByRef target_Pos As Double, ByRef Mark_Pos As Double, ByVal Count As Long, ByVal rect_mode As Integer, ByVal posi_mode As Integer, ByVal mark As Long) As Integer

        Declare Function dmc_calculate_arclength_center Lib "LTDMC.dll" (ByRef start_pos As Double, ByRef target_Pos As Double, ByRef cen_Pos As Double, ByVal arc_dir As Integer, ByVal ArcCircle As Double, ByRef ArcLength As Double) As Integer
        Declare Function dmc_calculate_arclength_3point Lib "LTDMC.dll" (ByRef start_pos As Double, ByRef mid_pos As Double, ByRef target_Pos As Double, ByVal ArcCircle As Double, ByRef ArcLength As Double) As Integer
        Declare Function dmc_calculate_arclength_radius Lib "LTDMC.dll" (ByRef start_pos As Double, ByRef target_Pos As Double, ByVal arc_radius As Double, ByVal arc_dir As Integer, ByVal ArcCircle As Double, ByRef ArcLength As Double) As Integer
        Declare Function dmc_conti_set_involute_mode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer, ByVal mode As Integer) As Integer
        Declare Function dmc_conti_get_involute_mode Lib "LTDMC.dll" (ByVal CardNo As Integer, ByVal Crd As Integer, ByRef mode As Integer) As Integer



     
     
''�������������ϸ񱣳�һ����
            
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'''                                 LTDMC V1.1 end of module                       '''
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

