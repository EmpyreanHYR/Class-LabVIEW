Module ModuleCard
    '板卡配置
    ''' <summary>
    ''' 控制卡初始化函数
    ''' </summary>
    ''' <returns>大于0：卡数，小于0：绝对值减1表示拨码重号，等于0：没找到控制卡硬件或初始化失败</returns>
    ''' <remarks></remarks>
    Declare Function dmc_board_init Lib "LTDMC.dll" () As Int16
    ''' <summary>
    ''' 控制卡关闭函数 资源释放
    ''' </summary>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_board_close Lib "LTDMC.dll" () As Int16
    ''' <summary>
    ''' 控制卡硬件复位
    ''' </summary>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_board_reset Lib "LTDMC.dll" () As Int16
    ''' <summary>
    ''' 读取初始化后控制卡信息
    ''' </summary>
    ''' <param name="CardNum">初始化成功的卡数</param>
    ''' <param name="CardTypeList">卡类型列表：卡类型采用16进制表示，如0x5410,0x5800</param>
    ''' <param name="CardIdList">卡ID列表</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_CardInfList Lib "LTDMC.dll" (ByRef CardNum As UInt16, ByRef CardTypeList As UInt32, ByRef CardIdList As UInt16) As Int16
    ''' <summary>
    ''' 读取控制卡版本信息
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="CardVersion">控制卡硬件版本号</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_card_version Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByRef CardVersion As UInt32) As Int16
    ''' <summary>
    ''' 
    ''' </summary>
    ''' <param name="CardNo"></param>
    ''' <param name="FirmID">控制卡固件类型</param>
    ''' <param name="SubFirmID">控制卡固件版本号</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_card_soft_version Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByRef FirmID As UInt32, ByRef SubFirmID As UInt32) As Int16
    ''' <summary>
    ''' 读取动态库版本号 用日期表示
    ''' </summary>
    ''' <param name="LibVer">版本号</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_card_lib_version Lib "LTDMC.dll" (ByRef LibVer As Int32) As Int16
    ''' <summary>
    ''' 设置函数库函数调用参数打印输出模式
    ''' </summary>
    ''' <param name="mode">打印输出模式：0-不输出，1-输出</param>
    ''' <param name="FileName">文件名：相对或绝对地址文件</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_debug_mode Lib "LTDMC.dll" (ByVal mode As UIn16,ByRef FileName As String) As Int16
    ''' <summary>
    ''' 读取函数库函数调用参数打印输出模式
    ''' </summary>
    ''' <param name="mode">打印输出模式：0-不输出，1-输出</param>
    ''' <param name="FileName">文件名：相对或绝对地址文件</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_debug_mode Lib "LTDMC.dll" (ByVal mode As UIn16,ByRef FileName As String) As Int16
    '密码管理
    ''' <summary>
    ''' 密码校验 失败3次之后 无法再次校验
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="check_sn">旧密码</param>
    ''' <returns>校验状态：0-失败，1-成功</returns>
    ''' <remarks></remarks>
    Declare Function dmc_check_sn Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByRef check_sn As String) As Int16
    ''' <summary>
    ''' 密码修改
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="new_sn">新密码</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_write_sn Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByRef new_sn As String) As Int16
    '下载参数文件
    ''' <summary>
    ''' 下载参数文件
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="FileName">文件名：相对或绝对地址文件</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_download_configfile Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByRef FileName As String) As Int16
    '下载固件文件
    ''' <summary>
    ''' 下载固件文件
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="FileName">文件名：相对或绝对地址文件</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_download_firmware Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByRef FileName As String) As Int16
    ''' <summary>
    ''' 读取控制卡轴数
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="TotalAxis">轴数</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_total_axes Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByRef TotalAxis As UInt32) As Int16

    '3800 5800专用 轴IO映射配置
    ''' <summary>
    ''' 设置轴IO映射
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="IoType">轴IO信号类型</param>
    ''' <param name="MapIoType">轴IO映射IO口类型</param>
    ''' <param name="MapIoIndex">轴IO映射IO口号</param>
    ''' <param name="Filter">滤波时间，单位s</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_axis_io_map Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal IoType As UInt16, ByVal MapIoType As UInt16, ByVal MapIoIndex As UInt16, ByVal Filter As Double) As Int16
    ''' <summary>
    ''' 读取轴IO映射
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="IoType">轴IO信号类型</param>
    ''' <param name="MapIoType">轴IO映射IO口类型</param>
    ''' <param name="MapIoIndex">轴IO映射IO口号</param>
    ''' <param name="Filter">滤波时间，单位s</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_axis_io_map Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal IoType As UInt16, ByRef MapIoType As UInt16, ByRef MapIoIndex As UInt16, ByRef Filter As Double) As Int16
    ''' <summary>
    ''' 设置所有专用IO滤波时间
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="filter_time">滤波时间，单位s</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_special_input_filter Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal filter_time As Double) As Int16

    'DMC3800专用 虚拟IO映射  用于读取滤波后的IO口电平状态
    ''' <summary>
    ''' 设置虚拟IO映射
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="bitno">虚拟IO口号：0-15</param>
    ''' <param name="MapIoType">轴IO映射IO口类型</param>
    ''' <param name="MapIoIndex">轴IO映射IO口号</param>
    ''' <param name="Filter">滤波时间，单位s</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_io_map_virtual Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal bitno As UInt16, ByVal MapIoType As UInt16, ByVal MapIoIndex As UInt16, ByVal Filter As Double) As Int16
    ''' <summary>
    ''' 读取虚拟IO映射
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="bitno">虚拟IO口号：0-15</param>
    ''' <param name="MapIoType">轴IO映射IO口类型</param>
    ''' <param name="MapIoIndex">轴IO映射IO口号</param>
    ''' <param name="Filter">滤波时间，单位s</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_io_map_virtual Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal bitno As UInt16, ByRef MapIoType As UInt16, ByRef MapIoIndex As UInt16, ByRef Filter As Double) As Int16
    ''' <summary>
    ''' 读取滤波后的IO输入状态
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="bitno">虚拟IO口号：0-15</param>
    ''' <returns>输入状态：0-低电平，1-高电平</returns>
    ''' <remarks></remarks>
    Declare Function dmc_read_inbit_virtual Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal bitno As UInt16) As Int16

    '限位/异常设置
    ''' <summary>
    ''' 设置软限位参数
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7></param>
    ''' <param name="enable">使能：0-禁止，1-允许</param>
    ''' <param name="source_sel">位置源：0-指令位置，1-编码器位置</param>
    ''' <param name="SL_action">制动方式：0-减速停止，1-立即停止</param>
    ''' <param name="N_limit">负限位值</param>
    ''' <param name="P_limit">正限位值</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_softlimit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal enable As UInt16, ByVal source_sel As UInt16, ByVal SL_action As UInt16, ByVal N_limit As Int32, ByVal P_limit As Int32) As Int16  '设置软限位参数
    ''' <summary>
    ''' 读取软限位参数
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7></param>
    ''' <param name="enable">使能：0-禁止，1-允许</param>
    ''' <param name="source_sel">位置源：0-指令位置，1-编码器位置</param>
    ''' <param name="SL_action">制动方式：0-减速停止，1-立即停止</param>
    ''' <param name="N_limit">负限位值</param>
    ''' <param name="P_limit">正限位值</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_softlimit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef enable As UInt16, ByRef source_sel As UInt16, ByRef SL_action As UInt16, ByRef N_limit As Int32, ByRef P_limit As Int32) As Int16    '读取软限位参数
    ''' <summary>
    ''' 设置硬件限位模式
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="el_enable">使能：0-禁止，1-允许</param>
    ''' <param name="el_logic">有效电平：0-低电平，1-高电平</param>
    ''' <param name="el_mode">制动方式：0-减速停止，1-立即停止</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_el_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal el_enable As UInt16, ByVal el_logic As UInt16, ByVal el_mode As UInt16) As Int16      '设置EL信号
    ''' <summary>
    ''' 读取硬件限位模式
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="el_enable">使能：0-禁止，1-允许</param>
    ''' <param name="el_logic">有效电平：0-低电平，1-高电平</param>
    ''' <param name="el_mode">制动方式：0-减速停止，1-立即停止</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_el_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef el_enable As UInt16, ByRef el_logic As UInt16, ByRef el_mode As UInt16) As Int16   '读取设置EL信号
    ''' <summary>
    ''' 设置硬件急停模式
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="enable">使能：0-禁止，1-允许</param>
    ''' <param name="emg_logic">有效电平：0-低电平，1-高电平</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_emg_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal enable As UInt16, ByVal emg_logic As UInt16) As Int16    '设置EMG信号
    ''' <summary>
    ''' 读取硬件急停模式
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="enable">使能：0-禁止，1-允许</param>
    ''' <param name="emg_logic">有效电平：0-低电平，1-高电平</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_emg_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef enable As UInt16, ByRef emg_logic As UInt16) As Int16        '读取设置EMG信号
    '3800 5800专用 外部减速停止信号及减速停止时间配置
    ''' <summary>
    ''' 设置外部IO减速停止模式
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="enable">使能：0-禁止，1-允许</param>
    ''' <param name="logic">有效电平：0-低电平，1-高电平</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_io_dstp_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal enable As UInt16, ByVal logic As UInt16) As Int16
    ''' <summary>
    ''' 读取外部IO减速停止模式
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="enable">使能：0-禁止，1-允许</param>
    ''' <param name="logic">有效电平：0-低电平，1-高电平</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_io_dstp_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef enable As UInt16, ByRef logic As UInt16) As Int16
    ''' <summary>
    ''' 设置减速停止时间，针对所有减速停止有效
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="stop_time">停止时间，单位s</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_dec_stop_time Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef stop_time As Double) As Int16
    ''' <summary>
    ''' 读取减速停止时间，针对所有减速停止有效
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="stop_time">停止时间，单位s</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_dec_stop_time Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef stop_time As Double) As Int16

    '速度设置
    ''' <summary>
    ''' 设置单轴速度参数
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="Min_Vel">起始速度</param>
    ''' <param name="Max_Vel">运行速度</param>
    ''' <param name="Tacc">加速时间，单位s</param>
    ''' <param name="Tdec">减速时间，单位s</param>
    ''' <param name="Stop_vel">停止速度</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_profile Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal Min_Vel As Double, ByVal Max_Vel As Double, ByVal Tacc As Double, ByVal Tdec As Double, ByVal Stop_vel As Double) As Int16 '设定速度曲线参数
    ''' <summary>
    ''' 读取单轴速度参数
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="Min_Vel">起始速度</param>
    ''' <param name="Max_Vel">运行速度</param>
    ''' <param name="Tacc">加速时间，单位s</param>
    ''' <param name="Tdec">减速时间，单位s</param>
    ''' <param name="Stop_vel">停止速度</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_profile Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef Min_Vel As Double, ByRef Max_Vel As Double, ByRef Tacc As Double, ByRef Tdec As Double, ByRef Stop_vel As Double) As Int16 '读取速度曲线参数
    ''' <summary>
    ''' 设置S速度曲线参数
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="s_mode">s段参数模式：0</param>
    ''' <param name="s_para">s段时间，单位s</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_s_profile Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal s_mode As UInt16, ByVal s_para As Double) As Int16        '设置平滑速度曲线参数
    ''' <summary>
    ''' 设置S速度曲线参数
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="s_mode">s段参数模式：0</param>
    ''' <param name="s_para">s段时间，单位s</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_s_profile Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal s_mode As UInt16, ByRef s_para As Double) As Int16    '读取平滑速度曲线参数
    ''' <summary>
    ''' 设置单段插补速度参数
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="Min_Vel">起始速度</param>
    ''' <param name="Max_Vel">运行速度</param>
    ''' <param name="Tacc">加速时间，单位s</param>
    ''' <param name="Tdec">减速时间，单位s</param>
    ''' <param name="Stop_vel">停止速度</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_vector_profile_multicoor Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal Min_Vel As Double, ByVal Max_Vel As Double, ByVal Tacc As Double, ByVal Tdec As Double, ByVal Stop_vel As Double) As Int16
    ''' <summary>
    ''' 读取单段插补速度参数
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="Min_Vel">起始速度</param>
    ''' <param name="Max_Vel">运行速度</param>
    ''' <param name="Tacc">加速时间，单位s</param>
    ''' <param name="Tdec">减速时间，单位s</param>
    ''' <param name="Stop_vel">停止速度</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_vector_profile_multicoor Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByRef Min_Vel As Double, ByRef Max_Vel As Double, ByRef Tacc As Double, ByRef Tdec As Double, ByRef Stop_vel As Double) As Int16

    '运动模块脉冲模式
    ''' <summary>
    ''' 设置脉冲模式
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="outmode">脉冲输出模式：0-5</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_pulse_outmode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal outmode As UInt16) As Int16    '设定脉冲输出模式
    ''' <summary>
    ''' 读取脉冲模式
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="outmode">脉冲输出模式：0-5</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_pulse_outmode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef outmode As UInt16) As Int16      '读取脉冲输出模式

    '单轴运动
    '点位运动
    ''' <summary>
    ''' 单轴定长运动
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="Dist">目标位置</param>
    ''' <param name="posi_mode">位置模式：0-相对，1-绝对</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_pmove Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal Dist As Int32, ByVal posi_mode As UInt16) As Int16  '指定轴做定长位移运动
    ''' <summary>
    ''' 在线变位
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="Dist">目标位置</param>
    ''' <param name="posi_mode">位置模式：0 保留</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_reset_target_position Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal Dist As Int32, ByVal posi_mode As UInt16) As Int16  '运动中改变目标位置
    ''' <summary>
    ''' 在线变速
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="Curr_Vel">新速度值</param>
    ''' <param name="Taccdec">新加减速时间，单位s</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_change_speed Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal Curr_Vel As Double, ByVal Taccdec As Double) As Int16        '在线改变指定轴的当前运动速度
    ''' <summary>
    ''' 强制变位
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="Dist">目标位置</param>
    ''' <param name="posi_mode">位置模式：0 保留</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_update_target_position Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal Dist As Int32, ByVal posi_mode As UInt16) As Int16  '强行改变目标位置
    'JOG运动
    ''' <summary>
    ''' 速度运动
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="dir">运动方向：0-负方向，1-正方向</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_vmove Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal dir As UInt16) As Int16    '指定轴做连续运动
    'PVT运动
    ''' <summary>
    ''' PVT运动数据
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="Count">数据数组元素个数</param>
    ''' <param name="pTime">时间数据数组，单位s</param>
    ''' <param name="pPos">位置数据数组</param>
    ''' <param name="pVel">速度数据数组</param>
    ''' <returns></returns>
    ''' <remarks></remarks>
    Declare Function dmc_PvtTable Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal Count As Int32, ByRef pTime As Double, ByRef pPos As Int32, ByRef pVel As Double) As Int16
    ''' <summary>
    ''' PTS运动数据
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="Count">数据数组元素个数</param>
    ''' <param name="pTime">时间数据数组，单位s</param>
    ''' <param name="pPos">位置数据数组</param>
    ''' <param name="pPercent">加速度变化百分比数据数组</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_PtsTable Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal Count As Int32, ByRef pTime As Double, ByRef pPos As Int32, ByRef pPercent As Double) As Int16
    ''' <summary>
    ''' PVTS运动数据
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="Count">数据数组元素个数</param>
    ''' <param name="pTime">时间数据数组，单位s</param>
    ''' <param name="pPos">位置数据数组</param>
    ''' <param name="velBegin">起始速度</param>
    ''' <param name="velEnd">停止速度</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_PvtsTable Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal Count As Int32, ByRef pTime As Double, ByRef pPos As Int32, ByVal velBegin As Double, ByVal velEnd As Double) As Int16
    ''' <summary>
    ''' PTT运动数据
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="Count">数据数组元素个数</param>
    ''' <param name="pTime">时间数据数组，单位s</param>
    ''' <param name="pPos">位置数据数组</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_PttTable Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal Count As Int32, ByRef pTime As Double, ByRef pPos As Int32) As Int16
    ''' <summary>
    ''' PVT启动运动
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="AxisNum">轴数：1-8</param>
    ''' <param name="AxisList">轴列表</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_PvtMove Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal AxisNum As UInt16, ByRef AxisList As UInt16) As Int16

    '多轴运动
    '直线插补
    ''' <summary>
    ''' 单段直线插补
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="AxisNum">轴数：2-8</param>
    ''' <param name="AxisList">轴列表</param>
    ''' <param name="DistList">目标位置列表</param>
    ''' <param name="posi_mode">位置模式：0-相对，1-绝对</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_line_multicoor Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal AxisNum As UInt16, ByRef AxisList As UInt16, ByRef DistList As Int32, ByVal posi_mode As UInt16) As Int16     '指定轴直线插补运动
    '平面圆弧
    ''' <summary>
    ''' 2轴单段圆弧插补
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="AxisList">轴列表</param>
    ''' <param name="Target_Pos">目标位置</param>
    ''' <param name="Cen_Pos">圆心位置</param>
    ''' <param name="Arc_Dir">圆弧方向：0-顺时针，1-逆时针</param>
    ''' <param name="posi_mode">位置模式：0-相对，1-绝对</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_arc_move_multicoor Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByRef AxisList As UInt16, ByRef Target_Pos As Int32, ByRef Cen_Pos As Int32, ByVal Arc_Dir As UInt16, ByVal posi_mode As UInt16) As Int16

    '回零运动
    ''' <summary>
    ''' 设置原点信号
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="org_logic">有效电平：0-低电平，1-高电平</param>
    ''' <param name="Filter">滤波时间：0 保留</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_home_pin_logic Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal org_logic As UInt16, ByVal Filter As Double) As Int16         '设置HOME信号
    ''' <summary>
    ''' 读取原点信号
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="org_logic">有效电平：0-低电平，1-高电平</param>
    ''' <param name="Filter">滤波时间：0 保留</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_home_pin_logic Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef org_logic As UInt16, ByRef Filter As Double) As Int16     '读取设置HOME信号
    ''' <summary>
    ''' 设置回零模式
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="home_dir">回零方向：0-负方向，1-正方向</param>
    ''' <param name="vel_mode">回零速度模式：0-低速回零，1-高速回零</param>
    ''' <param name="home_mode">回零模式：0-一次回零，1-一次回零+反找，2-二次回零，3-一次回零+一次EZ回零，4-一次EZ回零</param>
    ''' <param name="EZ_count">EZ次数：1 保留</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_homemode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal home_dir As UInt16, ByVal vel_mode As Double, ByVal home_mode As UInt16, ByVal EZ_count As UInt16) As Int16 '设定指定轴的回原点模式
    ''' <summary>
    ''' 读取回零模式
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="home_dir">回零方向：0-负方向，1-正方向</param>
    ''' <param name="vel_mode">回零速度模式：0-低速回零，1-高速回零</param>
    ''' <param name="home_mode">回零模式：0-一次回零，1-一次回零+反找，2-二次回零，3-一次回零+一次EZ回零，4-一次EZ回零</param>
    ''' <param name="EZ_count">EZ次数：1 保留</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_homemode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef home_dir As UInt16, ByRef vel_mode As Double, ByRef home_mode As UInt16, ByRef EZ_count As UInt16) As Int16 '读取指定轴的回原点模式
    ''' <summary>
    ''' 回零运动
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_home_move Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int16

    '原点锁存
    '3800 5800专用
    ''' <summary>
    ''' 设置原点锁存模式
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="enable">使能：0-禁止，1-允许</param>
    ''' <param name="logic">锁存触发方式：0-下降沿触发，1-上升沿触发</param>
    ''' <param name="source">锁存源：0-指令位置，1-反馈位置</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_homelatch_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal enable As UInt16, ByVal logic As UInt16, ByVal source As UInt16) As Int16
    ''' <summary>
    ''' 读取原点锁存模式
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="enable">使能：0-禁止，1-允许</param>
    ''' <param name="logic">锁存触发方式：0-下降沿触发，1-上升沿触发</param>
    ''' <param name="source">锁存源：0-指令位置，1-反馈位置</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_homelatch_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef enable As UInt16, ByRef logic As UInt16, ByRef source As UInt16) As Int16
    ''' <summary>
    ''' 读取原点锁存状态
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <returns>锁存状态：0-未锁存，1-已锁存</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_homelatch_flag Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int32
    ''' <summary>
    ''' 清除原点锁存状态
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_reset_homelatch_flag Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int16
    ''' <summary>
    ''' 读取原点锁存值
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_homelatch_value Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int32

    '手轮运动
    '3800 5800专用 手轮通道选择
    ''' <summary>
    ''' 设置手轮通道
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="index">手轮通道：0-高速通道，1-低速通道</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_handwheel_channel Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal index As UInt16) As Int16
    ''' <summary>
    ''' 读取手轮通道
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="index">手轮通道：0-高速通道，1-低速通道</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_handwheel_channel Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByRef index As UInt16) As Int16
    '一个手轮信号控制单个轴运动
    ''' <summary>
    ''' 设置手轮模式
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="inmode">手轮模式：0-AB相，1-脉冲+方向</param>
    ''' <param name="multi">倍率：[-100,100],负值表示反向</param>
    ''' <param name="vh">保留</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_handwheel_inmode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal inmode As UInt16, ByVal multi As Int32, ByVal vh As Double) As Int16      '设置输入手轮脉冲信号的工作方式
    ''' <summary>
    ''' 读取手轮模式
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="inmode">手轮模式：0-AB相，1-脉冲+方向</param>
    ''' <param name="multi">倍率：[-100,100],负值表示反向</param>
    ''' <param name="vh">保留</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_handwheel_inmode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef inmode As UInt16, ByRef multi As Int32, ByRef vh As Double) As Int16    '读取输入手轮脉冲信号的工作方式
    '3800 5800专用 一个手轮信号控制多轴运动
    ''' <summary>
    ''' 设置多轴跟随手轮模式
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="inmode">手轮模式：0-AB相，1-脉冲+方向</param>
    ''' <param name="AxisNum">轴数：1-8</param>
    ''' <param name="AxisList">跟随手轮轴列表</param>
    ''' <param name="multi">跟随倍率列表，[-100,100],负值表示反向</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_handwheel_inmode_extern Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal inmode As UInt16, ByVal AxisNum As UInt16, ByRef AxisList As UInt16, ByRef multi As Int32) As Int16     '设置输入手轮脉冲信号的工作方式
    ''' <summary>
    ''' 读取多轴跟随手轮模式
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="inmode">手轮模式：0-AB相，1-脉冲+方向</param>
    ''' <param name="AxisNum">轴数：1-8</param>
    ''' <param name="AxisList">跟随手轮轴列表</param>
    ''' <param name="multi">跟随倍率列表，[-100,100],负值表示反向</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_handwheel_inmode_extern Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByRef inmode As UInt16, ByRef AxisNum As UInt16, ByRef AxisList As UInt16, ByRef multi As Int32) As Int16   '读取输入手轮脉冲信号的工作方式
    '启动手轮运动
    ''' <summary>
    ''' 启动手轮运动
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_handwheel_move Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int16         '启动指定轴的手轮脉冲运动
    '编码器
    ''' <summary>
    ''' 设置编码器模式
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="mode">编码器计数模式：0-脉冲+方向，1-1倍AB相，2-1倍AB相,3-4倍AB相</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_counter_inmode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal mode As UInt16) As Int16      '设定编码器的计数方式
    ''' <summary>
    ''' 读取编码器模式
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="mode">编码器计数模式：0-脉冲+方向，1-1倍AB相，2-1倍AB相,3-4倍AB相</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_counter_inmode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef mode As UInt16) As Int16        '读取编码器的计数方式
    ''' <summary>
    ''' 读取编码器反馈值
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <returns>反馈值</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_encoder Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int32
    ''' <summary>
    ''' 设置编码器位置值
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="encoder_value">位置值</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_encoder Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal encoder_value As Int32) As Int16
    ''' <summary>
    ''' 设置EZ信号模式
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="ez_logic">有效电平：0-低电平，1-高电平</param>
    ''' <param name="ez_mode">保留：0</param>
    ''' <param name="Filter">保留：0</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_ez_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal ez_logic As UInt16, ByVal ez_mode As UInt16, ByVal Filter As Double) As Int16       '设置EZ信号
    ''' <summary>
    ''' 读取EZ信号模式
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="ez_logic">有效电平：0-低电平，1-高电平</param>
    ''' <param name="ez_mode">保留：0</param>
    ''' <param name="Filter">保留：0</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_ez_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef ez_logic As UInt16, ByRef ez_mode As UInt16, ByRef Filter As Double) As Int16     '读取设置EZ信号
    '锁存
    ''' <summary>
    ''' 设置锁存信号模式
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="ltc_logic">LTC 信号的触发方式，0：下降沿锁存，1：上升沿锁存</param>
    ''' <param name="ltc_mode">保留：0</param>
    ''' <param name="Filter">保留：0</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_ltc_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal ltc_logic As UInt16, ByVal ltc_mode As UInt16, ByVal Filter As Double) As Int16    '设置LTC信号
    ''' <summary>
    ''' 读取锁存信号模式
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="ltc_logic">LTC 信号的触发方式，0：下降沿锁存，1：上升沿锁存</param>
    ''' <param name="ltc_mode">保留：0</param>
    ''' <param name="Filter">保留：0</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_ltc_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef ltc_logic As UInt16, ByRef ltc_mode As UInt16, ByRef Filter As Double) As Int16  '读取设置LTC信号
    ''' <summary>
    ''' 设置锁存模式
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="all_enable">锁存模式：0-单轴单次锁存，1-所有轴同时单次锁存，2-单轴连续锁存，3-外部触发延时急停</param>
    ''' <param name="latch_source">锁存源：0-指令位置，1-反馈位置</param>
    ''' <param name="latch_channel">保留：0</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_latch_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal all_enable As UInt16, ByVal latch_source As UInt16, ByVal latch_channel As UInt16) As Int16     '设置锁存方式
    ''' <summary>
    ''' 读取锁存模式
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="all_enable">锁存模式：0-单轴单次锁存，1-所有轴同时单次锁存，2-单轴连续锁存，3-外部触发延时急停</param>
    ''' <param name="latch_source">锁存源：0-指令位置，1-反馈位置</param>
    ''' <param name="latch_channel">保留：0</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_latch_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef all_enable As UInt16, ByRef latch_source As UInt16, ByRef latch_channel As UInt16) As Int16
    ''' <summary>
    ''' 读取锁存值
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <returns>所存值</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_latch_value Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int32           '读取控制卡内锁存值，再连续锁存模式下读取一次控制卡内有效锁存个数将会自动减1,并将锁存值保存在PC缓冲区内
    ''' <summary>
    ''' 读取锁存次数
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <returns>锁存次数</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_latch_flag Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int16             '读取控制卡内有效锁存个数
    ''' <summary>
    ''' 复位锁存次数
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_reset_latch_flag Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int16       '复位标志
    ''' <summary>
    ''' 按索引号读取连续锁存值
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="index">索引号</param>
    ''' <returns>所存值</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_latch_value_extern Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal index As UInt16) As Int32  '按索引号读取PC缓冲区中已保存的锁存值，读的时候会将控制卡内的有效锁存值全部保存在PC缓冲区中
    ''' <summary>
    ''' 读取连续锁存次数
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <returns>锁存次数</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_latch_flag_extern Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int16            '读取PC缓冲区中已保存的已锁存值个数
    'DMC3410 5800专用 LTC端口触发延时急停时间 单位us
    ''' <summary>
    ''' 设置外部触发延时急停时间
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="time">延时急停时间，单位us</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_latch_stop_time Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal time As Int32) As Int16
    ''' <summary>
    ''' 读取外部触发延时急停时间
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="time">延时急停时间，单位us</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_latch_stop_time Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef time As Int32) As Int16
    'DMC3800 5800专用 LTC反相输出
    ''' <summary>
    ''' 设置LTC锁存反相输出模式
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="enable">使能：0-禁止，1-允许</param>
    ''' <param name="bitno">反相输出口：0-15</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_SetLtcOutMode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal enable As UInt16, ByVal bitno As UInt16) As Int16
    ''' <summary>
    ''' 读取LTC锁存反相输出模式
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="enable">使能：0-禁止，1-允许</param>
    ''' <param name="bitno">反相输出口：0-15</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_GetLtcOutMode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef enable As UInt16, ByRef bitno As UInt16) As Int16

    '单轴低速位置比较
    ''' <summary>
    ''' 设置单轴低速位置比较器配置
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="enable">使能：0-禁止，1-允许</param>
    ''' <param name="cmp_source">比较源：0-指令位置，1-反馈位置</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_compare_set_config Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal enable As UInt16, ByVal cmp_source As UInt16) As Int16       '配置比较器
    ''' <summary>
    ''' 读取单轴低速位置比较器配置
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="enable">使能：0-禁止，1-允许</param>
    ''' <param name="cmp_source">比较源：0-指令位置，1-反馈位置</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_compare_get_config Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef enable As UInt16, ByRef cmp_source As UInt16) As Int16   '读取配置比较器
    ''' <summary>
    ''' 清除位置比较位置
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_compare_clear_points Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int16          '清除所有比较点
    ''' <summary>
    ''' 添加比较位置
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="pos">比较位置</param>
    ''' <param name="dir">比较方向：0：小于等于，1：大于等于0   比较位置与当前位置比较</param>
    ''' <param name="action">触发动作功能</param>
    ''' <param name="actpara">触发动作参数</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_compare_add_point Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal pos As Int32, ByVal dir As UInt16, ByVal action As UInt16, ByVal actpara As Int32) As Int16    '添加比较点
    ''' <summary>
    ''' 读取当前比较位置
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="pos">比较位置</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_compare_get_current_point Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef pos As Int32) As Int16    '读取当前比较点
    ''' <summary>
    ''' 读取已比较点数
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="pointNum">已比较点数</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_compare_get_points_runned Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef pointNum As Int32) As Int16       '查询已经比较过的点
    ''' <summary>
    ''' 读取剩余比较空间
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="pointNum">剩余比较空间</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_compare_get_points_remained Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef pointNum As Int32) As Int16     '查询可以加入的比较点数量
    '二维低速位置比较
    ''' <summary>
    ''' 设置二维比较器配置
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="enable">使能：0-禁止，1-允许</param>
    ''' <param name="cmp_source">比较源：0-指令位置，1-反馈位置</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_compare_set_config_extern Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal enable As UInt16, ByVal cmp_source As UInt16) As Int16           '配置比较器
    ''' <summary>
    ''' 读取二维比较器配置
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="enable">使能：0-禁止，1-允许</param>
    ''' <param name="cmp_source">比较源：0-指令位置，1-反馈位置</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_compare_get_config_extern Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByRef enable As UInt16, ByRef cmp_source As UInt16) As Int16           '读取配置比较器
    ''' <summary>
    ''' 清除二维比较位置
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_compare_clear_points_extern Lib "LTDMC.dll" (ByVal CardNo As UInt16) As Int16          '清除所有比较点
    ''' <summary>
    ''' 添加二维比较位置
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="pos">比较位置（xpos,ypos)</param>
    ''' <param name="dir">比较方向（x_dir,y_dir)</param>
    ''' <param name="action">触发动作功能</param>
    ''' <param name="actpara">触发动作参数</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_compare_add_point_extern Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByRef axis As UInt16, ByRef pos As Int32, ByRef dir As UInt16, ByVal action As UInt16, ByVal actpara As Int32) As Int16          '添加两轴位置比较点
    ''' <summary>
    ''' 读取当前比较位置
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="pos">比较位置（xpos,ypos)</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_compare_get_current_point_extern Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByRef pos As Int32) As Int16    '读取当前比较点
    ''' <summary>
    ''' 读取已比较点数
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="pointNum">已比较点数</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_compare_get_points_runned_extern Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByRef pointNum As Int32) As Int16       '查询已经比较过的点
    ''' <summary>
    ''' 读取剩余比较空间
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="pointNum">剩余比较空间</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_compare_get_points_remained_extern Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByRef pointNum As Int32) As Int16      '查询可以加入的二维比较点数量

    '单轴高速位置比较函数
    ''' <summary>
    ''' 设置高速比较模式
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="hcmp">高速比较器号：0-3</param>
    ''' <param name="cmp_mode">比较模式：0-禁止，1-等于，2-小于，3-大于，4-队列，5-线性</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_hcmp_set_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal hcmp As UInt16, ByVal cmp_mode As UInt16) As Int16
    ''' <summary>
    ''' 读取高速比较模式
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="hcmp">高速比较器号：0-3</param>
    ''' <param name="cmp_mode">比较模式：0-禁止，1-等于，2-小于，3-大于，4-队列，5-线性</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_hcmp_get_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal hcmp As UInt16, ByRef cmp_mode As UInt16) As Int16
    ''' <summary>
    ''' 设置高速比较参数
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="hcmp">高速比较器号：0-3</param>
    ''' <param name="axis">比较轴号：0-7</param>
    ''' <param name="cmp_source">比较源：0-指令位置，1-反馈位置</param>
    ''' <param name="cmp_logic">比较输出状态：0-低电平，1-高电平</param>
    ''' <param name="time">脉冲时间，单位us,最小1us</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_hcmp_set_config Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal hcmp As UInt16, ByVal axis As UInt16, ByVal cmp_source As UInt16, ByVal cmp_logic As UInt16, ByVal time As Int32) As Int16
    ''' <summary>
    ''' 读取高速比较参数
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="hcmp">高速比较器号：0-3</param>
    ''' <param name="axis">比较轴号：0-7</param>
    ''' <param name="cmp_source">比较源：0-指令位置，1-反馈位置</param>
    ''' <param name="cmp_logic">比较输出状态：0-低电平，1-高电平</param>
    ''' <param name="time">脉冲时间，单位us,最小1us</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_hcmp_get_config Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal hcmp As UInt16, ByRef axis As UInt16, ByRef cmp_source As UInt16, ByRef cmp_logic As UInt16, ByRef time As Int32) As Int16
    ''' <summary>
    ''' 添加高速比较位置
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="hcmp">高速比较器号：0-3</param>
    ''' <param name="cmp_pos">比较位置</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_hcmp_add_point Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal hcmp As UInt16, ByVal cmp_pos As Int32) As Int16
    ''' <summary>
    ''' 设置高速比较线性模式参数
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="hcmp">高速比较器号：0-3</param>
    ''' <param name="Increment">比较位置增量值</param>
    ''' <param name="Count">比较次数</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_hcmp_set_liner Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal hcmp As UInt16, ByVal Increment As Int32, ByVal Count As Int32) As Int16
    ''' <summary>
    ''' 读取高速比较线性模式参数
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="hcmp">高速比较器号：0-3</param>
    ''' <param name="Increment">比较位置增量值</param>
    ''' <param name="Count">比较次数</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_hcmp_get_liner Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal hcmp As UInt16, ByRef Increment As Int32, ByRef Count As Int32) As Int16
    ''' <summary>
    ''' 读取高速比较当前状态
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="hcmp">高速比较器号：0-3</param>
    ''' <param name="remained_points">剩余可用比较点数</param>
    ''' <param name="current_point">当前比较位置</param>
    ''' <param name="runned_points">已比较点数</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_hcmp_get_current_state Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal hcmp As UInt16, ByRef remained_points As Int32, ByRef current_point As Int32, ByRef runned_points As Int32) As Int16
    ''' <summary>
    ''' 清除高速比较位置
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="hcmp">高速比较器号：0-3</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_hcmp_clear_points Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal hcmp As UInt16) As Int16
    ''' <summary>
    ''' 读高速比较输出口
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="hcmp">高速比较器号：0-3</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_read_cmp_pin Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal hcmp As UInt16) As Int16
    ''' <summary>
    ''' 写高速比较输出口
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="hcmp">高速比较器号：0-3</param>
    ''' <param name="on_off">输出口状态：0-低电平，1-高电平</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_write_cmp_pin Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal hcmp As UInt16, ByVal on_off As UInt16) As Int16

    '通用IO
    ''' <summary>
    ''' 按位读输入口
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="bitno">IO口号：0-31</param>
    ''' <returns>输入口状态：0-低电平，1-高电平</returns>
    ''' <remarks></remarks>
    Declare Function dmc_read_inbit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal bitno As UInt16) As Int16            '读取输入口的状态
    ''' <summary>
    ''' 按位写输出口
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="bitno">IO口号：0-31</param>
    ''' <param name="on_off">输出状态：0-低电平，1-高电平</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_write_outbit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal bitno As UInt16, ByVal on_off As UInt16) As Int16         '设置输出口的状态
    ''' <summary>
    ''' 按位读输出口
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="bitno">IO口号：0-31</param>
    ''' <returns>输出口状态：0-低电平，1-高电平</returns>
    ''' <remarks></remarks>
    Declare Function dmc_read_outbit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal bitno As UInt16) As Int16           '读取输出口的状态
    ''' <summary>
    ''' 按端口读输入口
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="portno">端口号：0-1</param>
    ''' <returns>输入口状态：bit0-bit31表示in0-in31,位值：0-低电平，1-高电平</returns>
    ''' <remarks></remarks>
    Declare Function dmc_read_inport Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal portno As UInt16) As UInt32     '读取输入端口的值
    ''' <summary>
    ''' 按端口读输出口
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="portno">端口号：0</param>
    ''' <returns>输出口状态：bit0-bit31表示out0-out31,位值：0-低电平，1-高电平</returns>
    ''' <remarks></remarks>
    Declare Function dmc_read_outport Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal portno As UInt16) As UInt32            '读取输出端口的值
    ''' <summary>
    ''' 按端口写输出口
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="portno">端口号：0</param>
    ''' <param name="outport_val">输出口状态：bit0-bit31表示out0-out31,位值：0-低电平，1-高电平</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_write_outport Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal portno As UInt16, ByVal outport_val As UInt32) As Int16       '设置输出端口的值
    '3800 5800专用 IO辅助功能函数
    ''' <summary>
    ''' IO翻转
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="bitno">IO口号：0-31</param>
    ''' <param name="reverse_time">翻转时间，单位s</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_reverse_outbit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal bitno As UInt16, ByVal reverse_time As Double) As Int16
    ''' <summary>
    ''' 设置IO计数模式
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="bitno">IO口号：0-31</param>
    ''' <param name="mode">IO计数模式0：禁用，1：上升沿计数，2：下降沿计数</param>
    ''' <param name="Filter">滤波时间，单位s</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_io_count_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal bitno As UInt16, ByVal mode As UInt16, ByVal Filter As Double) As Int16
    ''' <summary>
    ''' 读取IO计数模式
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="bitno">IO口号：0-31</param>
    ''' <param name="mode">IO计数模式0：禁用，1：上升沿计数，2：下降沿计数</param>
    ''' <param name="Filter">滤波时间，单位s</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_io_count_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal bitno As UInt16, ByRef mode As UInt16, ByRef Filter As Double) As Int16
    ''' <summary>
    ''' 设置IO计数值
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="bitno">IO口号：0-31</param>
    ''' <param name="CountValue">计数值</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_io_count_value Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal bitno As UInt16, ByVal CountValue As Int32) As Int16
    ''' <summary>
    ''' 读取IO计数值
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="bitno">IO口号：0-31</param>
    ''' <param name="CountValue">计数值</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_io_count_value Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal bitno As UInt16, ByRef CountValue As Int32) As Int16

    '伺服专用IO
    ''' <summary>
    ''' 设置INP模式  INP信号会影响到轴的运动状态（check_done)
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="enable">使能状态：0-禁止，1-允许</param>
    ''' <param name="inp_logic">有效电平：0-低电平，1-高电平</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_inp_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal enable As UInt16, ByVal inp_logic As UInt16) As Int16      '设置INP信号
    ''' <summary>
    ''' 读取INP模式  INP信号会影响到轴的运动状态（check_done)
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="enable">使能状态：0-禁止，1-允许</param>
    ''' <param name="inp_logic">有效电平：0-低电平，1-高电平</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_inp_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef enable As UInt16, ByRef inp_logic As UInt16) As Int16  '读取设置INP信号
    ''' <summary>
    ''' 设置ALM模式
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="enable">使能状态：0-禁止，1-允许</param>
    ''' <param name="alm_logic">有效电平：0-低电平，1-高电平</param>
    ''' <param name="alm_action">制动方式：0-立即停止</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_alm_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal enable As UInt16, ByVal alm_logic As UInt16, ByVal alm_action As UInt16) As Int16 '设置ALM信号
    ''' <summary>
    ''' 读取ALM模式
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="enable">使能状态：0-禁止，1-允许</param>
    ''' <param name="alm_logic">有效电平：0-低电平，1-高电平</param>
    ''' <param name="alm_action">制动方式：0-立即停止</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_alm_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef enable As UInt16, ByRef alm_logic As UInt16, ByRef alm_action As UInt16) As Int16     '读取设置ALM信号
    ''' <summary>
    ''' 写伺服使能信号输出口
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="on_off">输出状态：0-低电平，1-高电平</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_write_sevon_pin Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal on_off As UInt16) As Int16       '输出SEVON信号
    ''' <summary>
    ''' 读伺服使能信号输出口
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <returns>输出状态：0-低电平，1-高电平</returns>
    ''' <remarks></remarks>
    Declare Function dmc_read_sevon_pin Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int16         '读取SEVON信号
    ''' <summary>
    ''' 读伺服准备好信号输入口
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <returns>输入状态：0-低电平，1-高电平</returns>
    ''' <remarks></remarks>
    Declare Function dmc_read_rdy_pin Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int16           '读取RDY状态
    ''' <summary>
    ''' 写伺服误差清除输出口
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="on_off">输出状态：0-低电平，1-高电平</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_write_erc_pin Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal on_off As UInt16) As Int16       '控制ERC信号输出 
    ''' <summary>
    ''' 读伺服误差清除输出口
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <returns>输出状态：0-低电平，1-高电平</returns>
    ''' <remarks></remarks>
    Declare Function dmc_read_erc_pin Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int16       '读取控制ERC信号输出 
    '运动状态
    ''' <summary>
    ''' 读取当前速度
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <returns>速度值</returns>
    ''' <remarks></remarks>
    Declare Function dmc_read_current_speed Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Double      '读取指定轴的当前速度
    ''' <summary>
    ''' 读取当前插补速度
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <returns>插补速度</returns>
    ''' <remarks></remarks>
    Declare Function dmc_read_vector_speed Lib "LTDMC.dll" (ByVal CardNo As UInt16) As Double    '读取当前卡的插补速度
    ''' <summary>
    ''' 读取当前指令位置
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <returns>位置值</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_position Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int32      '读取指定轴的当前位置
    ''' <summary>
    ''' 设置指令位置
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="current_position">位置值</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_position Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal current_position As Int32) As Int16   '设定指定轴的当前位置
    ''' <summary>
    ''' 检测轴的运动状态
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <returns>运动状态：0-运动，1-停止</returns>
    ''' <remarks></remarks>
    Declare Function dmc_check_done Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int16     '读取指定轴的运动状态
    ''' <summary>
    ''' 检测单段插补运动状态
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <returns>运动状态：0-运动，1-停止</returns>
    ''' <remarks></remarks>
    Declare Function dmc_check_done_multicoor Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16) As Int16
    ''' <summary>
    ''' 轴IO状态
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <returns>轴IO状态：0 ALM 1 EL+ 2 EL- 3 EMG 4 ORG 6 SL+ 7 SL- 8 INP 9 EZ 10 RDY 11 DSTP</returns>
    ''' <remarks></remarks>
    Declare Function dmc_axis_io_status Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As UInt32    '读取指定轴有关运动信号的状态
    ''' <summary>
    ''' 停止单轴运动
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="stop_mode">停止模式：0-减速停止，1-立即停止</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_stop Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal stop_mode As UInt16) As Int16       '单轴停止
    ''' <summary>
    ''' 停止单段插补运动
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="stop_mode">停止模式：0-减速停止，1-立即停止</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_stop_multicoor Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal stop_mode As UInt16) As Int16
    ''' <summary>
    ''' 急停所有轴运动
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_emg_stop Lib "LTDMC.dll" (ByVal CardNo As UInt16) As Int16      '紧急停止所有轴
    ''' <summary>
    ''' 读取目标位置
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <returns>目标位置值</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_target_position Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int32      '读取目标位置
    '检测轴到位状态
    ''' <summary>
    ''' 设置误差带
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="factor">编码器系数</param>
    ''' <param name="pos_error">误差带</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_factor_error Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal factor As Double, ByVal pos_error As Int32) As Int16
    ''' <summary>
    ''' 读取误差带
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="factor">编码器系数</param>
    ''' <param name="pos_error">误差带</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_factor_error Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef factor As Double, ByRef pos_error As Int32) As Int16
    ''' <summary>
    ''' 检测指令位置到位 超时100ms
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <returns>到位状态：0-不在误差带范围内，1-在误差带范围内</returns>
    ''' <remarks></remarks>
    Declare Function dmc_check_success_pulse Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int16
    ''' <summary>
    ''' 检测反馈位置到位 超时100ms
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <returns>到位状态：0-不在误差带范围内，1-在误差带范围内</returns>
    ''' <remarks></remarks>
    Declare Function dmc_check_success_encoder Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int16

    '3800 5800专用 主卡与接线盒通讯状态
    ''' <summary>
    ''' 读取通讯状态
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="state">状态：0-连接，1-断开</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_LinkState Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByRef state As UInt16) As Int16      '连接状态

    'DMC5410 DMC5800专用 脉冲当量操作 连续插补功能
    ''' <summary>
    ''' 读取运动模式
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="run_mode">运动模式</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_axis_run_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef run_mode As UInt16) As Int16       '轴运动模式
    ''' <summary>
    ''' 读取脉冲当量
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="equiv">脉冲当量值</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_equiv Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef equiv As Double) As Int16       '脉冲当量
    ''' <summary>
    ''' 设置脉冲当量
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="equiv">脉冲当量值</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_equiv Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal equiv As Double) As Int16
    ''' <summary>
    ''' 设置反向间隙
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="backlash">反向间隙值</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_backlash_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal backlash As Double) As Int16  '反向间隙
    ''' <summary>
    ''' 读取反向间隙值
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="backlash">反向间隙值</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_backlash_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef backlash As Double) As Int16
    ''' <summary>
    ''' 设置指令位置值
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="pos">位置值</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_position_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal pos As Double) As Int16    '当前指令位置
    ''' <summary>
    ''' 读取指令位置值
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="pos">指令位置值</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_position_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef pos As Double) As Int16
    ''' <summary>
    ''' 设置编码器（反馈）位置值
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="pos">位置值</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_encoder_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal pos As Double) As Int16   '当前反馈位置
    ''' <summary>
    ''' 读取编码器（反馈）位置值
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="pos">位置值</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_encoder_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef pos As Double) As Int16
    ''' <summary>
    ''' 定长运动
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="Dist">目标位置</param>
    ''' <param name="posi_mode">位置模式：0-相对，1-绝对</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_pmove_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal Dist As Double, ByVal posi_mode As UInt16) As Int16  '定长
    ''' <summary>
    ''' 单段直线插补
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="AxisNum">轴数：2-6</param>
    ''' <param name="AxisList">轴列表</param>
    ''' <param name="Target_Pos">目标位置</param>
    ''' <param name="posi_mode">位置模式：0-相对，1-绝对</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_line_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal AxisNum As UInt16, ByRef AxisList As UInt16, ByRef Target_Pos As Double, ByVal posi_mode As UInt16) As Int16   '单段直线
    ''' <summary>
    ''' 单段插补圆心圆弧/螺旋线/渐开线
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="AxisNum">轴数：2-6</param>
    ''' <param name="AxisList">轴列表</param>
    ''' <param name="Target_Pos">目标位置</param>
    ''' <param name="Cen_Pos">圆心位置</param>
    ''' <param name="Arc_Dir">圆弧方向：0-顺时针，1-逆时针</param>
    ''' <param name="Circle">圆弧圈数</param>
    ''' <param name="posi_mode">位置模式：0-相对，1-绝对</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_arc_move_center_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal AxisNum As UInt16, ByRef AxisList As UInt16, ByRef Target_Pos As Double, ByRef Cen_Pos As Double, ByVal Arc_Dir As UInt16, ByVal Circle As Int32, ByVal posi_mode As UInt16) As Int16    '圆心终点式圆弧/螺旋线/渐开线
    ''' <summary>
    ''' 单段插补半径圆弧/螺旋线
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="AxisNum">轴数：2-6</param>
    ''' <param name="AxisList">轴列表</param>
    ''' <param name="Target_Pos">目标位置</param>
    ''' <param name="Arc_Radius">半径值</param>
    ''' <param name="Arc_Dir">圆弧方向：0-顺时针，1-逆时针</param>
    ''' <param name="Circle">圆弧圈数</param>
    ''' <param name="posi_mode">位置模式：0-相对，1-绝对</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_arc_move_radius_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal AxisNum As UInt16, ByRef AxisList As UInt16, ByRef Target_Pos As Double, ByVal Arc_Radius As Double, ByVal Arc_Dir As UInt16, ByVal Circle As Int32, ByVal posi_mode As UInt16) As Int16   '半径终点式圆弧/螺旋线
    ''' <summary>
    ''' 连续插补三点圆弧（包括空间）/螺旋线
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="AxisNum">轴数：2-6</param>
    ''' <param name="AxisList">轴列表</param>
    ''' <param name="Target_Pos">目标位置</param>
    ''' <param name="Mid_Pos">中间位置</param>
    ''' <param name="Circle">圈数：不小于0时表示基于轴列表前两轴平面的螺旋线，小于0时绝对值减1表示空间圆弧圈数</param>
    ''' <param name="posi_mode">位置模式：0-相对，1-绝对</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_arc_move_3points_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal AxisNum As UInt16, ByRef AxisList As UInt16, ByRef Target_Pos As Double, ByRef Mid_Pos As Double, ByVal Circle As Int32, ByVal posi_mode As UInt16) As Int16    '三点式圆弧/螺旋线
    ''' <summary>
    ''' 矩形区域插补
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="AxisNum">轴数：2</param>
    ''' <param name="AxisList">轴列表</param>
    ''' <param name="Target_Pos">对角位置</param>
    ''' <param name="Mark_Pos">矩形方向标记位置</param>
    ''' <param name="Count">行数/圈数</param>
    ''' <param name="rect_mode">矩形插补模式:0-逐行，1-渐开线</param>
    ''' <param name="posi_mode">位置模式：0-相对，1-绝对</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_rectangle_move_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal AxisNum As UInt16, ByRef AxisList As UInt16, ByRef Target_Pos As Double, ByRef Mark_Pos As Double, ByVal Count As Long, ByVal rect_mode As UInt16, ByVal posi_mode As UInt16) As Int16
    ''' <summary>
    ''' 读取当前速度，轴参与插补读的是插补速度
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="current_speed">当前速度值</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_read_current_speed_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef current_speed As Double) As Int16  '轴当前运行速度
    ''' <summary>
    ''' 设置单段插补速度参数
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="Min_Vel">起始速度</param>
    ''' <param name="Max_Vel">运行速度</param>
    ''' <param name="Tacc">加速时间，单位s</param>
    ''' <param name="Tdec">减速时间，单位s</param>
    ''' <param name="Stop_vel">停止速度</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_vector_profile_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal Min_Vel As Double, ByVal Max_Vel As Double, ByVal Tacc As Double, ByVal Tdec As Double, ByVal Stop_vel As Double) As Int16    '单段插补速度参数
    ''' <summary>
    ''' 读取单段插补速度参数
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="Min_Vel">起始速度</param>
    ''' <param name="Max_Vel">运行速度</param>
    ''' <param name="Tacc">加速时间，单位s</param>
    ''' <param name="Tdec">减速时间，单位s</param>
    ''' <param name="Stop_vel">停止速度</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_vector_profile_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByRef Min_Vel As Double, ByRef Max_Vel As Double, ByRef Tacc As Double, ByRef Tdec As Double, ByRef Stop_vel As Double) As Int16
    ''' <summary>
    ''' 设置单轴速度参数
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="Min_Vel">起始速度</param>
    ''' <param name="Max_Vel">运行速度</param>
    ''' <param name="Tacc">加速时间，单位s</param>
    ''' <param name="Tdec">减速时间，单位s</param>
    ''' <param name="Stop_vel">停止速度</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_profile_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal Min_Vel As Double, ByVal Max_Vel As Double, ByVal Tacc As Double, ByVal Tdec As Double, ByVal Stop_vel As Double) As Int16   '单轴速度参数
    ''' <summary>
    ''' 读取单轴速度参数
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="Min_Vel">起始速度</param>
    ''' <param name="Max_Vel">运行速度</param>
    ''' <param name="Tacc">加速时间，单位s</param>
    ''' <param name="Tdec">减速时间，单位s</param>
    ''' <param name="Stop_vel">停止速度</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_profile_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef Min_Vel As Double, ByRef Max_Vel As Double, ByRef Tacc As Double, ByRef Tdec As Double, ByRef Stop_vel As Double) As Int16
    ''' <summary>
    ''' 在线变位
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="New_pos">新位置值</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_reset_target_position_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal New_pos As Double) As Int16   '在线变位
    ''' <summary>
    ''' 强制变位
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="New_pos">新位置值</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_update_target_position_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal New_pos As Double) As Int16   '强行变位
    ''' <summary>
    ''' 在线变速
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="New_vel">新速度值</param>
    ''' <param name="Taccdec">新加减速时间，单位s</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_change_speed_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByVal New_vel As Double, ByVal Taccdec As Double) As Int16           '在线变速

    '连续插补
    ''' <summary>
    ''' 打开连续插补缓冲区
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="AxisNum">轴数：2-6</param>
    ''' <param name="AxisList">轴列表：AxisList[0]-X,AxisList[1]-Y,AxisList[2]-Z,AxisList[3]-U,AxisList[4]-V,AxisList[5]-W</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_open_list Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal AxisNum As UInt16, ByRef AxisList As UInt16) As Int16     '打开连续缓存区
    ''' <summary>
    ''' 关闭连续插补缓冲区
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_close_list Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16) As Int16     '关闭连续缓存区
    ''' <summary>
    ''' 停止连续插补
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="stop_mode">停止模式：0-减速停止，1-立即停止</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_stop_list Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal stop_mode As UInt16) As Int16    '连续插补中停止
    ''' <summary>
    ''' 暂停连续插补
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_pause_list Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16) As Int16     '连续插补中暂停
    ''' <summary>
    ''' 启动连续插补
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_start_list Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16) As Int16    '开始连续插补
    ''' <summary>
    ''' 读取剩余缓冲区空间，调用插补指令请请先判断是否有剩余空间
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <returns>剩余空间</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_remain_space Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16) As Int32     '查连续插补剩余缓存数
    ''' <summary>
    ''' 读取当前段号
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <returns>当前段号</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_read_current_mark Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16) As Int32  '读取当前连续插补段的标号
    ''' <summary>
    ''' 设置拐角混合运动自动平滑过度使能状态
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="enable">使能状态：0-禁用，1-允许</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_set_blend Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal enable As UInt16) As Int16    'blend拐角过度模式
    ''' <summary>
    ''' 读取拐角混合运动自动平滑过度使能状态
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="enable">使能状态：0-禁用，1-允许</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_get_blend Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByRef enable As UInt16) As Int16
    ''' <summary>
    ''' 设置插补速度  打开缓冲区前请先预设参数，确定加减速时间，打开缓冲区之后加减速时间参数保存在缓冲区中，执行时Blend失效，速度不连续
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="Min_Vel">保留</param>
    ''' <param name="Max_Vel">最大运行速度</param>
    ''' <param name="Tacc">加减速时间，单位s</param>
    ''' <param name="Tdec">保留</param>
    ''' <param name="Stop_vel">保留</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_set_profile_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal Min_Vel As Double, ByVal Max_Vel As Double, ByVal Tacc As Double, ByVal Tdec As Double, ByVal Stop_vel As Double) As Int16   '设置连续插补速度

    ''' <summary>
    ''' 设置插补速度
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="Max_Vel">最大运行速度</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_set_speed_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16,  ByVal Max_Vel As Double) As Int16   '设置连续插补速度

    ''' <summary>
    ''' 设置连续插补加减速时间，，打开缓冲区之后加减速时间参数保存在缓冲区中，执行时Blend失效，速度不连续
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="Taccdec">加减速时间，单位s</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_set_taccdec Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal Taccdec As Double) As Int16  
    ''' <summary>
    ''' 设置S型速度曲线参数
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="s_mode">保留：0</param>
    ''' <param name="s_para">S段时间，单位s</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_set_s_profile Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal s_mode As UInt16, ByVal s_para As Double) As Int16      '设置连续插补平滑时间
    ''' <summary>
    ''' 读取S型速度曲线参数
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="s_mode">保留：0</param>
    ''' <param name="s_para">S段时间，单位s</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_get_s_profile Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal s_mode As UInt16, ByRef s_para As Double) As Int16
    ''' <summary>
    ''' 预设单段速度倍率
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="Percent">速度倍率：0-1</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_set_override Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal Percent As Double) As Int16   '设置每段速度比例  缓冲区指令
    ''' <summary>
    ''' 在线调整速度倍率
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="Percent">速度倍率：0-1</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_change_speed_ratio Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal Percent As Double) As Int16
    ''' <summary>
    ''' 读取连续插补状态
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <returns>连续插补状态：0-运行，1-暂停，2-正常停止，3-未启动，4-空闲</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_get_run_state Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16) As Int16
    ''' <summary>
    ''' 读取连续插补运动状态
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <returns>运动状态：0-运行，1-停止</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_check_done Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16) As Int16
    ''' <summary>
    ''' 等待输入
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="bitno">IO口号：0-31</param>
    ''' <param name="on_off">输入口有效状态：0-低电平，1-高电平</param>
    ''' <param name="TimeOut">超时时间，单位s</param>
    ''' <param name="mark">段号：0-自动递增</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_wait_input Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal bitno As UInt16, ByVal on_off As UInt16, ByVal TimeOut As Double, ByVal mark As Int32) As Int16   '设置连续插补等待输入
    ''' <summary>
    ''' 相对起点IO滞后输出
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="bitno">输出口号：0-31</param>
    ''' <param name="on_off">输出状态：0-低电平，1-高电平</param>
    ''' <param name="delay_value">滞后值</param>
    ''' <param name="delay_mode">滞后模式：0-时间，1-距离</param>
    ''' <param name="ReverseTime">翻转时间，单位s</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_delay_outbit_to_start Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal bitno As UInt16, ByVal on_off As UInt16, ByVal delay_value As Double, ByVal delay_mode As UInt16, ByVal ReverseTime As Double) As Int16    '相对于轨迹段起点IO滞后输出
    ''' <summary>
    ''' 相对终点IO滞后输出
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="bitno">输出口号：0-31</param>
    ''' <param name="on_off">输出状态：0-低电平，1-高电平</param>
    ''' <param name="delay_time">滞后时间，单位s</param>
    ''' <param name="ReverseTime">翻转时间，单位s</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_delay_outbit_to_stop Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal bitno As UInt16, ByVal on_off As UInt16, ByVal delay_time As Double, ByVal ReverseTime As Double) As Int16   '相对于轨迹段终点IO滞后输出
    ''' <summary>
    ''' 相对终点IO提前输出
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="bitno">输出口号：0-31</param>
    ''' <param name="on_off">输出状态：0-低电平，1-高电平</param>
    ''' <param name="ahead_value">提前量</param>
    ''' <param name="ahead_mode">提前模式：0-时间，1-距离</param>
    ''' <param name="ReverseTime">翻转时间，单位s</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_ahead_outbit_to_stop Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal bitno As UInt16, ByVal on_off As UInt16, ByVal ahead_value As Double, ByVal ahead_mode As UInt16, ByVal ReverseTime As Double) As Int16  '相对轨迹段终点IO提前输出
    ''' <summary>
    ''' 相对起点IO精确滞后距离输出
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="cmp_no">高速比较输出口号：0-3</param>
    ''' <param name="on_off">输出状态：0-低电平，1-高电平</param>
    ''' <param name="map_axis">关联轴号：0-X,1-Y,2-Z,3-U,4-V,5-W</param>
    ''' <param name="delay_dist">滞后距离</param>
    ''' <param name="pos_source">位置源：0-指令位置，1-反馈位置</param>
    ''' <param name="ReverseTime">翻转时间,单位us,至少1us</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_accurate_outbit_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal cmp_no As UInt16, ByVal on_off As UInt16, ByVal map_axis As UInt16, ByVal delay_dist As Double, ByVal pos_source As UInt16, ByVal ReverseTime As Double) As Int16     '确定位置精确输出
    ''' <summary>
    ''' 连续插补立即输出IO
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="bitno">IO口号：0-31</param>
    ''' <param name="on_off">输出状态：0-低电平，1-高电平</param>
    ''' <param name="ReverseTime">翻转时间，单位s</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_write_outbit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal bitno As UInt16, ByVal on_off As UInt16, ByVal ReverseTime As Double) As Int16     '缓冲区立即IO输出
    ''' <summary>
    ''' 清除IO段内未执行完的动作，比如延时翻转
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="IoMask">IO口标记：bit0-bit31代表out0-out31,位值：0-不清除，1-清除</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_clear_io_action Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal IoMask As UInt32) As Int16   '清除段内未执行完的IO动作
    ''' <summary>
    ''' 设置连续插补暂停时输出
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="action">执行动作：0-不动作，1-暂停时输出，运行时不恢复，2-暂停时输出，运行时恢复，3-停止时输出，运行时不恢复</param>
    ''' <param name="mask">IO口标记：bit0-bit31代表out0-out31,位值：0-不参与动作，1-参与动作</param>
    ''' <param name="state">IO口状态：bit0-bit31代表out0-out31,位值：0-低电平，1-高电平</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_set_pause_output Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal action As UInt16, ByVal mask As Int32, ByVal state As Int32) As Int16   '暂停时IO输出 action 0, 不工作；1， 暂停时输出io_state; 2 暂停时输出io_state, 继续运行时首先恢复原来的io; 3,在2的基础上，停止时也生效
    ''' <summary>
    ''' 读取连续插补暂停时输出
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="action">执行动作：0-不动作，1-暂停时输出，运行时不恢复，2-暂停时输出，运行时恢复，3-停止时输出，运行时不恢复</param>
    ''' <param name="mask">IO口标记：bit0-bit31代表out0-out31,位值：0-不参与动作，1-参与动作</param>
    ''' <param name="state">IO口状态：bit0-bit31代表out0-out31,位值：0-低电平，1-高电平</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_get_pause_output Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByRef action As UInt16, ByRef mask As Int32, ByRef state As Int32) As Int16
    ''' <summary>
    ''' 连续插补暂停延时
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="delay_time">延时时间，单位s</param>
    ''' <param name="mark">段号：0-自动递增</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_delay Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal delay_time As Double, ByVal mark As Int32) As Int16    '添加延时指令
    ''' <summary>
    ''' 连续插补直线插补
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="AxisNum">轴数：2-6</param>
    ''' <param name="AxisList">轴列表</param>
    ''' <param name="Target_Pos">目标位置</param>
    ''' <param name="posi_mode">位置模式：0-相对，1-绝对</param>
    ''' <param name="mark">段号：0-自动递增</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_line_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal AxisNum As UInt16, ByRef AxisList As UInt16, ByRef Target_Pos As Double, ByVal posi_mode As UInt16, ByVal mark As Int32) As Int16    '连续插补直线
    ''' <summary>
    ''' 连续插补圆心圆弧/螺旋线/渐开线
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="AxisNum">轴数：2-6</param>
    ''' <param name="AxisList">轴列表</param>
    ''' <param name="Target_Pos">目标位置</param>
    ''' <param name="Cen_Pos">圆心位置</param>
    ''' <param name="Arc_Dir">圆弧方向：0-顺时针，1-逆时针</param>
    ''' <param name="Circle">圆弧圈数:负值表示同心圆</param>
    ''' <param name="posi_mode">位置模式</param>
    ''' <param name="mark">段号：0-自动递增</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_arc_move_center_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal AxisNum As UInt16, ByRef AxisList As UInt16, ByRef Target_Pos As Double, ByRef Cen_Pos As Double, ByVal Arc_Dir As UInt16, ByVal Circle As Int32, ByVal posi_mode As UInt16, ByVal mark As Int32) As Int16    '圆心终点式圆弧/螺旋线/渐开线
    ''' <summary>
    ''' 连续插补半径圆弧/螺旋线
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="AxisNum">轴数：2-6</param>
    ''' <param name="AxisList">轴列表</param>
    ''' <param name="Target_Pos">目标位置</param>
    ''' <param name="Arc_Radius">半径值</param>
    ''' <param name="Arc_Dir">圆弧方向：0-顺时针，1-逆时针</param>
    ''' <param name="Circle">圆弧圈数:负值表示同心圆圈数</param>
    ''' <param name="posi_mode">位置模式：0-相对，1-绝对</param>
    ''' <param name="mark">段号：0-自动递增</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_arc_move_radius_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal AxisNum As UInt16, ByRef AxisList As UInt16, ByRef Target_Pos As Double, ByVal Arc_Radius As Double, ByVal Arc_Dir As UInt16, ByVal Circle As Int32, ByVal posi_mode As UInt16, ByVal mark As Int32) As Int16   '半径终点式圆弧/螺旋线
    ''' <summary>
    ''' 连续插补三点圆弧（包括空间）/螺旋线
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="AxisNum">轴数：2-6</param>
    ''' <param name="AxisList">轴列表</param>
    ''' <param name="Target_Pos">目标位置</param>
    ''' <param name="Mid_Pos">中间位置</param>
    ''' <param name="Circle">圈数：不小于0时表示基于轴列表前两轴平面的螺旋线，小于0时绝对值减1表示空间圆弧圈数</param>
    ''' <param name="posi_mode">位置模式：0-相对，1-绝对</param>
    ''' <param name="mark">段号：0-自动递增</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_arc_move_3points_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal AxisNum As UInt16, ByRef AxisList As UInt16, ByRef Target_Pos As Double, ByRef Mid_Pos As Double, ByVal Circle As Int32, ByVal posi_mode As UInt16, ByVal mark As Int32) As Int16    '三点式圆弧/螺旋线
    ''' <summary>
    ''' 设置渐开线插补模式
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="mode">模式：0-不封闭，1-封闭</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_set_involute_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal mode As UInt16) As Int16
    ''' <summary>
    ''' 读取渐开线插补模式
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="mode">封闭圆模式：0-不封闭，1-封闭</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_get_involute_mode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByRef mode As UInt16) As Int16
    ''' <summary>
    ''' 矩形区域插补
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="AxisNum">轴数：2</param>
    ''' <param name="AxisList">轴列表</param>
    ''' <param name="Target_Pos">对角位置</param>
    ''' <param name="Mark_Pos">矩形方向标记位置</param>
    ''' <param name="Count">行数/圈数</param>
    ''' <param name="rect_mode">矩形插补模式:0-逐行，1-渐开线</param>
    ''' <param name="posi_mode">位置模式：0-相对，1-绝对</param>
    ''' <param name="mark">段号：0-自动递增，>0按设置值设置段号</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_rectangle_move_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal AxisNum As UInt16, ByRef AxisList As UInt16, ByRef Target_Pos As Double, ByRef Mark_Pos As Double, ByVal Count As Long, ByVal rect_mode As UInt16, ByVal posi_mode As UInt16, ByVal mark As Long) As Int16
    ''' <summary>
    ''' 计算圆心圆弧弧长
    ''' </summary>
    ''' <param name="start_pos">起始位置</param>
    ''' <param name="target_pos">目标位置</param>
    ''' <param name="cen_pos">圆形位置</param>
    ''' <param name="arc_dir">圆弧方向</param>
    ''' <param name="circle">圈数</param>
    ''' <param name="ArcLength">弧长</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_calculate_arclength_center Lib "LTDMC.dll" (ByRef start_pos As Double, ByRef target_pos As Double, ByRef cen_pos As Double, ByVal arc_dir As UInt16, ByVal circle As Double, ByRef ArcLength As Double) As Int16
    ''' <summary>
    ''' 计算三点圆弧弧长
    ''' </summary>
    ''' <param name="start_pos">起始位置</param>
    ''' <param name="target_pos">目标位置</param>
    ''' <param name="cen_pos">圆形位置</param>
    ''' <param name="circle">圈数</param>
    ''' <param name="ArcLength">弧长</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_calculate_arclength_3point Lib "LTDMC.dll" (ByRef start_pos As Double, ByRef target_pos As Double, ByRef cen_pos As Double, ByVal circle As Double, ByRef ArcLength As Double) As Int16
    ''' <summary>
    ''' 计算半径圆弧弧长
    ''' </summary>
    ''' <param name="start_pos">起始位置</param>
    ''' <param name="target_pos">目标位置</param>
    ''' <param name="arc_radius">圆弧半径</param>
    ''' <param name="arc_dir">圆弧方向</param>
    ''' <param name="circle">圈数</param>
    ''' <param name="ArcLength">弧长</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_calculate_arclength_radius Lib "LTDMC.dll" (ByRef start_pos As Double, ByRef target_pos As Double, ByVal arc_radius As Double, ByVal arc_dir As UInt16, ByVal circle As Double, ByRef ArcLength As Double) As Int16

    ''' <summary>
    ''' 设置CanIO通讯状态
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="NodeNum">节点数：1-8</param>
    ''' <param name="state">状态：0-断开，1-连接，2-复位后自动连接</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_can_state Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal NodeNum As UInt16, ByVal state As UInt16) As Int16
    ''' <summary>
    ''' 读取CanIO通讯状态
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="NodeNum">节点数：1-8</param>
    ''' <param name="state">状态：0-断开，1-连接，2-异常</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_can_state Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByRef NodeNum As UInt16, ByRef state As UInt16) As Int16
    ''' <summary>
    ''' 按位写CanIO输出口
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Node">节点号：0-7</param>
    ''' <param name="bitno">IO口号：0-15</param>
    ''' <param name="on_off">输出口状态：0-低电平，1-高电平</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_write_can_outbit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Node As UInt16, ByVal bitno As UInt16, ByVal on_off As UInt16) As Int16
    ''' <summary>
    ''' 按位读CanIo输出口
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Node">节点号：0-7</param>
    ''' <param name="bitno">IO口号：0-15</param>
    ''' <returns>输出口状态：0-低电平，1-高电平</returns>
    ''' <remarks></remarks>
    Declare Function dmc_read_can_outbit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Node As UInt16, ByVal bitno As UInt16) As Int16
    ''' <summary>
    ''' 按位读CanIo输入口
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Node">节点号：0-7</param>
    ''' <param name="bitno">IO口号：0-15</param>
    ''' <returns>输入口状态：0-低电平，1-高电平</returns>
    ''' <remarks></remarks>
    Declare Function dmc_read_can_inbit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Node As UInt16, ByVal bitno As UInt16) As Int16
    ''' <summary>
    ''' 按端口号写CanIO输出口
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Node">节点号：0-7</param>
    ''' <param name="PortNo">端口号：0-1</param>
    ''' <param name="outport_val">输出端口值：bit0-bit31对应Out0-out31,0-低电平，1-高电平</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_write_can_outport Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Node As UInt16, ByVal PortNo As UInt16, ByVal outport_val As UInt32) As Int16
    ''' <summary>
    ''' 按端口号读CanIO输出口
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Node">节点号：0-7</param>
    ''' <param name="PortNo">端口号：0-1</param>
    ''' <returns>输出端口值：bit0-bit31对应Out0-out31,0-低电平，1-高电平</returns>
    ''' <remarks></remarks>
    Declare Function dmc_read_can_outport Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Node As UInt16, ByVal PortNo As UInt16) As UInt32
    ''' <summary>
    ''' 按端口号读CanIO输入口
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Node">节点号：0-7</param>
    ''' <param name="PortNo">端口号：0-1</param>
    ''' <returns>输入端口值：bit0-bit31对应Out0-out31,0-低电平，1-高电平</returns>
    ''' <remarks></remarks>
    Declare Function dmc_read_can_inport Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Node As UInt16, ByVal PortNo As UInt16) As UInt32
    ''' <summary>
    ''' 读取CanIo通讯错误码
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Errcode">CAN错误码</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_can_errcode Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByRef Errcode As UInt16) As Int16
    ''' <summary>
    ''' 读取轴停止原因
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="StopReason">停止原因</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_stop_reason Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16, ByRef StopReason As Int32) As Int16   '读取轴停止原因
    ''' <summary>
    ''' 清除轴停止原因
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_clear_stop_reason Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal axis As UInt16) As Int16   '清除轴停止原因

    ''' <summary>
    ''' 控制外轴运动
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="axis">轴号：0-7</param>
    ''' <param name="dist">距离，单位unit</param>
    ''' <param name="posi_mode">位置模式：0-相对，1-绝对</param>
    ''' <param name="mode">模式：0-暂停启动，1-直接启动</param>
    ''' <param name="mark">段号：0-自动递增，>0按设置值设置段号</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_pmove_unit Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal axis As UInt16, ByVal dist As Double, ByVal posi_mode As UInt16, ByVal mode As UInt16, ByVal mark As Int32) As Int16

    ''' <summary>
    ''' 设置7号轴PWM输出功能
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="enable">使能：0-禁用，1-启用</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_pwm_enable Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal enable As UInt16) As Int16
    ''' <summary>
    ''' 读取7号轴PWM输出功能
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="enable">使能：0-禁用，1-启用</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_pwm_enable Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByRef enable As UInt16) As Int16
    ''' <summary>
    ''' 连续插补中设置PWM输出
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="pwm_no">PWM通道：0-1</param>
    ''' <param name="fDuty">占空比：0-1</param>
    ''' <param name="fFre">频率：0-2MHz</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_set_pwm_output Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal pwm_no As UInt16, ByVal fDuty As Double, ByVal fFre As Double) As Int16
    ''' <summary>
    ''' 设置PWM输出，立即执行
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="pwm_no">PWM通道：0-1</param>
    ''' <param name="fDuty">占空比：0-1</param>
    ''' <param name="fFre">频率：0-2MHz</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_pwm_output Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal pwm_no As UInt16, ByVal fDuty As Double, ByVal fFre As Double) As Int16
    ''' <summary>
    ''' 读取PWM输出
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="pwm_no">PWM通道：0-1</param>
    ''' <param name="fDuty">占空比：0-1</param>
    ''' <param name="fFre">频率：0-2MHz</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_get_pwm_output Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal pwm_no As UInt16, ByRef fDuty As Double, ByRef fFre As Double) As Int16
    ''' <summary>
    ''' 设置PWM速度跟随参数
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="pwm_no">PWM通道：0-1</param>
    ''' <param name="mode">跟随模式:0-不跟随 保持状态,1-不跟随 输出低电平,2-不跟随 输出高电平,3-跟随 占空比自动调整,4-跟随 频率自动调整</param>
    ''' <param name="MaxVel">最大运行速度，单位unit</param>
    ''' <param name="MaxValue">最大输出占空比或者频率</param>
    ''' <param name="OutValue">固定输出频率（0-2MHz)或占空比（0-1）</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_set_pwm_follow_speed Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal pwm_no As UInt16, ByVal mode As UInt16, ByVal MaxVel As Double, ByVal MaxValue As Double, ByVal OutValue As Double) As Int16
    ''' <summary>
    ''' 读取PWM速度跟随参数
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="pwm_no">PWM通道：0-1</param>
    ''' <param name="mode">跟随模式:0-不跟随 保持状态,1-不跟随 输出低电平,2-不跟随 输出高电平,3-跟随 占空比自动调整,4-跟随 频率自动调整</param>
    ''' <param name="MaxVel">最大运行速度，单位unit</param>
    ''' <param name="MaxValue">最大输出占空比或者频率</param>
    ''' <param name="OutValue">固定输出频率（0-2MHz)或占空比（0-1）</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_get_pwm_follow_speed Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal pwm_no As UInt16, ByRef mode As UInt16, ByRef MaxVel As Double, ByRef MaxValue As Double, ByRef OutValue As Double) As Int16
    ''' <summary>
    ''' 设置PWM开关对应的占空比
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="pwmno">pwm口号：0-1</param>
    ''' <param name="fOnDuty">打开占空比：0-1</param>
    ''' <param name="fOffDuty">关闭占空比：0-1</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_set_pwm_onoff_duty Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal pwmno As UInt16, ByVal fOnDuty As Double, ByVal fOffDuty As Double) As Int16
    Declare Function dmc_get_pwm_onoff_duty Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal pwmno As UInt16, ByRef fOnDuty As Double, ByRef fOffDuty As Double) As Int16
   ''' <summary>
    ''' 相对起点PWM滞后输出
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="pwmno">pwm口号：0-1</param>
    ''' <param name="on_off">输出状态：0-关闭，1-打开</param>
    ''' <param name="delay_value">滞后值</param>
    ''' <param name="delay_mode">滞后模式：0-时间，1-距离</param>
    ''' <param name="ReverseTime">保留</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_delay_pwm_to_start Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal pwmno As UInt16, ByVal on_off As UInt16, ByVal delay_value As Double, ByVal delay_mode As UInt16, ByVal ReverseTime As Double) As Int16    '相对于轨迹段起点IO滞后输出
    ''' <summary>
    ''' 相对终点PWM提前输出
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="pwmno">pwm口号：0-1</param>
    ''' <param name="on_off">输出状态：0-关闭，1-打开</param>
    ''' <param name="ahead_value">提前量</param>
    ''' <param name="ahead_mode">提前模式：0-时间，1-距离</param>
    ''' <param name="ReverseTime">保留</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_ahead_pwm_to_stop Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal pwmno As UInt16, ByVal on_off As UInt16, ByVal ahead_value As Double, ByVal ahead_mode As UInt16, ByVal ReverseTime As Double) As Int16  '相对轨迹段终点pwm提前输出
    ''' <summary>
    ''' 连续插补立即输出PWM
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="pwmno">pwm口号：0-1</param>
    ''' <param name="on_off">输出状态：0-关闭，1-打开</param>
    ''' <param name="ReverseTime">保留</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_write_pwm Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal pwmno As UInt16, ByVal on_off As UInt16, ByVal ReverseTime As Double) As Int16     '缓冲区立即IO输出
