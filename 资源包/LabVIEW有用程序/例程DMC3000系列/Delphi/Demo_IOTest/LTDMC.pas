unit LTDMC;

interface

//�忨����
function dmc_board_init():Smallint;stdcall; //��ʼ�����ƿ�
function dmc_board_reset():Smallint;stdcall; 
function dmc_board_close():Smallint;stdcall; //�رտ��ƿ�
function dmc_get_CardInfList(out CardNum:WORD;out CardTypeList:LongWORD;out CardIdList:WORD):Smallint;stdcall;  //��ȡ���п���
function dmc_get_card_version(CardNo:WORD;out CardVersion:LongWORD):Smallint;stdcall; //��ȡ���ƿ�Ӳ���汾
function dmc_get_card_soft_version(CardNo:WORD;out FirmID:LongWORD;out SubFirmID:LongWORD):Smallint;stdcall; //��ȡ���ƿ�Ӳ���Ĺ̼��汾
function dmc_get_card_lib_version(out LibVer:LongWORD):Smallint;stdcall;   //��ȡ���ƿ���̬��汾
function dmc_get_total_axes(CardNo:WORD;out TotalAxis:longint):Smallint;stdcall; //��ȡָ��������
//3800ר�� ��IOӳ������
function dmc_set_AxisIoMap(CardNo:WORD;axis:WORD;IoType:WORD;MapIoType:WORD;MapIoIndex:WORD;Filter:LongWORD):Smallint;stdcall; 
function dmc_get_AxisIoMap(CardNo:WORD;axis:WORD;out IoType:WORD;out MapIoType:WORD;out MapIoIndex:WORD;out Filter:LongWORD):Smallint;stdcall; 
//���ز����ļ�
function dmc_download_configfile(CardNo:WORD;FileName:String):Smallint;stdcall;
//���ع̼��ļ�
function dmc_download_firmware(CardNo:WORD;FileName:String):Smallint;stdcall; 
//��λ/�쳣����
function dmc_set_emg_mode(CardNo:WORD;axis:WORD;enable:WORD;emg_logic:WORD):Smallint;stdcall;  //����EMG�ź�
function dmc_get_emg_mode(CardNo:WORD;axis:WORD;out enbale:WORD;out emg_logic:WORD):Smallint;stdcall; //��ȡ����EMG�ź�
function dmc_set_el_mode(CardNo:WORD;axis:WORD;el_enable:WORD;el_logic:WORD;el_mode:WORD):Smallint;stdcall; //����EL�ź�
function dmc_get_el_mode(CardNo:WORD;axis:WORD;out el_enable:WORD;out el_logic:WORD;out el_mode:WORD):Smallint;stdcall; //��ȡ����EL�ź�
function dmc_set_softlimit(CardNo:WORD;axis:WORD;enable:WORD;source_sel:WORD;SL_action:WORD;N_limit:longint;P_limit:longint):Smallint;stdcall; //��������λ����
function dmc_get_softlimit(CardNo:WORD;axis:WORD;out enable:WORD;out source_sel:WORD;out SL_action:WORD;out N_limit:longint;out P_limit:longint):Smallint;stdcall; //��ȡ����λ����
//�ⲿ����ֹͣ�źż�����ֹͣʱ������
function dmc_set_dstp_mode(CardNo:WORD;axis:WORD;enable:WORD;logic:WORD;time:WORD):Smallint;stdcall;
function dmc_get_dstp_mode(CardNo:WORD;axis:WORD;out enable:WORD;out logic:WORD;out time:WORD):Smallint;stdcall;
function dmc_set_dstp_time(CardNo:WORD;axis:WORD;time:WORD):Smallint;stdcall;
function dmc_get_dstp_time(CardNo:WORD;axis:WORD;out time:WORD):Smallint;stdcall;
//���Ϻ����Ժ���Ϊ��λ�ɼ���ʹ�ã��º�����ʱ��ͳһ����Ϊ��λ
function dmc_set_io_dstp_mode(CardNo:WORD;axis:WORD;enable:WORD;logic:WORD):Smallint;stdcall; //�����ⲿIO��������ֹͣģʽ
function dmc_get_io_dstp_mode(CardNo:WORD;axis:WORD;out enable:WORD;out logic:WORD):Smallint;stdcall;
function dmc_set_dec_stop_time(CardNo:WORD;axis:WORD;time:double):Smallint;stdcall;//����ȫ�ּ���ֹͣʱ��
function dmc_get_dec_stop_time(CardNo:WORD;axis:WORD;out time:double):Smallint;stdcall;

