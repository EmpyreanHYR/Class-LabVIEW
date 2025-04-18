<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="16008000">
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
		<Item Name="消息" Type="Folder">
			<Item Name="消息类.lvclass" Type="LVClass" URL="../消息类/消息类.lvclass"/>
		</Item>
		<Item Name="通讯" Type="Folder">
			<Item Name="通讯类.lvclass" Type="LVClass" URL="../通讯/通讯类.lvclass"/>
		</Item>
		<Item Name="命令" Type="Folder">
			<Item Name="A命令.lvclass" Type="LVClass" URL="../命令/A命令.lvclass"/>
			<Item Name="B命令.lvclass" Type="LVClass" URL="../命令/B命令/B命令.lvclass"/>
		</Item>
		<Item Name="VISA通讯" Type="Folder">
			<Item Name="VISA.lvclass" Type="LVClass" URL="../VISA/VISA.lvclass"/>
		</Item>
		<Item Name="VISA程序.vi" Type="VI" URL="../VISA程序.vi"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
			</Item>
		</Item>
		<Item Name="程序生成规范" Type="Build"/>
	</Item>
</Project>
