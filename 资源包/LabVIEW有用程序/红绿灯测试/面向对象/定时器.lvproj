<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="17008000">
	<Item Name="我的电脑" Type="My Computer">
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
		<Item Name="信号灯成员类.lvclass" Type="LVClass" URL="../信号灯成员类.lvclass"/>
		<Item Name="测试信号灯成员类.vi" Type="VI" URL="../测试信号灯成员类.vi"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="定时器.lvclass" Type="LVClass" URL="../定时器.lvclass"/>
		</Item>
		<Item Name="程序生成规范" Type="Build"/>
	</Item>
</Project>