//�ٶ�����
function dmc_set_profile(CardNo:WORD;axis:WORD;Min_Vel:double;Max_Vel:double;Tacc:double;Tdec:double;stop_vel:double):Smallint;stdcall; //�趨�ٶ����߲���
function dmc_get_profile(CardNo:WORD;axis:WORD;out Min_Vel:double;out Max_Vel:double;out Tacc:double;out Tdec:double;out stop_vel:double):Smallint;stdcall; //��ȡ�ٶ����߲���
function dmc_set_s_profile(CardNo:WORD;axis:WORD;s_mode:WORD;s_para:double):Smallint;stdcall; //����ƽ���ٶ����߲���
function dmc_get_s_profile(CardNo:WORD;axis:WORD;s_mode:WORD;out s_para:double):Smallint;stdcall; //��ȡƽ���ٶ����߲���
function dmc_set_vector_profile_multicoor(CardNo:WORD;crd:WORD;Min_Vel:double;Max_Vel:double;Tacc:double;Tdec:double;stop_vel:double):Smallint;stdcall; 
function dmc_get_vector_profile_multicoor(CardNo:WORD;crd:WORD;out Min_Vel:double;out Max_Vel:double;out Tacc:double;out Tdec:double;out stop_vel:double):Smallint;stdcall;
//�˶�ģ������ģʽ
function dmc_set_pulse_outmode(CardNo:WORD;axis:WORD;outmode:WORD):Smallint;stdcall; //�趨�������ģʽ
function dmc_get_pulse_outmode(CardNo:WORD;axis:WORD;out outmode:WORD):Smallint;stdcall; //��ȡ�������ģʽ
//��λ�˶�
function dmc_pmove(CardNo:WORD;axis:WORD;dist:longint;posi_mode:WORD):Smallint;stdcall; //ָ����������λ���˶�
function dmc_reset_target_position(CardNo:WORD;axis:WORD;dist:longint;posi_mode:WORD):Smallint;stdcall; //�˶��иı�Ŀ��λ��
function dmc_change_speed(CardNo:WORD;axis:WORD;Curr_Vel:double;Taccdec:double):Smallint;stdcall; //���߸ı�ָ����ĵ�ǰ�˶��ٶ�
function dmc_update_target_position(CardNo:WORD;axis:WORD;dist:longint;posi_mode:WORD):Smallint;stdcall; //�˶��иı�Ŀ��λ��
//PVT�˶�
function dmc_PvtTable(CardNo:WORD;axis:WORD;count:LongWORD;pTime:double;pPos:longint;pVel:double):Smallint;stdcall;
function dmc_PtsTable(CardNo:WORD;axis:WORD;count:LongWORD;pTime:double;pPos:longint;pPercent:double):Smallint;stdcall;
function dmc_PvtsTable(CardNo:WORD;axis:WORD;count:LongWORD;pTime:double;pPos:longint; velBegin:double;velEnd:double):Smallint;stdcall;
function dmc_PttTable(CardNo:WORD;axis:WORD;count:LongWORD;pTime:double;pPos:longint):Smallint;stdcall;
function dmc_PvtMove(CardNo:WORD;AxisNum:WORD;AxisList:WORD):Smallint;stdcall;
//JOG�˶�
function dmc_vmove(CardNo:WORD;axis:WORD;dir:WORD):Smallint;stdcall; //ָ�����������˶�
//ֱ�߲岹
function dmc_line_multicoor(CardNo:WORD;crd:WORD;axisNum:WORD;axisList:WORD;DistList:longint;posi_mode:WORD):Smallint;stdcall; 	//ָ����ֱ�߲岹�˶�
//ƽ��Բ��
function dmc_arc_move_multicoor(CardNo:WORD;crd:WORD;AxisList:WORD;Target_Pos:longint;Cen_Pos:longint;Arc_Dir:WORD;posi_mode:WORD):Smallint;stdcall;
//�����˶�
function dmc_set_home_pin_logic(CardNo:WORD;axis:WORD;org_logic:WORD;filter:double):Smallint;stdcall;  //����HOME�ź�
function dmc_get_home_pin_logic(CardNo:WORD;axis:WORD;out org_logic:WORD;out filter:double):Smallint;stdcall; //��ȡ����HOME�ź�
function dmc_set_homemode(CardNo:WORD;axis:WORD;home_dir:WORD;vel_mode:double;mode:WORD;EZ_count:WORD):Smallint;stdcall; //�趨ָ����Ļ�ԭ��ģʽ
function dmc_get_homemode(CardNo:WORD;axis:WORD;out home_dir:WORD;out vel_mode:double;out home_mode:WORD;out EZ_count:WORD):Smallint;stdcall; //��ȡָ����Ļ�ԭ��ģʽ
function dmc_home_move(CardNo:WORD;axis:WORD):Smallint;stdcall;
//3800ר�� ԭ������
function dmc_set_homelatch_mode(CardNo:WORD;axis:WORD;enable:WORD;logic:WORD;source:WORD):Smallint;stdcall;
function dmc_get_homelatch_mode(CardNo:WORD;axis:WORD;out enable:WORD;out logic:WORD;out source:WORD):Smallint;stdcall;
function dmc_get_homelatch_flag(CardNo:WORD;axis:WORD):Smallint;stdcall;
function dmc_reset_homelatch_flag(CardNo:WORD;axis:WORD):Smallint;stdcall;
function dmc_get_homelatch_value(CardNo:WORD;axis:WORD):Smallint;stdcall;
//�����˶�
//3800ר�� ����ͨ��ѡ��
function dmc_set_handwheel_channel(CardNo:WORD;index:WORD):Smallint;stdcall;
function dmc_get_handwheel_channel(CardNo:WORD;out index:WORD):Smallint;stdcall;
//һ�������źſ��Ƶ������˶�		
function dmc_set_handwheel_inmode(CardNo:WORD;axis:WORD;inmode:WORD;multi:double;vh:double):Smallint;stdcall; 	//�����������������źŵĹ�����ʽ
function dmc_get_handwheel_inmode(CardNo:WORD;axis:WORD;out inmode:WORD;out multi:double;out vh:double):Smallint;stdcall; 	//��ȡ�������������źŵĹ�����ʽ
//3800ר�� һ�������źſ��ƶ�����˶�
function dmc_set_handwheel_inmode_extern(CardNo:WORD;inmode:WORD;AxisNum:WORD;AxisList:WORD;multi:longint):Smallint;stdcall;	//�����������������źŵĹ�����ʽ ���ƶ���
function dmc_get_handwheel_inmode_extern(CardNo:WORD;out inmode:WORD;out AxisNum:WORD;out AxisList:WORD;out multi:longint):Smallint;stdcall;	
//����ָ��������������˶�
function dmc_handwheel_move(CardNo:WORD;axis:WORD):Smallint;stdcall; 	
//������
function dmc_set_counter_inmode(CardNo:WORD;axis:WORD;mode:WORD):Smallint;stdcall;  //�趨�������ļ�����ʽ
function dmc_get_counter_inmode(CardNo:WORD;axis:WORD;out mode:WORD):Smallint;stdcall; //��ȡ�������ļ�����ʽ
function dmc_get_encoder(CardNo:WORD;axis:WORD):longint;stdcall;
function dmc_set_encoder(CardNo:WORD;axis:WORD;encoder_value:longint):Smallint;stdcall;
function dmc_set_ez_mode(CardNo:WORD;axis:WORD;ez_logic:WORD;ez_mode:WORD;filter:double):Smallint;stdcall; //����EZ�ź�
function dmc_get_ez_mode(CardNo:WORD;axis:WORD;out ez_logic:WORD;out ez_mode:WORD;out filter:double):Smallint;stdcall; //��ȡ����EZ�ź�
//��������
function dmc_set_ltc_mode(CardNo:WORD;axis:WORD;Ltc_logic:WORD;Ltc_Mode:WORD;filter:double):Smallint;stdcall;
function dmc_get_ltc_mode(CardNo:WORD;axis:WORD;out Ltc_logic:WORD;out Ltc_Mode:WORD;out filter:double):Smallint;stdcall;
function dmc_set_latch_mode(CardNo:WORD;axis:WORD;all_enable:WORD;latch_source:WORD;triger_chunnel:WORD):Smallint;stdcall;  	//�������淽ʽ
function dmc_get_latch_mode(CardNo:WORD;axis:WORD;out all_enable:WORD;out latch_source:WORD;out triger_chunnel:WORD):Smallint;stdcall;
function dmc_get_latch_value(CardNo:WORD;axis:WORD):longint;stdcall;  	//��ȡ��������ֵ
function dmc_get_latch_flag(CardNo:WORD;axis:WORD):Smallint;stdcall;  	//��ȡ��������־
function dmc_reset_latch_flag(CardNo:WORD;axis:WORD):Smallint;stdcall;  	//��λ��������־
function dmc_get_latch_value_extern(CardNo:WORD;axis:WORD;index:WORD):longint;stdcall;  //��������ȡ��������ֵ
function dmc_get_latch_flag_extern(CardNo:WORD;axis:WORD):Smallint;stdcall;  	//��ȡ��Ч�������
//DMC3410ר�� LTC�˿ڴ�����ʱ��ͣʱ�� ��λus
function dmc_set_latch_stop_time(CardNo:WORD;axis:WORD;time:longint):Smallint;stdcall; 
function dmc_get_latch_stop_time(CardNo:WORD;axis:WORD;out time:longint):Smallint;stdcall; 
//DMC3800ר�� LTC�������
function dmc_SetLtcOutMode(CardNo:WORD;axis:WORD;enable:WORD;bitno:WORD):Smallint;stdcall; 
function dmc_GetLtcOutMode(CardNo:WORD;axis:WORD;out enable:WORD;out bitno:WORD):Smallint;stdcall; 
//�������λ�ñȽ�		
function dmc_compare_set_config(CardNo:WORD;axis:WORD;enable:WORD;cmp_source:WORD):Smallint;stdcall;  	//���ñȽ���
function dmc_compare_get_config(CardNo:WORD;axis:WORD;out enable:WORD;out cmp_source:WORD):Smallint;stdcall; 	//��ȡ���ñȽ���
function dmc_compare_clear_points(CardNo:WORD;axis:WORD):Smallint;stdcall;  	//������бȽϵ�
function dmc_compare_add_point(CardNo:WORD;axis:WORD;pos:longint;dir:WORD;action:WORD;actpara:LongWORD):Smallint;stdcall;  	//��ӱȽϵ�
function dmc_compare_get_current_point(CardNo:WORD;axis:WORD;out pos:longint):Smallint;stdcall;  	//��ȡ��ǰ�Ƚϵ�
function dmc_compare_get_points_runned(CardNo:WORD;axis:WORD;out pointNum:longint):Smallint;stdcall;  	//��ѯ�Ѿ��ȽϹ��ĵ�
function dmc_compare_get_points_remained(CardNo:WORD;axis:WORD;out pointNum:longint):Smallint;stdcall;  	//��ѯ���Լ���ıȽϵ�����
//��ά����λ�ñȽ�
function dmc_compare_set_config_extern(CardNo:WORD;enable:WORD;cmp_source:WORD):Smallint;stdcall;  	//���ñȽ���
function dmc_compare_get_config_extern(CardNo:WORD;out enable:WORD;out cmp_source:WORD):Smallint;stdcall; 	//��ȡ���ñȽ���
function dmc_compare_clear_points_extern(CardNo:WORD):Smallint;stdcall;
function dmc_compare_add_point_extern(CardNo:WORD;axis:WORD;pos:longint;dir:WORD;action:WORD;actpara:LongWORD):Smallint;stdcall;  	//�������λ�ñȽϵ�
function dmc_compare_get_current_point_extern(CardNo:WORD;out pos:longint):Smallint;stdcall;  	//��ȡ��ǰ�Ƚϵ�
function dmc_compare_get_points_runned_extern(CardNo:WORD;out pointNum:longint):Smallint;stdcall;  	//��ѯ�Ѿ��ȽϹ��ĵ�
function dmc_compare_get_points_remained_extern(CardNo:WORD;out pointNum:longint):Smallint;stdcall;  	//��ѯ���Լ���Ķ�ά�Ƚϵ�����
//3410ר�� �������λ�ñȽ�
//function dmc_set_cmp_config(CardNo:WORD;axis:WORD;cmp_pos:longint;cmp_source:WORD;cmp_logic:WORD):Smallint;stdcall; 
//function dmc_get_cmp_config(CardNo:WORD;axis:WORD;out cmp_pos:longint;out cmp_source:WORD;out cmp_logic:WORD):Smallint;stdcall;
//function dmc_set_cmp_enable(CardNo:WORD;axis:WORD;cmp_enable:WORD):Smallint;stdcall; 
//function dmc_get_cmp_enable(CardNo:WORD;axis:WORD;out cmp_enable:WORD):Smallint;stdcall;
function dmc_hcmp_set_mode(CardNo:WORD;hcmp:WORD;cmp_mode:WORD):Smallint;stdcall; 
function dmc_hcmp_get_mode(CardNo:WORD;hcmp:WORD;cmp_mode:WORD):Smallint;stdcall; 
function dmc_hcmp_set_config(CardNo:WORD;hcmp:WORD;axis:WORD;cmp_source:WORD;cmp_logic:WORD;time:longint):Smallint;stdcall; 
function dmc_hcmp_get_config(CardNo:WORD;hcmp:WORD;out axis:WORD;out cmp_source:WORD;out cmp_logic:WORD;out time:longint):Smallint;stdcall;
function dmc_hcmp_add_point(CardNo:WORD;hcmp:WORD; cmp_pos:longint):Smallint;stdcall;
function dmc_hcmp_set_liner(CardNo:WORD;hcmp:WORD;Increment:longint;Count:longint):Smallint;stdcall;
function dmc_hcmp_get_liner(CardNo:WORD;hcmp:WORD;out Increment:longint;out Count:longint):Smallint;stdcall;
function dmc_hcmp_get_current_state(CardNo:WORD;hcmp:WORD;out remained_points:longint;out current_point:longint;out runned_points:longint):Smallint;stdcall;
function dmc_hcmp_clear_points(CardNo:WORD;hcmp:WORD):Smallint;stdcall; 	
function dmc_read_cmp_pin(CardNo:WORD;hcmp:WORD):Smallint;stdcall;
function dmc_write_cmp_pin(CardNo:WORD;hcmp:WORD;on_off:WORD):Smallint;stdcall; 

