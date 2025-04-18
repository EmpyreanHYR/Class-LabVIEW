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
		<Item Name="Console" Type="Folder">
			<Item Name="Clear Console.vi" Type="VI" URL="../../../Console/Clear Console.vi"/>
			<Item Name="Read From Console.vi" Type="VI" URL="../../../Console/Read From Console.vi"/>
			<Item Name="Write to Console.vi" Type="VI" URL="../../../Console/Write to Console.vi"/>
		</Item>
		<Item Name="零件加工（抽象）.lvclass" Type="LVClass" URL="../零件加工（抽象）/零件加工（抽象）.lvclass"/>
		<Item Name="齿轮.lvclass" Type="LVClass" URL="../齿轮（具体建造者）/齿轮.lvclass"/>
		<Item Name="油缸.lvclass" Type="LVClass" URL="../油缸（具体建造者）/油缸.lvclass"/>
		<Item Name="零件加工流程.lvclass" Type="LVClass" URL="../零件加工流程（指挥者）/零件加工流程.lvclass"/>
		<Item Name="DEMO.vi" Type="VI" URL="../DEMO.vi"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="Console.vi" Type="VI" URL="../../../Console/Console.vi"/>
		</Item>
		<Item Name="程序生成规范" Type="Build"/>
	</Item>
</Project>
