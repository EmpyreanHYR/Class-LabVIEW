unit LTDMC;

interface

//板卡配置
function dmc_board_init():Smallint;stdcall; //初始化控制卡
function dmc_board_reset():Smallint;stdcall; 
function dmc_board_close():Smallint;stdcall; //关闭控制卡
function dmc_get_CardInfList(out CardNum:WORD;out CardTypeList:LongWORD;out CardIdList:WORD):Smallint;stdcall;  //获取所有卡号
function dmc_get_card_version(CardNo:WORD;out CardVersion:LongWORD):Smallint;stdcall; //读取控制卡硬件版本
function dmc_get_card_soft_version(CardNo:WORD;out FirmID:LongWORD;out SubFirmID:LongWORD):Smallint;stdcall; //读取控制卡硬件的固件版本
function dmc_get_card_lib_version(out LibVer:LongWORD):Smallint;stdcall;   //读取控制卡动态库版本
function dmc_get_total_axes(CardNo:WORD;out TotalAxis:longint):Smallint;stdcall; //读取指定卡轴数
//3800专用 轴IO映射配置
function dmc_set_AxisIoMap(CardNo:WORD;axis:WORD;IoType:WORD;MapIoType:WORD;MapIoIndex:WORD;Filter:LongWORD):Smallint;stdcall; 
function dmc_get_AxisIoMap(CardNo:WORD;axis:WORD;out IoType:WORD;out MapIoType:WORD;out MapIoIndex:WORD;out Filter:LongWORD):Smallint;stdcall; 
//下载参数文件
function dmc_download_configfile(CardNo:WORD;FileName:String):Smallint;stdcall;
//下载固件文件
function dmc_download_firmware(CardNo:WORD;FileName:String):Smallint;stdcall; 
//限位/异常设置
function dmc_set_emg_mode(CardNo:WORD;axis:WORD;enable:WORD;emg_logic:WORD):Smallint;stdcall;  //设置EMG信号
function dmc_get_emg_mode(CardNo:WORD;axis:WORD;out enbale:WORD;out emg_logic:WORD):Smallint;stdcall; //读取设置EMG信号
function dmc_set_el_mode(CardNo:WORD;axis:WORD;el_enable:WORD;el_logic:WORD;el_mode:WORD):Smallint;stdcall; //设置EL信号
function dmc_get_el_mode(CardNo:WORD;axis:WORD;out el_enable:WORD;out el_logic:WORD;out el_mode:WORD):Smallint;stdcall; //读取设置EL信号
function dmc_set_softlimit(CardNo:WORD;axis:WORD;enable:WORD;source_sel:WORD;SL_action:WORD;N_limit:longint;P_limit:longint):Smallint;stdcall; //设置软限位参数
function dmc_get_softlimit(CardNo:WORD;axis:WORD;out enable:WORD;out source_sel:WORD;out SL_action:WORD;out N_limit:longint;out P_limit:longint):Smallint;stdcall; //读取软限位参数
//外部减速停止信号及减速停止时间设置
function dmc_set_dstp_mode(CardNo:WORD;axis:WORD;enable:WORD;logic:WORD;time:WORD):Smallint;stdcall;
function dmc_get_dstp_mode(CardNo:WORD;axis:WORD;out enable:WORD;out logic:WORD;out time:WORD):Smallint;stdcall;
function dmc_set_dstp_time(CardNo:WORD;axis:WORD;time:WORD):Smallint;stdcall;
function dmc_get_dstp_time(CardNo:WORD;axis:WORD;out time:WORD):Smallint;stdcall;
//以上函数以毫秒为单位可继续使用，新函数将时间统一到秒为单位
function dmc_set_io_dstp_mode(CardNo:WORD;axis:WORD;enable:WORD;logic:WORD):Smallint;stdcall; //设置外部IO触发减速停止模式
function dmc_get_io_dstp_mode(CardNo:WORD;axis:WORD;out enable:WORD;out logic:WORD):Smallint;stdcall;
function dmc_set_dec_stop_time(CardNo:WORD;axis:WORD;time:double):Smallint;stdcall;//设置全局减速停止时间
function dmc_get_dec_stop_time(CardNo:WORD;axis:WORD;out time:double):Smallint;stdcall;