//ͨ��IO
function dmc_read_inbit(CardNo:WORD;bitno:WORD):Smallint;stdcall; //��ȡ����ڵ�״̬
function dmc_write_outbit(CardNo:WORD;bitno:WORD;ON_OFF:WORD):Smallint;stdcall;  //��������ڵ�״̬
function dmc_read_outbit(CardNo:WORD;bitno:WORD):Smallint;stdcall;    //��ȡ����ڵ�״̬
function dmc_read_inport(CardNo:WORD;portno:WORD):LongWORD;stdcall; //��ȡ����˿ڵ�ֵ
function dmc_read_outport(CardNo:WORD;portno:WORD):LongWORD;stdcall;   //��ȡ����˿ڵ�ֵ
function dmc_write_outport(CardNo:WORD;IoMask:LongWORD;outport_val:LongWORD):Smallint;stdcall; //��������˿ڵ�ֵ
//3800ר�� IO��������
function dmc_IO_TurnOutDelay(CardNo:WORD;bitno:WORD;DelayTime:LongWORD):Smallint;stdcall;
function dmc_SetIoCountMode(CardNo:WORD;bitno:WORD;mode:WORD;filter:LongWORD):Smallint;stdcall;
function dmc_GetIoCountMode(CardNo:WORD;bitno:WORD;out mode:WORD;out filter:LongWORD):Smallint;stdcall;
function dmc_SetIoCountValue(CardNo:WORD;bitno:WORD;CountValue:LongWORD):Smallint;stdcall;
function dmc_GetIoCountValue(CardNo:WORD;bitno:WORD;out CountValue:LongWORD):Smallint;stdcall;
//���Ϻ����Ժ���Ϊ��λ�ɼ���ʹ�ã��º�����ʱ��ͳһ����Ϊ��λ
function dmc_set_io_count_mode(CardNo:WORD;bitno:WORD;mode:WORD;filter_time:double):Smallint;stdcall;//����IO����ģʽ
function dmc_get_io_count_mode(CardNo:WORD;bitno:WORD;mode:WORD;out filter_time:double):Smallint;stdcall;
function dmc_set_io_count_value(CardNo:WORD;bitno:WORD;CountValue:LongWORD):Smallint;stdcall;//����IO����ֵ
function dmc_get_io_count_value(CardNo:WORD;bitno:WORD;out CountValue:LongWORD):Smallint;stdcall;//��ȡIO����ֵ

