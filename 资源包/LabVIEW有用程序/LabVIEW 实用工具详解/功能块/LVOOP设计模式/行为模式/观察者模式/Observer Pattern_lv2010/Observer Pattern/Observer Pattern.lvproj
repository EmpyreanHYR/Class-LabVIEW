<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="11008008">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Implement" Type="Folder">
			<Item Name="Observable" Type="Folder">
				<Item Name="Text Message.lvclass" Type="LVClass" URL="../Class/Text Message/Text Message.lvclass"/>
			</Item>
			<Item Name="Observer" Type="Folder">
				<Item Name="Normal Text.lvclass" Type="LVClass" URL="../Class/Normal Text/Normal Text.lvclass"/>
				<Item Name="Reverse Text.lvclass" Type="LVClass" URL="../Class/Reverse Text/Reverse Text.lvclass"/>
			</Item>
		</Item>
		<Item Name="Interface" Type="Folder">
			<Item Name="Observable.lvclass" Type="LVClass" URL="../Class/Observable/Observable.lvclass"/>
			<Item Name="Observer.lvclass" Type="LVClass" URL="../Class/Observer/Observer.lvclass"/>
		</Item>
		<Item Name="Observer Pattern Demo.vi" Type="VI" URL="../Observer Pattern Demo.vi"/>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