//速度设置
function dmc_set_profile(CardNo:WORD;axis:WORD;Min_Vel:double;Max_Vel:double;Tacc:double;Tdec:double;stop_vel:double):Smallint;stdcall; //设定速度曲线参数
function dmc_get_profile(CardNo:WORD;axis:WORD;out Min_Vel:double;out Max_Vel:double;out Tacc:double;out Tdec:double;out stop_vel:double):Smallint;stdcall; //读取速度曲线参数
function dmc_set_s_profile(CardNo:WORD;axis:WORD;s_mode:WORD;s_para:double):Smallint;stdcall; //设置平滑速度曲线参数
function dmc_get_s_profile(CardNo:WORD;axis:WORD;s_mode:WORD;out s_para:double):Smallint;stdcall; //读取平滑速度曲线参数
function dmc_set_vector_profile_multicoor(CardNo:WORD;crd:WORD;Min_Vel:double;Max_Vel:double;Tacc:double;Tdec:double;stop_vel:double):Smallint;stdcall; 
function dmc_get_vector_profile_multicoor(CardNo:WORD;crd:WORD;out Min_Vel:double;out Max_Vel:double;out Tacc:double;out Tdec:double;out stop_vel:double):Smallint;stdcall;
//运动模块脉冲模式
function dmc_set_pulse_outmode(CardNo:WORD;axis:WORD;outmode:WORD):Smallint;stdcall; //设定脉冲输出模式
function dmc_get_pulse_outmode(CardNo:WORD;axis:WORD;out outmode:WORD):Smallint;stdcall; //读取脉冲输出模式
//点位运动
function dmc_pmove(CardNo:WORD;axis:WORD;dist:longint;posi_mode:WORD):Smallint;stdcall; //指定轴做定长位移运动
function dmc_reset_target_position(CardNo:WORD;axis:WORD;dist:longint;posi_mode:WORD):Smallint;stdcall; //运动中改变目标位置
function dmc_change_speed(CardNo:WORD;axis:WORD;Curr_Vel:double;Taccdec:double):Smallint;stdcall; //在线改变指定轴的当前运动速度
function dmc_update_target_position(CardNo:WORD;axis:WORD;dist:longint;posi_mode:WORD):Smallint;stdcall; //运动中改变目标位置
//PVT运动
function dmc_PvtTable(CardNo:WORD;axis:WORD;count:LongWORD;pTime:double;pPos:longint;pVel:double):Smallint;stdcall;
function dmc_PtsTable(CardNo:WORD;axis:WORD;count:LongWORD;pTime:double;pPos:longint;pPercent:double):Smallint;stdcall;
function dmc_PvtsTable(CardNo:WORD;axis:WORD;count:LongWORD;pTime:double;pPos:longint; velBegin:double;velEnd:double):Smallint;stdcall;
function dmc_PttTable(CardNo:WORD;axis:WORD;count:LongWORD;pTime:double;pPos:longint):Smallint;stdcall;
function dmc_PvtMove(CardNo:WORD;AxisNum:WORD;AxisList:WORD):Smallint;stdcall;
//JOG运动
function dmc_vmove(CardNo:WORD;axis:WORD;dir:WORD):Smallint;stdcall; //指定轴做连续运动
//直线插补
function dmc_line_multicoor(CardNo:WORD;crd:WORD;axisNum:WORD;axisList:WORD;DistList:longint;posi_mode:WORD):Smallint;stdcall; 	//指定轴直线插补运动
//平面圆弧
function dmc_arc_move_multicoor(CardNo:WORD;crd:WORD;AxisList:WORD;Target_Pos:longint;Cen_Pos:longint;Arc_Dir:WORD;posi_mode:WORD):Smallint;stdcall;
//回零运动
function dmc_set_home_pin_logic(CardNo:WORD;axis:WORD;org_logic:WORD;filter:double):Smallint;stdcall;  //设置HOME信号
function dmc_get_home_pin_logic(CardNo:WORD;axis:WORD;out org_logic:WORD;out filter:double):Smallint;stdcall; //读取设置HOME信号
function dmc_set_homemode(CardNo:WORD;axis:WORD;home_dir:WORD;vel_mode:double;mode:WORD;EZ_count:WORD):Smallint;stdcall; //设定指定轴的回原点模式
function dmc_get_homemode(CardNo:WORD;axis:WORD;out home_dir:WORD;out vel_mode:double;out home_mode:WORD;out EZ_count:WORD):Smallint;stdcall; //读取指定轴的回原点模式
function dmc_home_move(CardNo:WORD;axis:WORD):Smallint;stdcall;
//3800专用 原点锁存
function dmc_set_homelatch_mode(CardNo:WORD;axis:WORD;enable:WORD;logic:WORD;source:WORD):Smallint;stdcall;
function dmc_get_homelatch_mode(CardNo:WORD;axis:WORD;out enable:WORD;out logic:WORD;out source:WORD):Smallint;stdcall;
function dmc_get_homelatch_flag(CardNo:WORD;axis:WORD):Smallint;stdcall;
function dmc_reset_homelatch_flag(CardNo:WORD;axis:WORD):Smallint;stdcall;
function dmc_get_homelatch_value(CardNo:WORD;axis:WORD):Smallint;stdcall;
//手轮运动
//3800专用 手轮通道选择
function dmc_set_handwheel_channel(CardNo:WORD;index:WORD):Smallint;stdcall;
function dmc_get_handwheel_channel(CardNo:WORD;out index:WORD):Smallint;stdcall;
//一个手轮信号控制单个轴运动		
function dmc_set_handwheel_inmode(CardNo:WORD;axis:WORD;inmode:WORD;multi:double;vh:double):Smallint;stdcall; 	//设置输入手轮脉冲信号的工作方式
function dmc_get_handwheel_inmode(CardNo:WORD;axis:WORD;out inmode:WORD;out multi:double;out vh:double):Smallint;stdcall; 	//读取输入手轮脉冲信号的工作方式
//3800专用 一个手轮信号控制多个轴运动
function dmc_set_handwheel_inmode_extern(CardNo:WORD;inmode:WORD;AxisNum:WORD;AxisList:WORD;multi:longint):Smallint;stdcall;	//设置输入手轮脉冲信号的工作方式 控制多轴
function dmc_get_handwheel_inmode_extern(CardNo:WORD;out inmode:WORD;out AxisNum:WORD;out AxisList:WORD;out multi:longint):Smallint;stdcall;	
//启动指定轴的手轮脉冲运动
function dmc_handwheel_move(CardNo:WORD;axis:WORD):Smallint;stdcall; 	
//编码器
function dmc_set_counter_inmode(CardNo:WORD;axis:WORD;mode:WORD):Smallint;stdcall;  //设定编码器的计数方式
function dmc_get_counter_inmode(CardNo:WORD;axis:WORD;out mode:WORD):Smallint;stdcall; //读取编码器的计数方式
function dmc_get_encoder(CardNo:WORD;axis:WORD):longint;stdcall;
function dmc_set_encoder(CardNo:WORD;axis:WORD;encoder_value:longint):Smallint;stdcall;
function dmc_set_ez_mode(CardNo:WORD;axis:WORD;ez_logic:WORD;ez_mode:WORD;filter:double):Smallint;stdcall; //设置EZ信号
function dmc_get_ez_mode(CardNo:WORD;axis:WORD;out ez_logic:WORD;out ez_mode:WORD;out filter:double):Smallint;stdcall; //读取设置EZ信号
//高速锁存
function dmc_set_ltc_mode(CardNo:WORD;axis:WORD;Ltc_logic:WORD;Ltc_Mode:WORD;filter:double):Smallint;stdcall;
function dmc_get_ltc_mode(CardNo:WORD;axis:WORD;out Ltc_logic:WORD;out Ltc_Mode:WORD;out filter:double):Smallint;stdcall;
function dmc_set_latch_mode(CardNo:WORD;axis:WORD;all_enable:WORD;latch_source:WORD;triger_chunnel:WORD):Smallint;stdcall;  	//设置锁存方式
function dmc_get_latch_mode(CardNo:WORD;axis:WORD;out all_enable:WORD;out latch_source:WORD;out triger_chunnel:WORD):Smallint;stdcall;
function dmc_get_latch_value(CardNo:WORD;axis:WORD):longint;stdcall;  	//读取锁存器的值
function dmc_get_latch_flag(CardNo:WORD;axis:WORD):Smallint;stdcall;  	//读取锁存器标志
function dmc_reset_latch_flag(CardNo:WORD;axis:WORD):Smallint;stdcall;  	//复位锁存器标志
function dmc_get_latch_value_extern(CardNo:WORD;axis:WORD;index:WORD):longint;stdcall;  //按索引读取锁存器的值
function dmc_get_latch_flag_extern(CardNo:WORD;axis:WORD):Smallint;stdcall;  	//读取有效锁存次数
//DMC3410专用 LTC端口触发延时急停时间 单位us
function dmc_set_latch_stop_time(CardNo:WORD;axis:WORD;time:longint):Smallint;stdcall; 
function dmc_get_latch_stop_time(CardNo:WORD;axis:WORD;out time:longint):Smallint;stdcall; 
//DMC3800专用 LTC反相输出
function dmc_SetLtcOutMode(CardNo:WORD;axis:WORD;enable:WORD;bitno:WORD):Smallint;stdcall; 
function dmc_GetLtcOutMode(CardNo:WORD;axis:WORD;out enable:WORD;out bitno:WORD):Smallint;stdcall; 
//单轴低速位置比较		
function dmc_compare_set_config(CardNo:WORD;axis:WORD;enable:WORD;cmp_source:WORD):Smallint;stdcall;  	//配置比较器
function dmc_compare_get_config(CardNo:WORD;axis:WORD;out enable:WORD;out cmp_source:WORD):Smallint;stdcall; 	//读取配置比较器
function dmc_compare_clear_points(CardNo:WORD;axis:WORD):Smallint;stdcall;  	//清除所有比较点
function dmc_compare_add_point(CardNo:WORD;axis:WORD;pos:longint;dir:WORD;action:WORD;actpara:LongWORD):Smallint;stdcall;  	//添加比较点
function dmc_compare_get_current_point(CardNo:WORD;axis:WORD;out pos:longint):Smallint;stdcall;  	//读取当前比较点
function dmc_compare_get_points_runned(CardNo:WORD;axis:WORD;out pointNum:longint):Smallint;stdcall;  	//查询已经比较过的点
function dmc_compare_get_points_remained(CardNo:WORD;axis:WORD;out pointNum:longint):Smallint;stdcall;  	//查询可以加入的比较点数量
//二维低速位置比较
function dmc_compare_set_config_extern(CardNo:WORD;enable:WORD;cmp_source:WORD):Smallint;stdcall;  	//配置比较器
function dmc_compare_get_config_extern(CardNo:WORD;out enable:WORD;out cmp_source:WORD):Smallint;stdcall; 	//读取配置比较器
function dmc_compare_clear_points_extern(CardNo:WORD):Smallint;stdcall;
function dmc_compare_add_point_extern(CardNo:WORD;axis:WORD;pos:longint;dir:WORD;action:WORD;actpara:LongWORD):Smallint;stdcall;  	//添加两轴位置比较点
function dmc_compare_get_current_point_extern(CardNo:WORD;out pos:longint):Smallint;stdcall;  	//读取当前比较点
function dmc_compare_get_points_runned_extern(CardNo:WORD;out pointNum:longint):Smallint;stdcall;  	//查询已经比较过的点
function dmc_compare_get_points_remained_extern(CardNo:WORD;out pointNum:longint):Smallint;stdcall;  	//查询可以加入的二维比较点数量
//3410专用 单轴高速位置比较
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