//IO�����ʱ
function dmc_reverse_outbit(CardNo:WORD;bitno:WORD;reverse_time:double):Smallint;stdcall;

//�ŷ�ר��IO
function dmc_set_inp_mode(CardNo:WORD;axis:WORD;enable:WORD;inp_logic:WORD):Smallint;stdcall; //����INP�ź�
function dmc_get_inp_mode(CardNo:WORD;axis:WORD;out enable:WORD;out inp_logic:WORD):Smallint;stdcall; //��ȡ����INP�ź�
function dmc_set_alm_mode(CardNo:WORD;axis:WORD;enable:WORD;alm_logic:WORD;alm_action:WORD):Smallint;stdcall; //����ALM�ź�
function dmc_get_alm_mode(CardNo:WORD;axis:WORD;out enable:WORD;out alm_logic:WORD;out alm_action:WORD):Smallint;stdcall; //��ȡ����ALM�ź�
function dmc_write_sevon_pin(CardNo:WORD;axis:WORD;ON_OFF:WORD):Smallint;stdcall;   //���SEVON�ź�
function dmc_read_sevon_pin(CardNo:WORD;axis:WORD):WORD;stdcall;   //��ȡSEVON�ź�
function dmc_read_rdy_pin(CardNo:WORD;axis:WORD):Smallint;stdcall;   //��ȡRDY״̬
function dmc_write_erc_pin(CardNo:WORD;axis:WORD;sel:WORD):Smallint;stdcall; //����ERC�ź����
function dmc_read_erc_pin(CardNo:WORD;axis:WORD):Smallint;stdcall;

//�˶�״̬
function dmc_read_current_speed(CardNo:WORD;axis:WORD):Double;stdcall; //��ȡָ����ĵ�ǰ�ٶ�
function dmc_read_vector_speed(CardNo:WORD):Double;stdcall; //��ȡ��ǰ���Ĳ岹�ٶ�
function dmc_get_position(CardNo:WORD;axis:WORD):longint;stdcall;  //��ȡָ����ĵ�ǰλ��
function dmc_set_position(CardNo:WORD;axis:WORD;current_position:longint):Smallint;stdcall; //�趨ָ����ĵ�ǰλ��
function dmc_get_target_position(CardNo:WORD;axis:WORD):longint;stdcall;  //��ȡָ����ĵ�ǰλ��
function dmc_check_done(CardNo:WORD;axis:WORD):Smallint;stdcall;
function dmc_check_done_multicoor(CardNo:WORD;crd:WORD):Smallint;stdcall;
function dmc_axis_io_status(CardNo:WORD;axis:WORD):Smallint;stdcall; //��ȡָ�����й��˶��źŵ�״̬
function dmc_stop(CardNo:WORD;axis:WORD;stop_mode:WORD):Smallint;stdcall; //����ֹͣ
function dmc_stop_multicoor(CardNo:WORD;crd:WORD;stop_mode:WORD):Smallint;stdcall;
function dmc_emg_stop(CardNo:WORD):Smallint;stdcall; //����ֹͣ������
//����ᵽλ״̬
function dmc_set_factor_error(CardNo:WORD;axis:WORD;factor:double;error:longint):Smallint;stdcall;
function dmc_get_factor_error(CardNo:WORD;axis:WORD;out factor:double;out error:longint):Smallint;stdcall;
function dmc_check_success_pulse(CardNo:WORD;axis:WORD):Smallint;stdcall;
function dmc_check_success_encoder(CardNo:WORD;axis:WORD):Smallint;stdcall;
//3800ר�� ��������ߺ�ͨѶ״̬
function dmc_LinkState(CardNo:WORD;out State:WORD):Smallint;stdcall; 	//����״̬

//�������
function dmc_check_sn(CardNo:WORD; check_sn:String):Smallint;stdcall;//��֤���룬У��3��ʧ��֮���ٴ�У�齫����У��ʧ��
function dmc_write_sn(CardNo:WORD; new_sn:String):Smallint;stdcall;//��д����

//DMC5410 DMC5800ר��
function dmc_get_axis_run_mode(CardNo:WORD; axis:WORD; out run_mode:WORD):Smallint;stdcall;//���˶�ģʽ
function dmc_get_equiv(CardNo:WORD; axis:WORD; out equiv:double):Smallint;stdcall;//���嵱��
function dmc_set_equiv(CardNo:WORD; axis:WORD; equiv:double):Smallint;stdcall;
function dmc_set_backlash_unit(CardNo:WORD; axis:WORD; backlash:double):Smallint;stdcall;//�����϶
function dmc_get_backlash_unit(CardNo:WORD; axis:WORD; out backlash:double):Smallint;stdcall;
function dmc_set_position_unit(CardNo:WORD; axis:WORD; pos:double):Smallint;stdcall;//��ǰָ��λ��
function dmc_get_position_unit(CardNo:WORD; axis:WORD; out pos:double):Smallint;stdcall;
function dmc_set_encoder_unit(CardNo:WORD; axis:WORD; pos:double):Smallint;stdcall;//��ǰ����λ��
function dmc_get_encoder_unit(CardNo:WORD; axis:WORD; out pos:double):Smallint;stdcall;
function dmc_pmove_unit(CardNo:WORD; axis:WORD; Dist:double; posi_mode:WORD):Smallint;stdcall;//����
function dmc_t_pmove_unit(CardNo:WORD; axis:WORD; Dist:double; posi_mode:WORD):Smallint;stdcall;//�Գ�T�Ͷ���
function dmc_ex_t_pmove_unit(CardNo:WORD; axis:WORD; Dist:double; posi_mode:WORD):Smallint;stdcall;//�ǶԳ�T�Ͷ���
function dmc_s_pmove_unit(CardNo:WORD; axis:WORD; Dist:double; posi_mode:WORD):Smallint;stdcall;//�Գ�S�Ͷ���
function dmc_ex_s_pmove_unit(CardNo:WORD; axis:WORD; Dist:double; posi_mode:WORD):Smallint;stdcall;//�ǶԳ�S�Ͷ���
function dmc_line_unit(CardNo:WORD; Crd:WORD; AxisNum:WORD; out AxisList:WORD; out Target_Pos:double; posi_mode:WORD):Smallint;stdcall;//����ֱ��
function dmc_arc_move_center_unit(CardNo:WORD; Crd:WORD; AxisNum:WORD;out AxisList:WORD; out Target_Pos:double; out Cen_Pos:double; Arc_Dir:WORD; Circle:longint; posi_mode:WORD):Smallint;stdcall;//����Բ��Բ��/������/������
function dmc_arc_move_radius_unit(CardNo:WORD; Crd:WORD; AxisNum:WORD;out AxisList:WORD; out Target_Pos:double; Arc_Radius:double; Arc_Dir:WORD; Circle:longint; posi_mode:WORD):Smallint;stdcall;//���ΰ뾶Բ��/������
function dmc_arc_move_3points_unit(CardNo:WORD; Crd:WORD; AxisNum:WORD;out AxisList:WORD; out Target_Pos:double; out Mid_Pos:double; Circle:longint; posi_mode:WORD):Smallint;stdcall//��������Բ��/������
function dmc_read_current_speed_unit(CardNo:WORD; axis:WORD; out current_speed:double):Smallint;stdcall;//�ᵱǰ�����ٶ�
function dmc_set_vector_profile_unit(CardNo:WORD; Crd:WORD; Min_Vel:double; Max_Vel:double; Tacc:double; Tdec:double; Stop_Vel:double):Smallint;stdcall;//���β岹�ٶȲ���
function dmc_get_vector_profile_unit(CardNo:WORD; Crd:WORD; out Min_Vel:double; out Max_Vel:double; out Tacc:double; out Tdec:double; out Stop_Vel:double):Smallint;stdcall;
function dmc_set_vector_s_profile(CardNo:WORD; Crd:WORD; s_mode:WORD; s_para:double):Smallint;stdcall;//����S���ٶ����߲���
function dmc_get_vector_s_profile(CardNo:WORD; Crd:WORD; s_mode:WORD; out s_para:double):Smallint;stdcall;
function dmc_set_profile_unit(CardNo:WORD; axis:WORD; Min_Vel:double; Max_Vel:double; Tacc:double; Tdec:double; Stop_Vel:double):Smallint;stdcall;//�����ٶȲ���
function dmc_get_profile_unit(CardNo:WORD; axis:WORD; out Min_Vel:double; out Max_Vel:double; out Tacc:double; out Tdec:double; out Stop_Vel:double):Smallint;stdcall;
function dmc_reset_target_position_unit(CardNo:WORD; axis:WORD; New_Pos:double):Smallint;stdcall;//���߱�λ
function dmc_update_target_position_unit(CardNo:WORD; axis:WORD; New_Pos:double):Smallint;stdcall;//ǿ�б�λ
function dmc_change_speed_unit(CardNo:WORD; axis:WORD; New_Vel:double; Taccdec:double):Smallint;stdcall;//���߱���

