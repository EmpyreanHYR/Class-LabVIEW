<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="13008000">
	<Item Name="我的电脑" Type="My Computer">
		<Property Name="IOScan.Faults" Type="Str"></Property>
		<Property Name="IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="IOScan.Period" Type="UInt">10000</Property>
		<Property Name="IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="IOScan.Priority" Type="UInt">9</Property>
		<Property Name="IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="IOScan.StartEngineOnDeploy" Type="Bool">false</Property>
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">我的电脑/VI服务器</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">我的电脑/VI服务器</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="DEMO" Type="Folder">
			<Item Name="电机控制流程示意图.vi" Type="VI" URL="../电机控制流程示意图.vi"/>
			<Item Name="demo.vi" Type="VI" URL="../demo.vi"/>
		</Item>
		<Item Name=" Control" Type="Folder">
			<Item Name="Motor.ctl" Type="VI" URL="../Control/Motor.ctl"/>
			<Item Name="State.ctl" Type="VI" URL="../Control/State.ctl"/>
			<Item Name="Data.ctl" Type="VI" URL="../Control/Data.ctl"/>
		</Item>
		<Item Name="VI" Type="Folder">
			<Item Name="SM Init.vi" Type="VI" URL="../VI/SM Init.vi"/>
			<Item Name="Timer Reached Next State.vi" Type="VI" URL="../VI/Timer Reached Next State.vi"/>
			<Item Name="Timer Reached Next State With Stop.vi" Type="VI" URL="../VI/Timer Reached Next State With Stop.vi"/>
			<Item Name="标准状态机.vi" Type="VI" URL="../VI/标准状态机.vi"/>
			<Item Name="Action.vi" Type="VI" URL="../../../../../../LVTest/Action.vi"/>
		</Item>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="FormatTime String.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/FormatTime String.vi"/>
				<Item Name="subElapsedTime.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/subElapsedTime.vi"/>
				<Item Name="subTimeDelay.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/TimeDelayBlock.llb/subTimeDelay.vi"/>
				<Item Name="NI_PtbyPt.lvlib" Type="Library" URL="/&lt;vilib&gt;/ptbypt/NI_PtbyPt.lvlib"/>
			</Item>
		</Item>
		<Item Name="程序生成规范" Type="Build"/>
	</Item>
</Project>