//通用IO
function dmc_read_inbit(CardNo:WORD;bitno:WORD):Smallint;stdcall; //读取输入口的状态
function dmc_write_outbit(CardNo:WORD;bitno:WORD;ON_OFF:WORD):Smallint;stdcall;  //设置输出口的状态
function dmc_read_outbit(CardNo:WORD;bitno:WORD):Smallint;stdcall;    //读取输出口的状态
function dmc_read_inport(CardNo:WORD;portno:WORD):LongWORD;stdcall; //读取输入端口的值
function dmc_read_outport(CardNo:WORD;portno:WORD):LongWORD;stdcall;   //读取输出端口的值
function dmc_write_outport(CardNo:WORD;IoMask:LongWORD;outport_val:LongWORD):Smallint;stdcall; //设置输出端口的值
//3800专用 IO辅助功能
function dmc_IO_TurnOutDelay(CardNo:WORD;bitno:WORD;DelayTime:LongWORD):Smallint;stdcall;
function dmc_SetIoCountMode(CardNo:WORD;bitno:WORD;mode:WORD;filter:LongWORD):Smallint;stdcall;
function dmc_GetIoCountMode(CardNo:WORD;bitno:WORD;out mode:WORD;out filter:LongWORD):Smallint;stdcall;
function dmc_SetIoCountValue(CardNo:WORD;bitno:WORD;CountValue:LongWORD):Smallint;stdcall;
function dmc_GetIoCountValue(CardNo:WORD;bitno:WORD;out CountValue:LongWORD):Smallint;stdcall;
//以上函数以毫秒为单位可继续使用，新函数将时间统一到秒为单位
function dmc_set_io_count_mode(CardNo:WORD;bitno:WORD;mode:WORD;filter_time:double):Smallint;stdcall;//设置IO计数模式
function dmc_get_io_count_mode(CardNo:WORD;bitno:WORD;mode:WORD;out filter_time:double):Smallint;stdcall;
function dmc_set_io_count_value(CardNo:WORD;bitno:WORD;CountValue:LongWORD):Smallint;stdcall;//设置IO计数值
function dmc_get_io_count_value(CardNo:WORD;bitno:WORD;out CountValue:LongWORD):Smallint;stdcall;//读取IO计数值