//�����岹
function dmc_conti_open_list(CardNo:WORD; Crd:WORD; AxisNum:WORD; out AxisList:WORD):Smallint;stdcall; //������������
function dmc_conti_close_list(CardNo:WORD; Crd:WORD):Smallint;stdcall;	//�ر�����������
function dmc_conti_stop_list(CardNo:WORD; Crd:WORD; stop_mode:WORD):Smallint;stdcall;	//�����岹��ֹͣ
function dmc_conti_pause_list(CardNo:WORD; Crd:WORD):Smallint;stdcall;	//�����岹����ͣ
function dmc_conti_start_list(CardNo:WORD; Crd:WORD):Smallint;stdcall;	//��ʼ�����岹
function dmc_conti_remain_space(CardNo:WORD; Crd:WORD):Smallint;stdcall;	//�������岹ʣ�໺����
function dmc_conti_read_current_mark(CardNo:WORD; Crd:WORD):Smallint;stdcall;	//��ȡ��ǰ�����岹�εı��
function dmc_conti_set_blend(CardNo:WORD; Crd:WORD; enable:WORD):Smallint;stdcall;//blend�սǹ���ģʽ
function dmc_conti_get_blend(CardNo:WORD; Crd:WORD; out enable:WORD):Smallint;stdcall;
function dmc_conti_set_profile_unit(CardNo:WORD; Crd:WORD; Min_Vel:double; Max_vel:double; Tacc:double; Tdec:double; Stop_Vel:double):Smallint;stdcall;//���������岹�ٶ�
function dmc_conti_set_s_profile(CardNo:WORD; Crd:WORD; s_mode:WORD; s_para:double):Smallint;stdcall;//���������岹ƽ��ʱ��
function dmc_conti_get_s_profile(CardNo:WORD; Crd:WORD; s_mode:WORD; out s_para:double):Smallint;stdcall;
function dmc_conti_set_pause_output(CardNo:WORD; Crd:WORD; action:WORD; mask:longint; state:longint):Smallint;stdcall;//��ͣʱIO��� action��0-��������1-��ͣʱ�����2-��ͣʱ���, ��������ʱ�ָ���3-ֹͣʱ�����
function dmc_conti_get_pause_output(CardNo:WORD; Crd:WORD; out action:WORD; out mask:longint; out state:longint):Smallint;stdcall;
function dmc_conti_set_override(CardNo:WORD; Crd:WORD; Percent:double):Smallint;stdcall;//����ÿ���ٶȱ���  ������ָ��
function dmc_conti_change_speed_ratio (CardNo:WORD; Crd:WORD; Percent:double):Smallint;stdcall;//�����岹��̬����
function dmc_conti_get_run_state(CardNo:WORD; Crd:WORD):Smallint;stdcall;//��ȡ�����岹״̬��0-���У�1-��ͣ��2-����ֹͣ��3-�쳣ֹͣ
function dmc_conti_check_done(CardNo:WORD; Crd:WORD):Smallint;stdcall;//��������岹�˶�״̬��0-���У�1-ֹͣ
function dmc_conti_wait_input(CardNo:WORD; Crd:WORD; bitno:WORD; on_off:WORD; TimeOut:double; mark:longint):Smallint;stdcall;//���������岹�ȴ�����
function dmc_conti_delay_outbit_to_start(CardNo:WORD; Crd:WORD; bitno:WORD; on_off:WORD; delay_value:double; delay_mode:WORD; ReverseTime:double):Smallint;stdcall;//����ڹ켣�����IO�ͺ����
function dmc_conti_delay_outbit_to_stop(CardNo:WORD; Crd:WORD; bitno:WORD; on_off:WORD; delay_time:double; ReverseTime:double):Smallint;stdcall;//����ڹ켣���յ�IO�ͺ����
function dmc_conti_ahead_outbit_to_stop(CardNo:WORD; Crd:WORD; bitno:WORD; on_off:WORD; ahead_value:double; ahead_mode:WORD; ReverseTime:double):Smallint;stdcall;//��Թ켣���յ�IO��ǰ���
function dmc_conti_accurate_outbit_unit(CardNo:WORD; Crd:WORD; cmp_no:WORD; on_off:WORD; map_axis:WORD; rel_dist:double; pos_source:WORD; ReverseTime:double):Smallint;stdcall;//ȷ��λ�þ�ȷ���
function dmc_conti_write_outbit(CardNo:WORD; Crd:WORD; bitno:WORD; on_off:WORD; ReverseTime:double):Smallint;stdcall;//����������IO���
function dmc_conti_clear_io_action(CardNo:WORD; Crd:WORD; IoMask:longWORD):Smallint;stdcall;//�������δִ�����IO����,��ֹ����һ��ִ��
function dmc_conti_delay(CardNo:WORD; Crd:WORD; delay_time:double; mark:longWORD):Smallint;stdcall;//�����ʱָ��
function dmc_conti_line_unit(CardNo:WORD; Crd:WORD; AxisNum:WORD; out AxisList:WORD; out Target_Pos:double; posi_mode:WORD; mark:longint):Smallint;stdcall;//�����岹ֱ��
function dmc_conti_arc_move_center_unit(CardNo:WORD; Crd:WORD; AxisNum:WORD; out AxisList:WORD; out Target_Pos:double; out Cen_Pos:double; Arc_Dir:WORD; Circle:longint; posi_mode:WORD; mark:longint):Smallint;stdcall;//Բ���յ�ʽԲ��/������/������/ͬ��Բ
function dmc_conti_arc_move_radius_unit(CardNo:WORD; Crd:WORD; AxisNum:WORD; out AxisList:WORD; out Target_Pos:double; Arc_Radius:double; Arc_Dir:WORD; Circle:longint; posi_mode:WORD; mark:longint):Smallint;stdcall;//�뾶�յ�ʽԲ��/������
function dmc_conti_arc_move_3points_unit(CardNo:WORD; Crd:WORD; AxisNum:WORD; out AxisList:WORD; out Target_Pos:double; out Mid_Pos:double; Circle:longint; posi_mode:WORD; mark:longint):Smallint;stdcall;//����ʽԲ��/������
function dmc_conti_set_involute_mode(CardNo:WORD; Crd:WORD; mode:WORD):Smallint;stdcall;//��������Բ���
function dmc_conti_get_involute_mode(CardNo:WORD; Crd:WORD; out mode:WORD):Smallint;stdcall;
function dmc_conti_rectangle_move(CardNo:WORD; Crd:WORD; AxisNum:WORD; out AxisList:WORD; out Target_Pos:double; out Mark_Pos:double; Count:longint; rect_mode:WORD; posi_mode:WORD; mark:longint):Smallint;stdcall;//���β岹
function dmc_calculate_arclength_center(out start_pos:double; out target_pos:double; out cen_pos:double; arc_dir:WORD; circle:double; out ArcLength:double):Smallint;stdcall;//����Բ��Բ������
function dmc_calculate_arclength_radius(out start_pos:double; out target_pos:double; arc_radius:double; arc_dir:WORD; circle:double; out ArcLength:double):Smallint;stdcall;//����뾶Բ������
function dmc_calculate_arclength_3point(out start_pos:double; out mid_pos:double; out end_pos:double; circle:double; out ArcLength:double):Smallint;stdcall;//��������Բ������
//DMC5800ר�� PWM��CanIO
function dmc_set_pwm_enable(CardNo:WORD; enable:WORD):Smallint;stdcall;//7�����л�ΪPWM���
function dmc_get_pwm_enable(CardNo:WORD; out enable:WORD):Smallint;stdcall;
function dmc_conti_set_pwm_output(CardNo:WORD; Crd:WORD; pwm_no:WORD; fDuty:double; fFre:double):Smallint;stdcall;//�����岹������PWM���
function dmc_set_pwm_output(CardNo:WORD; pwm_no:WORD; fDuty:double; fFre:double):Smallint;stdcall;//����PWM���
function dmc_get_pwm_output(CardNo:WORD; pwm_no:WORD; out fDuty:double; out fFre:double):Smallint;stdcall;
function dmc_conti_set_pwm_follow_speed(CardNo:WORD; Crd:WORD; pwm_no:WORD; mode:WORD; MaxVel:double; MaxValue:double; OutValue:double):Smallint;stdcall;//PWM�ٶȸ���
function dmc_conti_get_pwm_follow_speed(CardNo:WORD; Crd:WORD; pwm_no:WORD; out mode:WORD; out MaxVel:double; out MaxValue:double; out OutValue:double):Smallint;stdcall;