End Module

'''景泰现场添加
    ''' <summary>
    ''' 单段直线插补 带速度参数
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="AxisNum">轴数：2-6</param>
    ''' <param name="AxisList">轴列表</param>
    ''' <param name="Target_Pos">目标位置</param>
    ''' <param name="posi_mode">位置模式：0-相对，1-绝对</param>
    ''' <param name="MaxVel">运行速度，单位unit</param>
    ''' <param name="Taccdec">加减速时间，单位s</param>
    ''' <param name="Tspara">平滑时间，单位s</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_line_unit1 Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal AxisNum As UInt16, ByRef AxisList As UInt16, ByRef Target_Pos As Double, ByVal posi_mode As UInt16,ByVal MaxVel As Double,ByVal Taccdec As double,ByVal Tspara As double) As Int16   '单段直线
    ''' <summary>
    ''' 单段插补圆心圆弧/螺旋线/渐开线 带速度参数
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="AxisNum">轴数：2-6</param>
    ''' <param name="AxisList">轴列表</param>
    ''' <param name="Target_Pos">目标位置</param>
    ''' <param name="Cen_Pos">圆心位置</param>
    ''' <param name="Arc_Dir">圆弧方向：0-顺时针，1-逆时针</param>
    ''' <param name="Circle">圆弧圈数</param>
    ''' <param name="posi_mode">位置模式：0-相对，1-绝对</param>
    ''' <param name="MaxVel">运行速度，单位unit</param>
    ''' <param name="Taccdec">加减速时间，单位s</param>   
    ''' <param name="Tspara">平滑时间，单位s</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_arc_move_center_unit1 Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal AxisNum As UInt16, ByRef AxisList As UInt16, ByRef Target_Pos As Double, ByRef Cen_Pos As Double, ByVal Arc_Dir As UInt16, ByVal Circle As Int32, ByVal posi_mode As UInt16,ByVal MaxVel As Double,ByVal Taccdec As double,ByVal Tspara As double) As Int16   
    ''' <summary>
    ''' 单段插补半径圆弧/螺旋线 带速度参数
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="AxisNum">轴数：2-6</param>
    ''' <param name="AxisList">轴列表</param>
    ''' <param name="Target_Pos">目标位置</param>
    ''' <param name="Arc_Radius">半径值</param>
    ''' <param name="Arc_Dir">圆弧方向：0-顺时针，1-逆时针</param>
    ''' <param name="Circle">圆弧圈数</param>
    ''' <param name="posi_mode">位置模式：0-相对，1-绝对</param>    
    ''' <param name="MaxVel">运行速度，单位unit</param>
    ''' <param name="Taccdec">加减速时间，单位s</param>
    ''' <param name="Tspara">平滑时间，单位s</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_arc_move_radius_unit1 Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal AxisNum As UInt16, ByRef AxisList As UInt16, ByRef Target_Pos As Double, ByVal Arc_Radius As Double, ByVal Arc_Dir As UInt16, ByVal Circle As Int32, ByVal posi_mode As UInt16,ByVal MaxVel As Double,ByVal Taccdec As double,ByVal Tspara As double) As Int16 
    ''' <summary>
    ''' 连续插补三点圆弧（包括空间）/螺旋线 带速度参数
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="AxisNum">轴数：2-6</param>
    ''' <param name="AxisList">轴列表</param>
    ''' <param name="Target_Pos">目标位置</param>
    ''' <param name="Mid_Pos">中间位置</param>
    ''' <param name="Circle">圈数：不小于0时表示基于轴列表前两轴平面的螺旋线，小于0时绝对值减1表示空间圆弧圈数</param>
    ''' <param name="posi_mode">位置模式：0-相对，1-绝对</param>
    ''' <param name="MaxVel">运行速度，单位unit</param>
    ''' <param name="Taccdec">加减速时间，单位s</param>
    ''' <param name="Tspara">平滑时间，单位s</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_arc_move_3points_unit1 Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal AxisNum As UInt16, ByRef AxisList As UInt16, ByRef Target_Pos As Double, ByRef Mid_Pos As Double, ByVal Circle As Int32, ByVal posi_mode As UInt16,ByVal MaxVel As Double,ByVal Taccdec As double,ByVal Tspara As double) As Int16  

    ''' <summary>
    ''' 连续插补直线插补  带速度参数
    ''' </summary>
    ''' <param name="CardNo">卡号：0-7</param>
    ''' <param name="Crd">坐标系号：0-1</param>
    ''' <param name="AxisNum">轴数：2-6</param>
    ''' <param name="AxisList">轴列表</param>
    ''' <param name="Target_Pos">目标位置</param>
    ''' <param name="posi_mode">位置模式：0-相对，1-绝对</param>
    ''' <param name="mark">段号：0-自动递增</param>
    ''' <param name="MaxVel">运行速度，单位unit</param>
    ''' <param name="Taccdec">加减速时间，单位s</param>
    ''' <param name="Tspara">平滑时间，单位s</param>
    ''' <returns>错误代码</returns>
    ''' <remarks></remarks>
    Declare Function dmc_conti_line_unit1 Lib "LTDMC.dll" (ByVal CardNo As UInt16, ByVal Crd As UInt16, ByVal AxisNum As UInt16, ByRef AxisList As UInt16, ByRef Target_Pos As Double, ByVal posi_mode As UInt16, ByVal mark As Int32,ByVal MaxVel As Double,ByVal Taccdec As double,ByVal Tspara As double) As Int16