//IO输出延时
function dmc_reverse_outbit(CardNo:WORD;bitno:WORD;reverse_time:double):Smallint;stdcall;

//伺服专用IO
function dmc_set_inp_mode(CardNo:WORD;axis:WORD;enable:WORD;inp_logic:WORD):Smallint;stdcall; //设置INP信号
function dmc_get_inp_mode(CardNo:WORD;axis:WORD;out enable:WORD;out inp_logic:WORD):Smallint;stdcall; //读取设置INP信号
function dmc_set_alm_mode(CardNo:WORD;axis:WORD;enable:WORD;alm_logic:WORD;alm_action:WORD):Smallint;stdcall; //设置ALM信号
function dmc_get_alm_mode(CardNo:WORD;axis:WORD;out enable:WORD;out alm_logic:WORD;out alm_action:WORD):Smallint;stdcall; //读取设置ALM信号
function dmc_write_sevon_pin(CardNo:WORD;axis:WORD;ON_OFF:WORD):Smallint;stdcall;   //输出SEVON信号
function dmc_read_sevon_pin(CardNo:WORD;axis:WORD):WORD;stdcall;   //读取SEVON信号
function dmc_read_rdy_pin(CardNo:WORD;axis:WORD):Smallint;stdcall;   //读取RDY状态
function dmc_write_erc_pin(CardNo:WORD;axis:WORD;sel:WORD):Smallint;stdcall; //控制ERC信号输出
function dmc_read_erc_pin(CardNo:WORD;axis:WORD):Smallint;stdcall;

//运动状态
function dmc_read_current_speed(CardNo:WORD;axis:WORD):Double;stdcall; //读取指定轴的当前速度
function dmc_read_vector_speed(CardNo:WORD):Double;stdcall; //读取当前卡的插补速度
function dmc_get_position(CardNo:WORD;axis:WORD):longint;stdcall;  //读取指定轴的当前位置
function dmc_set_position(CardNo:WORD;axis:WORD;current_position:longint):Smallint;stdcall; //设定指定轴的当前位置
function dmc_get_target_position(CardNo:WORD;axis:WORD):longint;stdcall;  //读取指定轴的当前位置
function dmc_check_done(CardNo:WORD;axis:WORD):Smallint;stdcall;
function dmc_check_done_multicoor(CardNo:WORD;crd:WORD):Smallint;stdcall;
function dmc_axis_io_status(CardNo:WORD;axis:WORD):Smallint;stdcall; //读取指定轴有关运动信号的状态
function dmc_stop(CardNo:WORD;axis:WORD;stop_mode:WORD):Smallint;stdcall; //单轴停止
function dmc_stop_multicoor(CardNo:WORD;crd:WORD;stop_mode:WORD):Smallint;stdcall;
function dmc_emg_stop(CardNo:WORD):Smallint;stdcall; //紧急停止所有轴
//检测轴到位状态
function dmc_set_factor_error(CardNo:WORD;axis:WORD;factor:double;error:longint):Smallint;stdcall;
function dmc_get_factor_error(CardNo:WORD;axis:WORD;out factor:double;out error:longint):Smallint;stdcall;
function dmc_check_success_pulse(CardNo:WORD;axis:WORD):Smallint;stdcall;
function dmc_check_success_encoder(CardNo:WORD;axis:WORD):Smallint;stdcall;
//3800专用 主卡与接线盒通讯状态
function dmc_LinkState(CardNo:WORD;out State:WORD):Smallint;stdcall; 	//连接状态

