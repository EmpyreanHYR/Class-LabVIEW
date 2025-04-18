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
		<Item Name="Beverages" Type="Folder">
			<Item Name="Condiments" Type="Folder">
				<Item Name="Milk.lvclass" Type="LVClass" URL="../Classes/Milk/Milk.lvclass"/>
				<Item Name="Mocha.lvclass" Type="LVClass" URL="../Classes/Mocha/Mocha.lvclass"/>
				<Item Name="Soy.lvclass" Type="LVClass" URL="../Classes/Soy/Soy.lvclass"/>
				<Item Name="Whip.lvclass" Type="LVClass" URL="../Classes/Whip/Whip.lvclass"/>
			</Item>
			<Item Name="Condiment Decorator.lvclass" Type="LVClass" URL="../Classes/Condiment Decorator/Condiment Decorator.lvclass"/>
			<Item Name="Espresso.lvclass" Type="LVClass" URL="../Classes/Espresso/Espresso.lvclass"/>
			<Item Name="House Blend.lvclass" Type="LVClass" URL="../Classes/House Blend/House Blend.lvclass"/>
			<Item Name="Dark Roast.lvclass" Type="LVClass" URL="../Classes/Dark Roast/Dark Roast.lvclass"/>
			<Item Name="Decaf.lvclass" Type="LVClass" URL="../Classes/Decaf/Decaf.lvclass"/>
		</Item>
		<Item Name="Beverage.lvclass" Type="LVClass" URL="../Classes/Beverage/Beverage.lvclass"/>
		<Item Name="Starbuzz Coffee.vi" Type="VI" URL="../Starbuzz Coffee.vi"/>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