function dmc_set_can_state(CardNo:WORD; NodeNum:WORD; state:WORD):Smallint;stdcall;//0-�Ͽ���1-���ӣ�2-��λ���Զ�����
function dmc_get_can_state(CardNo:WORD; out NodeNum:WORD; out state:WORD):Smallint;stdcall;////0-�Ͽ���1-���ӣ�2-�쳣
function dmc_get_can_errcode(CardNo:WORD; out Errcode:WORD):Smallint;stdcall;//��ȡCanIoͨѶ������
function dmc_write_can_outbit(CardNo:WORD; Node:WORD; bitno:WORD; on_off:WORD):Smallint;stdcall;
function dmc_read_can_outbit(CardNo:WORD; Node:WORD; bitno:WORD):Smallint;stdcall;
function dmc_read_can_inbit(CardNo:WORD; Node:WORD; bitno:WORD):Smallint;stdcall;
function dmc_write_can_outport(CardNo:WORD; Node:WORD; portno:WORD; outport_val:longWORD):Smallint;stdcall;//дCanIo�����
function dmc_read_can_outport(CardNo:WORD; Node:WORD; portno:WORD):Smallint;stdcall;//��ȡCanIo����˿�
function dmc_read_can_inport(CardNo:WORD; Node:WORD; portno:WORD):Smallint;stdcall;//��ȡCanIo����˿�

function dmc_get_stop_reason(CardNo:WORD; axis:WORD; out StopReason:longint):Smallint;stdcall;//��ȡֹͣԭ��
function dmc_clear_stop_reason(CardNo:WORD; axis:WORD):Smallint;stdcall;//���ֹͣԭ��

function dmc_set_dec_stop_dist(CardNo:WORD; axis:WORD; dist:longint):Smallint;stdcall;	//���ü���ֹͣ����
function dmc_get_dec_stop_dist(CardNo:WORD; axis:WORD; out dist:longint):Smallint;stdcall;