//密码管理
function dmc_check_sn(CardNo:WORD; check_sn:String):Smallint;stdcall;//验证密码，校验3次失败之后再次校验将返回校验失败
function dmc_write_sn(CardNo:WORD; new_sn:String):Smallint;stdcall;//改写密码

//DMC5410 DMC5800专用
function dmc_get_axis_run_mode(CardNo:WORD; axis:WORD; out run_mode:WORD):Smallint;stdcall;//轴运动模式
function dmc_get_equiv(CardNo:WORD; axis:WORD; out equiv:double):Smallint;stdcall;//脉冲当量
function dmc_set_equiv(CardNo:WORD; axis:WORD; equiv:double):Smallint;stdcall;
function dmc_set_backlash_unit(CardNo:WORD; axis:WORD; backlash:double):Smallint;stdcall;//反向间隙
function dmc_get_backlash_unit(CardNo:WORD; axis:WORD; out backlash:double):Smallint;stdcall;
function dmc_set_position_unit(CardNo:WORD; axis:WORD; pos:double):Smallint;stdcall;//当前指令位置
function dmc_get_position_unit(CardNo:WORD; axis:WORD; out pos:double):Smallint;stdcall;
function dmc_set_encoder_unit(CardNo:WORD; axis:WORD; pos:double):Smallint;stdcall;//当前反馈位置
function dmc_get_encoder_unit(CardNo:WORD; axis:WORD; out pos:double):Smallint;stdcall;
function dmc_pmove_unit(CardNo:WORD; axis:WORD; Dist:double; posi_mode:WORD):Smallint;stdcall;//定长
function dmc_t_pmove_unit(CardNo:WORD; axis:WORD; Dist:double; posi_mode:WORD):Smallint;stdcall;//对称T型定长
function dmc_ex_t_pmove_unit(CardNo:WORD; axis:WORD; Dist:double; posi_mode:WORD):Smallint;stdcall;//非对称T型定长
function dmc_s_pmove_unit(CardNo:WORD; axis:WORD; Dist:double; posi_mode:WORD):Smallint;stdcall;//对称S型定长
function dmc_ex_s_pmove_unit(CardNo:WORD; axis:WORD; Dist:double; posi_mode:WORD):Smallint;stdcall;//非对称S型定长
function dmc_line_unit(CardNo:WORD; Crd:WORD; AxisNum:WORD; out AxisList:WORD; out Target_Pos:double; posi_mode:WORD):Smallint;stdcall;//单段直线
function dmc_arc_move_center_unit(CardNo:WORD; Crd:WORD; AxisNum:WORD;out AxisList:WORD; out Target_Pos:double; out Cen_Pos:double; Arc_Dir:WORD; Circle:longint; posi_mode:WORD):Smallint;stdcall;//单段圆心圆弧/螺旋线/渐开线
function dmc_arc_move_radius_unit(CardNo:WORD; Crd:WORD; AxisNum:WORD;out AxisList:WORD; out Target_Pos:double; Arc_Radius:double; Arc_Dir:WORD; Circle:longint; posi_mode:WORD):Smallint;stdcall;//单段半径圆弧/螺旋线
function dmc_arc_move_3points_unit(CardNo:WORD; Crd:WORD; AxisNum:WORD;out AxisList:WORD; out Target_Pos:double; out Mid_Pos:double; Circle:longint; posi_mode:WORD):Smallint;stdcall//单段三点圆弧/螺旋线
function dmc_read_current_speed_unit(CardNo:WORD; axis:WORD; out current_speed:double):Smallint;stdcall;//轴当前运行速度
function dmc_set_vector_profile_unit(CardNo:WORD; Crd:WORD; Min_Vel:double; Max_Vel:double; Tacc:double; Tdec:double; Stop_Vel:double):Smallint;stdcall;//单段插补速度参数
function dmc_get_vector_profile_unit(CardNo:WORD; Crd:WORD; out Min_Vel:double; out Max_Vel:double; out Tacc:double; out Tdec:double; out Stop_Vel:double):Smallint;stdcall;
function dmc_set_vector_s_profile(CardNo:WORD; Crd:WORD; s_mode:WORD; s_para:double):Smallint;stdcall;//设置S型速度曲线参数
function dmc_get_vector_s_profile(CardNo:WORD; Crd:WORD; s_mode:WORD; out s_para:double):Smallint;stdcall;
function dmc_set_profile_unit(CardNo:WORD; axis:WORD; Min_Vel:double; Max_Vel:double; Tacc:double; Tdec:double; Stop_Vel:double):Smallint;stdcall;//单轴速度参数
function dmc_get_profile_unit(CardNo:WORD; axis:WORD; out Min_Vel:double; out Max_Vel:double; out Tacc:double; out Tdec:double; out Stop_Vel:double):Smallint;stdcall;
function dmc_reset_target_position_unit(CardNo:WORD; axis:WORD; New_Pos:double):Smallint;stdcall;//在线变位
function dmc_update_target_position_unit(CardNo:WORD; axis:WORD; New_Pos:double):Smallint;stdcall;//强行变位
function dmc_change_speed_unit(CardNo:WORD; axis:WORD; New_Vel:double; Taccdec:double):Smallint;stdcall;//在线变速

