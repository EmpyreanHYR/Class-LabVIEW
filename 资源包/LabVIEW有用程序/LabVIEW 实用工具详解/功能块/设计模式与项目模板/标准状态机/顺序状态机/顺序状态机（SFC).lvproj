<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="13008000">
	<Property Name="CCSymbols" Type="Str">Sim,0;</Property>
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">false</Property>
	<Property Name="NI.Project.Description" Type="Str"></Property>
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
		<Item Name="Action" Type="Folder">
			<Item Name="Action.vi" Type="VI" URL="../Action/Action.vi"/>
			<Item Name="原位（Action).vi" Type="VI" URL="../Action/原位（Action).vi"/>
			<Item Name="A侧下降（Action).vi" Type="VI" URL="../Action/A侧下降（Action).vi"/>
			<Item Name="夹紧工件（Action).vi" Type="VI" URL="../Action/夹紧工件（Action).vi"/>
			<Item Name="A侧抬起（Action).vi" Type="VI" URL="../Action/A侧抬起（Action).vi"/>
			<Item Name="右移（Action).vi" Type="VI" URL="../Action/右移（Action).vi"/>
			<Item Name="B侧下降（Action).vi" Type="VI" URL="../Action/B侧下降（Action).vi"/>
			<Item Name="释放工件（Action).vi" Type="VI" URL="../Action/释放工件（Action).vi"/>
			<Item Name="B侧抬起（Action).vi" Type="VI" URL="../Action/B侧抬起（Action).vi"/>
			<Item Name="左移（Action).vi" Type="VI" URL="../Action/左移（Action).vi"/>
		</Item>
		<Item Name="Trans" Type="Folder">
			<Item Name="Trans.vi" Type="VI" URL="../Trans/Trans.vi"/>
			<Item Name="原位（Trans).vi" Type="VI" URL="../Trans/原位（Trans).vi"/>
			<Item Name="A侧下降（Trans).vi" Type="VI" URL="../Trans/A侧下降（Trans).vi"/>
			<Item Name="抓紧（Trans).vi" Type="VI" URL="../Trans/抓紧（Trans).vi"/>
			<Item Name="A侧抬起（Trans).vi" Type="VI" URL="../Trans/A侧抬起（Trans).vi"/>
			<Item Name="右移（Trans).vi" Type="VI" URL="../Trans/右移（Trans).vi"/>
			<Item Name="B侧下降（Trans).vi" Type="VI" URL="../Trans/B侧下降（Trans).vi"/>
			<Item Name="释放工件（Trans).vi" Type="VI" URL="../Trans/释放工件（Trans).vi"/>
			<Item Name="B侧抬起（Trans).vi" Type="VI" URL="../Trans/B侧抬起（Trans).vi"/>
			<Item Name="左移（Trans).vi" Type="VI" URL="../Trans/左移（Trans).vi"/>
		</Item>
		<Item Name="Control" Type="Folder">
			<Item Name="Data.ctl" Type="VI" URL="../Control/Data.ctl"/>
			<Item Name="State.ctl" Type="VI" URL="../Control/State.ctl"/>
			<Item Name="SW.ctl" Type="VI" URL="../Control/SW.ctl"/>
			<Item Name="YV.ctl" Type="VI" URL="../Control/YV.ctl"/>
		</Item>
		<Item Name="Input and Output" Type="Folder">
			<Item Name="Output.vi" Type="VI" URL="../Input and Output/Output.vi"/>
			<Item Name="Input.vi" Type="VI" URL="../Input and Output/Input.vi"/>
			<Item Name="Sim Input.vi" Type="VI" URL="../Input and Output/Sim Input.vi"/>
		</Item>
		<Item Name="机械手示意图.vi" Type="VI" URL="../机械手示意图.vi"/>
		<Item Name="机械手顺序状态机.vi" Type="VI" URL="../机械手顺序状态机.vi"/>
		<Item Name="DEMO.vi" Type="VI" URL="../DEMO.vi"/>
		<Item Name="依赖关系" Type="Dependencies"/>
		<Item Name="程序生成规范" Type="Build"/>
	</Item>
</Project>
