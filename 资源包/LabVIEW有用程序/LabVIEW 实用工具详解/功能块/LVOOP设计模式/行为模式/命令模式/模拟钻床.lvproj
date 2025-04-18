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
		<Item Name="操作记录" Type="Folder">
			<Item Name="Clear Console.vi" Type="VI" URL="../../../Console/Clear Console.vi"/>
			<Item Name="Console.vi" Type="VI" URL="../../../Console/Console.vi"/>
			<Item Name="Read From Console.vi" Type="VI" URL="../../../Console/Read From Console.vi"/>
			<Item Name="Write to Console.vi" Type="VI" URL="../../../Console/Write to Console.vi"/>
		</Item>
		<Item Name="命令" Type="Folder">
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Item Name="命令（抽象）" Type="Folder">
				<Item Name="命令类.lvclass" Type="LVClass" URL="../命令/命令（抽象）/命令类.lvclass"/>
			</Item>
			<Item Name="命令：打开冷却.lvclass" Type="LVClass" URL="../命令/命令：打开冷却/命令：打开冷却.lvclass"/>
			<Item Name="命令：关闭冷却.lvclass" Type="LVClass" URL="../命令/命令：关闭冷却/命令：关闭冷却.lvclass"/>
			<Item Name="命令：打开照明灯.lvclass" Type="LVClass" URL="../命令/命令：打开照明灯/命令：打开照明灯.lvclass"/>
			<Item Name="命令：关闭照明灯.lvclass" Type="LVClass" URL="../命令/命令：关闭照明灯/命令：关闭照明灯.lvclass"/>
			<Item Name="命令：主轴启动.lvclass" Type="LVClass" URL="../命令/命令：打开主轴/命令：主轴启动.lvclass"/>
			<Item Name="命令：主轴停止.lvclass" Type="LVClass" URL="../命令/命令：主轴停止/命令：主轴停止.lvclass"/>
		</Item>
		<Item Name="钻床基本操作（接收者）" Type="Folder">
			<Item Name="钻床基本操作.lvclass" Type="LVClass" URL="../接收者/钻床基本操作.lvclass"/>
		</Item>
		<Item Name="控制盒.lvclass" Type="LVClass" URL="../调用者/控制盒.lvclass"/>
		<Item Name="控制盒（宏命令）.lvclass" Type="LVClass" URL="../调用者（宏命令）/控制盒（宏命令）.lvclass"/>
		<Item Name="控制盒（队列）.lvclass" Type="LVClass" URL="../调用者（队列）/控制盒（队列）.lvclass"/>
		<Item Name="DEMO(MACRO).vi" Type="VI" URL="../DEMO(MACRO).vi"/>
		<Item Name="DEMO.vi" Type="VI" URL="../DEMO.vi"/>
		<Item Name="加载类实例.vi" Type="VI" URL="../加载类实例.vi"/>
		<Item Name="DEMO（队列）.vi" Type="VI" URL="../DEMO（队列）.vi"/>
		<Item Name="依赖关系" Type="Dependencies"/>
		<Item Name="程序生成规范" Type="Build"/>
	</Item>
</Project>