//连续插补
function dmc_conti_open_list(CardNo:WORD; Crd:WORD; AxisNum:WORD; out AxisList:WORD):Smallint;stdcall; //打开连续缓存区
function dmc_conti_close_list(CardNo:WORD; Crd:WORD):Smallint;stdcall;	//关闭连续缓存区
function dmc_conti_stop_list(CardNo:WORD; Crd:WORD; stop_mode:WORD):Smallint;stdcall;	//连续插补中停止
function dmc_conti_pause_list(CardNo:WORD; Crd:WORD):Smallint;stdcall;	//连续插补中暂停
function dmc_conti_start_list(CardNo:WORD; Crd:WORD):Smallint;stdcall;	//开始连续插补
function dmc_conti_remain_space(CardNo:WORD; Crd:WORD):Smallint;stdcall;	//查连续插补剩余缓存数
function dmc_conti_read_current_mark(CardNo:WORD; Crd:WORD):Smallint;stdcall;	//读取当前连续插补段的标号
function dmc_conti_set_blend(CardNo:WORD; Crd:WORD; enable:WORD):Smallint;stdcall;//blend拐角过度模式
function dmc_conti_get_blend(CardNo:WORD; Crd:WORD; out enable:WORD):Smallint;stdcall;
function dmc_conti_set_profile_unit(CardNo:WORD; Crd:WORD; Min_Vel:double; Max_vel:double; Tacc:double; Tdec:double; Stop_Vel:double):Smallint;stdcall;//设置连续插补速度
function dmc_conti_set_s_profile(CardNo:WORD; Crd:WORD; s_mode:WORD; s_para:double):Smallint;stdcall;//设置连续插补平滑时间
function dmc_conti_get_s_profile(CardNo:WORD; Crd:WORD; s_mode:WORD; out s_para:double):Smallint;stdcall;
function dmc_conti_set_pause_output(CardNo:WORD; Crd:WORD; action:WORD; mask:longint; state:longint):Smallint;stdcall;//暂停时IO输出 action：0-不动作；1-暂停时输出；2-暂停时输出, 继续运行时恢复；3-停止时输出。
function dmc_conti_get_pause_output(CardNo:WORD; Crd:WORD; out action:WORD; out mask:longint; out state:longint):Smallint;stdcall;
function dmc_conti_set_override(CardNo:WORD; Crd:WORD; Percent:double):Smallint;stdcall;//设置每段速度比例  缓冲区指令
function dmc_conti_change_speed_ratio (CardNo:WORD; Crd:WORD; Percent:double):Smallint;stdcall;//连续插补动态变速
function dmc_conti_get_run_state(CardNo:WORD; Crd:WORD):Smallint;stdcall;//读取连续插补状态：0-运行，1-暂停，2-正常停止，3-异常停止
function dmc_conti_check_done(CardNo:WORD; Crd:WORD):Smallint;stdcall;//检测连续插补运动状态：0-运行，1-停止
function dmc_conti_wait_input(CardNo:WORD; Crd:WORD; bitno:WORD; on_off:WORD; TimeOut:double; mark:longint):Smallint;stdcall;//设置连续插补等待输入
function dmc_conti_delay_outbit_to_start(CardNo:WORD; Crd:WORD; bitno:WORD; on_off:WORD; delay_value:double; delay_mode:WORD; ReverseTime:double):Smallint;stdcall;//相对于轨迹段起点IO滞后输出
function dmc_conti_delay_outbit_to_stop(CardNo:WORD; Crd:WORD; bitno:WORD; on_off:WORD; delay_time:double; ReverseTime:double):Smallint;stdcall;//相对于轨迹段终点IO滞后输出
function dmc_conti_ahead_outbit_to_stop(CardNo:WORD; Crd:WORD; bitno:WORD; on_off:WORD; ahead_value:double; ahead_mode:WORD; ReverseTime:double):Smallint;stdcall;//相对轨迹段终点IO提前输出
function dmc_conti_accurate_outbit_unit(CardNo:WORD; Crd:WORD; cmp_no:WORD; on_off:WORD; map_axis:WORD; rel_dist:double; pos_source:WORD; ReverseTime:double):Smallint;stdcall;//确定位置精确输出
function dmc_conti_write_outbit(CardNo:WORD; Crd:WORD; bitno:WORD; on_off:WORD; ReverseTime:double):Smallint;stdcall;//缓冲区立即IO输出
function dmc_conti_clear_io_action(CardNo:WORD; Crd:WORD; IoMask:longWORD):Smallint;stdcall;//清除段内未执行完的IO动作,防止在下一段执行
function dmc_conti_delay(CardNo:WORD; Crd:WORD; delay_time:double; mark:longWORD):Smallint;stdcall;//添加延时指令
function dmc_conti_line_unit(CardNo:WORD; Crd:WORD; AxisNum:WORD; out AxisList:WORD; out Target_Pos:double; posi_mode:WORD; mark:longint):Smallint;stdcall;//连续插补直线
function dmc_conti_arc_move_center_unit(CardNo:WORD; Crd:WORD; AxisNum:WORD; out AxisList:WORD; out Target_Pos:double; out Cen_Pos:double; Arc_Dir:WORD; Circle:longint; posi_mode:WORD; mark:longint):Smallint;stdcall;//圆心终点式圆弧/螺旋线/渐开线/同心圆
function dmc_conti_arc_move_radius_unit(CardNo:WORD; Crd:WORD; AxisNum:WORD; out AxisList:WORD; out Target_Pos:double; Arc_Radius:double; Arc_Dir:WORD; Circle:longint; posi_mode:WORD; mark:longint):Smallint;stdcall;//半径终点式圆弧/螺旋线
function dmc_conti_arc_move_3points_unit(CardNo:WORD; Crd:WORD; AxisNum:WORD; out AxisList:WORD; out Target_Pos:double; out Mid_Pos:double; Circle:longint; posi_mode:WORD; mark:longint):Smallint;stdcall;//三点式圆弧/螺旋线
function dmc_conti_set_involute_mode(CardNo:WORD; Crd:WORD; mode:WORD):Smallint;stdcall;//渐开线整圆封闭
function dmc_conti_get_involute_mode(CardNo:WORD; Crd:WORD; out mode:WORD):Smallint;stdcall;
function dmc_conti_rectangle_move(CardNo:WORD; Crd:WORD; AxisNum:WORD; out AxisList:WORD; out Target_Pos:double; out Mark_Pos:double; Count:longint; rect_mode:WORD; posi_mode:WORD; mark:longint):Smallint;stdcall;//矩形插补
function dmc_calculate_arclength_center(out start_pos:double; out target_pos:double; out cen_pos:double; arc_dir:WORD; circle:double; out ArcLength:double):Smallint;stdcall;//计算圆心圆弧弧长
function dmc_calculate_arclength_radius(out start_pos:double; out target_pos:double; arc_radius:double; arc_dir:WORD; circle:double; out ArcLength:double):Smallint;stdcall;//计算半径圆弧弧长
function dmc_calculate_arclength_3point(out start_pos:double; out mid_pos:double; out end_pos:double; circle:double; out ArcLength:double):Smallint;stdcall;//计算三点圆弧弧长
//DMC5800专用 PWM及CanIO
function dmc_set_pwm_enable(CardNo:WORD; enable:WORD):Smallint;stdcall;//7号轴切换为PWM输出
function dmc_get_pwm_enable(CardNo:WORD; out enable:WORD):Smallint;stdcall;
function dmc_conti_set_pwm_output(CardNo:WORD; Crd:WORD; pwm_no:WORD; fDuty:double; fFre:double):Smallint;stdcall;//连续插补中设置PWM输出
function dmc_set_pwm_output(CardNo:WORD; pwm_no:WORD; fDuty:double; fFre:double):Smallint;stdcall;//设置PWM输出
function dmc_get_pwm_output(CardNo:WORD; pwm_no:WORD; out fDuty:double; out fFre:double):Smallint;stdcall;
function dmc_conti_set_pwm_follow_speed(CardNo:WORD; Crd:WORD; pwm_no:WORD; mode:WORD; MaxVel:double; MaxValue:double; OutValue:double):Smallint;stdcall;//PWM速度跟随
function dmc_conti_get_pwm_follow_speed(CardNo:WORD; Crd:WORD; pwm_no:WORD; out mode:WORD; out MaxVel:double; out MaxValue:double; out OutValue:double):Smallint;stdcall;

