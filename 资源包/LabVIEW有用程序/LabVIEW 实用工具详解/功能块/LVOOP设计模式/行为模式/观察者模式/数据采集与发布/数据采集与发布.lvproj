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
		<Item Name="订阅者" Type="Folder">
			<Item Name="订阅者接口.lvclass" Type="LVClass" URL="../订阅者接口/订阅者接口.lvclass"/>
			<Item Name="数据存储.lvclass" Type="LVClass" URL="../订阅者/数据存储/数据存储.lvclass"/>
			<Item Name="数据分析.lvclass" Type="LVClass" URL="../订阅者/数据分析/数据分析.lvclass"/>
			<Item Name="数据显示.lvclass" Type="LVClass" URL="../订阅者/数据显示/数据显示.lvclass"/>
		</Item>
		<Item Name="发布者" Type="Folder">
			<Item Name="数据采集.lvclass" Type="LVClass" URL="../发布者/数据采集.lvclass"/>
			<Item Name="数据采集接口（发布者）.lvclass" Type="LVClass" URL="../发布者接口/数据采集接口（发布者）.lvclass"/>
		</Item>
		<Item Name="demo.vi" Type="VI" URL="../demo.vi"/>
		<Item Name="依赖关系" Type="Dependencies"/>
		<Item Name="程序生成规范" Type="Build"/>
	</Item>
</Project>
