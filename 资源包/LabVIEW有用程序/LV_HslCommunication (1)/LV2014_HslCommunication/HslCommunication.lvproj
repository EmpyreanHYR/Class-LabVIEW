<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="14008000">
	<Item Name="我的电脑" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">我的电脑/VI服务器</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">我的电脑/VI服务器</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Client.vi" Type="VI" URL="../Client.vi"/>
		<Item Name="OmronFinsNET.vi" Type="VI" URL="../OmronFinsNET.vi"/>
		<Item Name="Server.vi" Type="VI" URL="../Server.vi"/>
		<Item Name="串口.vi" Type="VI" URL="../串口.vi"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="Callback.vi" Type="VI" URL="../Callback.vi"/>
			<Item Name="HslCommunication.dll" Type="Document" URL="../HslCommunication.dll"/>
		</Item>
		<Item Name="程序生成规范" Type="Build"/>
	</Item>
</Project>
