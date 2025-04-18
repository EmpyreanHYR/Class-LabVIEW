<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="11008008">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Appliance.lvclass" Type="LVClass" URL="../Appliance/Appliance.lvclass"/>
		<Item Name="Appliances.lvlib" Type="Library" URL="../Appliances/Appliances.lvlib"/>
		<Item Name="CookBehavior.lvclass" Type="LVClass" URL="../CookBehavior/CookBehavior.lvclass"/>
		<Item Name="CookBehaviors.lvlib" Type="Library" URL="../CookBehaviors/CookBehaviors.lvlib"/>
		<Item Name="Kitchen.lvclass" Type="LVClass" URL="../Kitchen/Kitchen.lvclass"/>
		<Item Name="DinnerSimulator.lvclass" Type="LVClass" URL="../DinnerSimulator/DinnerSimulator.lvclass"/>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