function dmc_set_can_state(CardNo:WORD; NodeNum:WORD; state:WORD):Smallint;stdcall;//0-断开；1-连接；2-复位后自动连接
function dmc_get_can_state(CardNo:WORD; out NodeNum:WORD; out state:WORD):Smallint;stdcall;////0-断开；1-连接；2-异常
function dmc_get_can_errcode(CardNo:WORD; out Errcode:WORD):Smallint;stdcall;//读取CanIo通讯错误码
function dmc_write_can_outbit(CardNo:WORD; Node:WORD; bitno:WORD; on_off:WORD):Smallint;stdcall;
function dmc_read_can_outbit(CardNo:WORD; Node:WORD; bitno:WORD):Smallint;stdcall;
function dmc_read_can_inbit(CardNo:WORD; Node:WORD; bitno:WORD):Smallint;stdcall;
function dmc_write_can_outport(CardNo:WORD; Node:WORD; portno:WORD; outport_val:longWORD):Smallint;stdcall;//写CanIo输出口
function dmc_read_can_outport(CardNo:WORD; Node:WORD; portno:WORD):Smallint;stdcall;//读取CanIo输出端口
function dmc_read_can_inport(CardNo:WORD; Node:WORD; portno:WORD):Smallint;stdcall;//读取CanIo输入端口

