<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="11008008">
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
		<Item Name="控制台" Type="Folder">
			<Item Name="Clear Console.vi" Type="VI" URL="../../../../Console/Clear Console.vi"/>
			<Item Name="Read From Console.vi" Type="VI" URL="../../../../Console/Read From Console.vi"/>
			<Item Name="Write to Console.vi" Type="VI" URL="../../../../Console/Write to Console.vi"/>
		</Item>
		<Item Name="加工类（抽象）.lvclass" Type="LVClass" URL="../加工类（抽象）/加工类（抽象）.lvclass"/>
		<Item Name="车削.lvclass" Type="LVClass" URL="../车削/车削.lvclass"/>
		<Item Name="铣削.lvclass" Type="LVClass" URL="../铣削/铣削.lvclass"/>
		<Item Name="钻削.lvclass" Type="LVClass" URL="../钻削/钻削.lvclass"/>
		<Item Name="加工中心.lvclass" Type="LVClass" URL="../加工中心/加工中心.lvclass"/>
		<Item Name="零件加工（简单工厂）.vi" Type="VI" URL="../零件加工（简单工厂）.vi"/>
		<Item Name="简单加工类工厂.lvclass" Type="LVClass" URL="../简单类工厂/简单加工类工厂.lvclass"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="Console.vi" Type="VI" URL="../../../../Console/Console.vi"/>
		</Item>
		<Item Name="程序生成规范" Type="Build"/>
	</Item>
</Project>
