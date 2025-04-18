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
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">我的电脑/VI服务器</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">我的电脑/VI服务器</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="DEMO.vi" Type="VI" URL="../DEMO.vi"/>
		<Item Name="ExecuteTask.vi" Type="VI" URL="../ExecuteTask.vi"/>
		<Item Name="Task A.vi" Type="VI" URL="../Task A.vi"/>
		<Item Name="Task B.vi" Type="VI" URL="../Task B.vi"/>
		<Item Name="Task C.vi" Type="VI" URL="../Task C.vi"/>
		<Item Name="Task.ctl" Type="VI" URL="../Task.ctl"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="Clear Console.vi" Type="VI" URL="../../../../LVOOP设计模式/Console/Clear Console.vi"/>
			<Item Name="Console.vi" Type="VI" URL="../../../../LVOOP设计模式/Console/Console.vi"/>
			<Item Name="Read From Console.vi" Type="VI" URL="../../../../LVOOP设计模式/Console/Read From Console.vi"/>
			<Item Name="Write to Console.vi" Type="VI" URL="../../../../LVOOP设计模式/Console/Write to Console.vi"/>
		</Item>
		<Item Name="程序生成规范" Type="Build"/>
	</Item>
</Project>