function dmc_get_stop_reason(CardNo:WORD; axis:WORD; out StopReason:longint):Smallint;stdcall;//读取停止原因
function dmc_clear_stop_reason(CardNo:WORD; axis:WORD):Smallint;stdcall;//清除停止原因

function dmc_set_dec_stop_dist(CardNo:WORD; axis:WORD; dist:longint):Smallint;stdcall;	//设置减速停止距离
function dmc_get_dec_stop_dist(CardNo:WORD; axis:WORD; out dist:longint):Smallint;stdcall;

implementation
//板卡配置
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
//限位/异常设置
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
//速度设置
function dmc_set_profile;external'LTDMC.dll';
function dmc_get_profile;external'LTDMC.dll';
function dmc_set_s_profile;external'LTDMC.dll';
function dmc_get_s_profile;external'LTDMC.dll';
function dmc_set_vector_profile_multicoor;external'LTDMC.dll';
function dmc_get_vector_profile_multicoor;external'LTDMC.dll';
//运动模块脉冲模式
function dmc_set_pulse_outmode;external'LTDMC.dll';
function dmc_get_pulse_outmode;external'LTDMC.dll';
//点位运动
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
//JOG运动
function dmc_vmove;external'LTDMC.dll';
//直线插补
function dmc_line_multicoor;external'LTDMC.dll';
function dmc_arc_move_multicoor;external'LTDMC.dll';
//回零运动
function dmc_set_home_pin_logic ;external'LTDMC.dll';
function dmc_get_home_pin_logic ;external'LTDMC.dll';
function dmc_set_homemode;external'LTDMC.dll';
function dmc_get_homemode;external'LTDMC.dll';
function dmc_home_move;external'LTDMC.dll';
//原点锁存
function dmc_set_homelatch_mode;external'LTDMC.dll';
function dmc_get_homelatch_mode;external'LTDMC.dll';
function dmc_get_homelatch_flag;external'LTDMC.dll';
function dmc_reset_homelatch_flag;external'LTDMC.dll';
function dmc_get_homelatch_value;external'LTDMC.dll';
//手轮运动
function dmc_set_handwheel_channel;external'LTDMC.dll';
function dmc_get_handwheel_channel;external'LTDMC.dll';
function dmc_set_handwheel_inmode;external'LTDMC.dll';
function dmc_get_handwheel_inmode;external'LTDMC.dll';
function dmc_set_handwheel_inmode_extern;external'LTDMC.dll';
function dmc_get_handwheel_inmode_extern;external'LTDMC.dll';
function dmc_handwheel_move;external'LTDMC.dll';
//编码器
function dmc_set_counter_inmode;external'LTDMC.dll';
function dmc_get_counter_inmode;external'LTDMC.dll';
function dmc_get_encoder;external'LTDMC.dll';
function dmc_set_encoder;external'LTDMC.dll';
function dmc_set_ez_mode;external'LTDMC.dll';
function dmc_get_ez_mode;external'LTDMC.dll';
//锁存
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
//位置比较
function dmc_compare_set_config;external'LTDMC.dll';
function dmc_compare_get_config;external'LTDMC.dll';
function dmc_compare_clear_points;external'LTDMC.dll';
function dmc_compare_add_point;external'LTDMC.dll';
function dmc_compare_get_current_point;external'LTDMC.dll';
function dmc_compare_get_points_runned;external'LTDMC.dll';
function dmc_compare_get_points_remained;external'LTDMC.dll';
//二维位置比较
function dmc_compare_set_config_extern;external'LTDMC.dll';
function dmc_compare_get_config_extern;external'LTDMC.dll';
function dmc_compare_clear_points_extern;external'LTDMC.dll';
function dmc_compare_add_point_extern;external'LTDMC.dll';
function dmc_compare_get_current_point_extern;external'LTDMC.dll';
function dmc_compare_get_points_runned_extern;external'LTDMC.dll';
function dmc_compare_get_points_remained_extern;external'LTDMC.dll';
//高速位置比较
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
//通用IO
function dmc_read_inbit;external'LTDMC.dll';
function dmc_write_outbit;external'LTDMC.dll';
function dmc_read_outbit;external'LTDMC.dll';
function dmc_read_inport ;external'LTDMC.dll';
function dmc_read_outport;external'LTDMC.dll';
function dmc_write_outport;external'LTDMC.dll';
//IO辅助功能
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
//专用IO
function dmc_set_inp_mode;external'LTDMC.dll';
function dmc_get_inp_mode;external'LTDMC.dll';
function dmc_set_alm_mode;external'LTDMC.dll';
function dmc_get_alm_mode;external'LTDMC.dll';
function dmc_write_sevon_pin;external'LTDMC.dll';
function dmc_read_sevon_pin;external'LTDMC.dll';
function dmc_read_rdy_pin;external'LTDMC.dll';
function dmc_write_erc_pin;external'LTDMC.dll';
function dmc_read_erc_pin;external'LTDMC.dll';

//运动状态
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

//密码管理
function dmc_check_sn;external'LTDMC.dll';
function dmc_write_sn;external'LTDMC.dll';

//DMC5410 DMC5800专用
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

//连续插补
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
//DMC5800专用 PWM及CanIO
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