implementation
//�忨����
function dmc_board_init;external'LTDMC.dll';
function dmc_board_reset;external'LTDMC.dll';
function dmc_board_close;external'LTDMC.dll';
function dmc_get_CardInfList;external'LTDMC.dll';
function dmc_get_card_version;external'LTDMC.dll';
function dmc_get_card_soft_version;external'LTDMC.dll';
function dmc_get_card_lib_version;external'LTDMC.dll';
function dmc_get_total_axes;external'LTDMC.dll';
function dmc_set_AxisIoMap;external'LTDMC.dll';
function dmc_get_AxisIoMap;external'LTDMC.dll';
function dmc_download_configfile;external'LTDMC.dll';
function dmc_download_firmware;external'LTDMC.dll';
//��λ/�쳣����
function dmc_set_el_mode;external'LTDMC.dll';
function dmc_get_el_mode;external'LTDMC.dll';
function dmc_set_emg_mode;external'LTDMC.dll';
function dmc_get_emg_mode;external'LTDMC.dll';
function dmc_set_softlimit;external'LTDMC.dll';
function dmc_get_softlimit;external'LTDMC.dll';
function dmc_set_dstp_mode;external'LTDMC.dll';
function dmc_get_dstp_mode;external'LTDMC.dll';
function dmc_set_dstp_time;external'LTDMC.dll';
function dmc_get_dstp_time;external'LTDMC.dll';
function dmc_set_io_dstp_mode;external'LTDMC.dll';
function dmc_get_io_dstp_mode;external'LTDMC.dll';
function dmc_set_dec_stop_time;external'LTDMC.dll';
function dmc_get_dec_stop_time;external'LTDMC.dll';
//�ٶ�����
function dmc_set_profile;external'LTDMC.dll';
function dmc_get_profile;external'LTDMC.dll';
function dmc_set_s_profile;external'LTDMC.dll';
function dmc_get_s_profile;external'LTDMC.dll';
function dmc_set_vector_profile_multicoor;external'LTDMC.dll';
function dmc_get_vector_profile_multicoor;external'LTDMC.dll';
//�˶�ģ������ģʽ
function dmc_set_pulse_outmode;external'LTDMC.dll';
function dmc_get_pulse_outmode;external'LTDMC.dll';
//��λ�˶�
function dmc_pmove;external'LTDMC.dll';
function dmc_reset_target_position;external'LTDMC.dll';
function dmc_change_speed;external'LTDMC.dll';
function dmc_update_target_position;external'LTDMC.dll';
//PVT
function dmc_PvtTable;external'LTDMC.dll';
function dmc_PtsTable;external'LTDMC.dll';
function dmc_PvtsTable;external'LTDMC.dll';
function dmc_PttTable;external'LTDMC.dll';
function dmc_PvtMove;external'LTDMC.dll';
//JOG�˶�
function dmc_vmove;external'LTDMC.dll';
//ֱ�߲岹
function dmc_line_multicoor;external'LTDMC.dll';
function dmc_arc_move_multicoor;external'LTDMC.dll';
//�����˶�
function dmc_set_home_pin_logic ;external'LTDMC.dll';
function dmc_get_home_pin_logic ;external'LTDMC.dll';
function dmc_set_homemode;external'LTDMC.dll';
function dmc_get_homemode;external'LTDMC.dll';
function dmc_home_move;external'LTDMC.dll';
//ԭ������
function dmc_set_homelatch_mode;external'LTDMC.dll';
function dmc_get_homelatch_mode;external'LTDMC.dll';
function dmc_get_homelatch_flag;external'LTDMC.dll';
function dmc_reset_homelatch_flag;external'LTDMC.dll';
function dmc_get_homelatch_value;external'LTDMC.dll';
//�����˶�
function dmc_set_handwheel_channel;external'LTDMC.dll';
function dmc_get_handwheel_channel;external'LTDMC.dll';
function dmc_set_handwheel_inmode;external'LTDMC.dll';
function dmc_get_handwheel_inmode;external'LTDMC.dll';
function dmc_set_handwheel_inmode_extern;external'LTDMC.dll';
function dmc_get_handwheel_inmode_extern;external'LTDMC.dll';
function dmc_handwheel_move;external'LTDMC.dll';
//������
function dmc_set_counter_inmode;external'LTDMC.dll';
function dmc_get_counter_inmode;external'LTDMC.dll';
function dmc_get_encoder;external'LTDMC.dll';
function dmc_set_encoder;external'LTDMC.dll';
function dmc_set_ez_mode;external'LTDMC.dll';
function dmc_get_ez_mode;external'LTDMC.dll';
//����
function dmc_set_latch_mode;external'LTDMC.dll';
function dmc_get_latch_mode;external'LTDMC.dll';
function dmc_get_latch_value;external'LTDMC.dll';
function dmc_get_latch_flag;external'LTDMC.dll';
function dmc_reset_latch_flag;external'LTDMC.dll';
function dmc_set_ltc_mode;external'LTDMC.dll';
function dmc_get_ltc_mode;external'LTDMC.dll';
function dmc_get_latch_value_extern;external'LTDMC.dll';
function dmc_get_latch_flag_extern;external'LTDMC.dll';
function dmc_set_latch_stop_time;external'LTDMC.dll';
function dmc_get_latch_stop_time;external'LTDMC.dll';
function dmc_SetLtcOutMode;external'LTDMC.dll';
function dmc_GetLtcOutMode;external'LTDMC.dll';
//λ�ñȽ�
function dmc_compare_set_config;external'LTDMC.dll';
function dmc_compare_get_config;external'LTDMC.dll';
function dmc_compare_clear_points;external'LTDMC.dll';
function dmc_compare_add_point;external'LTDMC.dll';
function dmc_compare_get_current_point;external'LTDMC.dll';
function dmc_compare_get_points_runned;external'LTDMC.dll';
function dmc_compare_get_points_remained;external'LTDMC.dll';
//��άλ�ñȽ�
function dmc_compare_set_config_extern;external'LTDMC.dll';
function dmc_compare_get_config_extern;external'LTDMC.dll';
function dmc_compare_clear_points_extern;external'LTDMC.dll';
function dmc_compare_add_point_extern;external'LTDMC.dll';
function dmc_compare_get_current_point_extern;external'LTDMC.dll';
function dmc_compare_get_points_runned_extern;external'LTDMC.dll';
function dmc_compare_get_points_remained_extern;external'LTDMC.dll';
//����λ�ñȽ�
//function dmc_set_cmp_config;external'LTDMC.dll';
//function dmc_get_cmp_config;external'LTDMC.dll';
//function dmc_set_cmp_enable;external'LTDMC.dll';
//function dmc_get_cmp_enable;external'LTDMC.dll';
function dmc_hcmp_set_mode;external'LTDMC.dll';
function dmc_hcmp_get_mode;external'LTDMC.dll';
function dmc_hcmp_set_config;external'LTDMC.dll';
function dmc_hcmp_get_config;external'LTDMC.dll';
function dmc_hcmp_add_point;external'LTDMC.dll';
function dmc_hcmp_set_liner;external'LTDMC.dll';
function dmc_hcmp_get_liner;external'LTDMC.dll';
function dmc_hcmp_get_current_state;external'LTDMC.dll';
function dmc_hcmp_clear_points;external'LTDMC.dll';
function dmc_read_cmp_pin;external'LTDMC.dll';
function dmc_write_cmp_pin;external'LTDMC.dll';
//ͨ��IO
function dmc_read_inbit;external'LTDMC.dll';
function dmc_write_outbit;external'LTDMC.dll';
function dmc_read_outbit;external'LTDMC.dll';
function dmc_read_inport ;external'LTDMC.dll';
function dmc_read_outport;external'LTDMC.dll';
function dmc_write_outport;external'LTDMC.dll';
//IO��������
function dmc_IO_TurnOutDelay;external'LTDMC.dll';
function dmc_SetIoCountMode;external'LTDMC.dll';
function dmc_GetIoCountMode;external'LTDMC.dll';
function dmc_SetIoCountValue;external'LTDMC.dll';
function dmc_GetIoCountValue;external'LTDMC.dll';

function dmc_reverse_outbit;external'LTDMC.dll';
function dmc_set_io_count_mode;external'LTDMC.dll';
function dmc_get_io_count_mode;external'LTDMC.dll';
function dmc_set_io_count_value;external'LTDMC.dll';
function dmc_get_io_count_value;external'LTDMC.dll';
//ר��IO
function dmc_set_inp_mode;external'LTDMC.dll';
function dmc_get_inp_mode;external'LTDMC.dll';
function dmc_set_alm_mode;external'LTDMC.dll';
function dmc_get_alm_mode;external'LTDMC.dll';
function dmc_write_sevon_pin;external'LTDMC.dll';
function dmc_read_sevon_pin;external'LTDMC.dll';
function dmc_read_rdy_pin;external'LTDMC.dll';
function dmc_write_erc_pin;external'LTDMC.dll';
function dmc_read_erc_pin;external'LTDMC.dll';

//�˶�״̬
function dmc_read_current_speed;external'LTDMC.dll';
function dmc_read_vector_speed;external'LTDMC.dll';
function dmc_get_position;external'LTDMC.dll';
function dmc_set_position;external'LTDMC.dll';
function dmc_get_target_position;external'LTDMC.dll';
function dmc_check_done;external'LTDMC.dll';
function dmc_check_done_multicoor;external'LTDMC.dll';
function dmc_axis_io_status;external'LTDMC.dll';
function dmc_stop;external'LTDMC.dll';
function dmc_stop_multicoor;external'LTDMC.dll';
function dmc_emg_stop;external'LTDMC.dll';
function dmc_set_factor_error;external'LTDMC.dll';
function dmc_get_factor_error;external'LTDMC.dll';
function dmc_check_success_pulse;external'LTDMC.dll';
function dmc_check_success_encoder;external'LTDMC.dll';
function dmc_LinkState;external'LTDMC.dll';

//�������
function dmc_check_sn;external'LTDMC.dll';
function dmc_write_sn;external'LTDMC.dll';

//DMC5410 DMC5800ר��
function dmc_get_axis_run_mode;external'LTDMC.dll';
function dmc_get_equiv;external'LTDMC.dll';
function dmc_set_equiv;external'LTDMC.dll';
function dmc_set_backlash_unit;external'LTDMC.dll';
function dmc_get_backlash_unit;external'LTDMC.dll';
function dmc_set_position_unit;external'LTDMC.dll';
function dmc_get_position_unit;external'LTDMC.dll';
function dmc_set_encoder_unit;external'LTDMC.dll';
function dmc_get_encoder_unit;external'LTDMC.dll';
function dmc_pmove_unit;external'LTDMC.dll';
function dmc_t_pmove_unit;external'LTDMC.dll';
function dmc_ex_t_pmove_unit;external'LTDMC.dll';
function dmc_s_pmove_unit;external'LTDMC.dll';
function dmc_ex_s_pmove_unit;external'LTDMC.dll';
function dmc_line_unit;external'LTDMC.dll';
function dmc_arc_move_center_unit;external'LTDMC.dll';
function dmc_arc_move_radius_unit;external'LTDMC.dll';
function dmc_arc_move_3points_unit;external'LTDMC.dll';
function dmc_read_current_speed_unit;external'LTDMC.dll';
function dmc_set_vector_profile_unit;external'LTDMC.dll';
function dmc_get_vector_profile_unit;external'LTDMC.dll';
function dmc_set_vector_s_profile;external'LTDMC.dll';
function dmc_get_vector_s_profile;external'LTDMC.dll';
function dmc_set_profile_unit;external'LTDMC.dll';
function dmc_get_profile_unit;external'LTDMC.dll';
function dmc_reset_target_position_unit;external'LTDMC.dll';
function dmc_update_target_position_unit;external'LTDMC.dll';
function dmc_change_speed_unit;external'LTDMC.dll';

//�����岹
function dmc_conti_open_list;external'LTDMC.dll';
function dmc_conti_close_list;external'LTDMC.dll';
function dmc_conti_stop_list;external'LTDMC.dll';
function dmc_conti_pause_list;external'LTDMC.dll';
function dmc_conti_start_list;external'LTDMC.dll';
function dmc_conti_remain_space;external'LTDMC.dll';
function dmc_conti_read_current_mark;external'LTDMC.dll';
function dmc_conti_set_blend;external'LTDMC.dll';
function dmc_conti_get_blend;external'LTDMC.dll';
function dmc_conti_set_profile_unit;external'LTDMC.dll';
function dmc_conti_set_s_profile;external'LTDMC.dll';
function dmc_conti_get_s_profile;external'LTDMC.dll';
function dmc_conti_set_pause_output;external'LTDMC.dll';
function dmc_conti_get_pause_output;external'LTDMC.dll';
function dmc_conti_set_override;external'LTDMC.dll';
function dmc_conti_change_speed_ratio;external'LTDMC.dll';
function dmc_conti_get_run_state;external'LTDMC.dll';
function dmc_conti_check_done;external'LTDMC.dll';
function dmc_conti_wait_input;external'LTDMC.dll';
function dmc_conti_delay_outbit_to_start;external'LTDMC.dll';
function dmc_conti_delay_outbit_to_stop;external'LTDMC.dll';
function dmc_conti_ahead_outbit_to_stop;external'LTDMC.dll';
function dmc_conti_accurate_outbit_unit;external'LTDMC.dll';
function dmc_conti_write_outbit;external'LTDMC.dll';
function dmc_conti_clear_io_action;external'LTDMC.dll';
function dmc_conti_delay;external'LTDMC.dll';
function dmc_conti_line_unit;external'LTDMC.dll';
function dmc_conti_arc_move_center_unit;external'LTDMC.dll';
function dmc_conti_arc_move_radius_unit;external'LTDMC.dll';
function dmc_conti_arc_move_3points_unit;external'LTDMC.dll';
function dmc_conti_set_involute_mode;external'LTDMC.dll';
function dmc_conti_get_involute_mode;external'LTDMC.dll';
function dmc_conti_rectangle_move;external'LTDMC.dll';
function dmc_calculate_arclength_center;external'LTDMC.dll';
function dmc_calculate_arclength_radius;external'LTDMC.dll';
function dmc_calculate_arclength_3point;external'LTDMC.dll';
//DMC5800ר�� PWM��CanIO
function dmc_set_pwm_enable;external'LTDMC.dll';
function dmc_get_pwm_enable;external'LTDMC.dll';
function dmc_conti_set_pwm_output;external'LTDMC.dll';
function dmc_set_pwm_output;external'LTDMC.dll';
function dmc_get_pwm_output;external'LTDMC.dll';
function dmc_conti_set_pwm_follow_speed;external'LTDMC.dll';
function dmc_conti_get_pwm_follow_speed;external'LTDMC.dll';
function dmc_set_can_state;external'LTDMC.dll';
function dmc_get_can_state;external'LTDMC.dll';
function dmc_get_can_errcode;external'LTDMC.dll';
function dmc_write_can_outbit;external'LTDMC.dll';
function dmc_read_can_outbit;external'LTDMC.dll';
function dmc_read_can_inbit;external'LTDMC.dll';
function dmc_write_can_outport;external'LTDMC.dll';
function dmc_read_can_outport;external'LTDMC.dll';
function dmc_read_can_inport;external'LTDMC.dll';

function dmc_get_stop_reason;external'LTDMC.dll';
function dmc_clear_stop_reason;external'LTDMC.dll';
function dmc_set_dec_stop_dist;external'LTDMC.dll';
function dmc_get_dec_stop_dist;external'LTDMC.dll';
end.
