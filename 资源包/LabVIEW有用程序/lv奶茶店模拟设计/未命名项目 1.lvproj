<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="16008000">
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
		<Item Name="查看当前子类" Type="Folder">
			<Item Name="查看当前子类.lvclass" Type="LVClass" URL="../查看当前子类/查看当前子类.lvclass"/>
		</Item>
		<Item Name="点单" Type="Folder">
			<Item Name="点单.lvclass" Type="LVClass" URL="../点单/点单.lvclass"/>
		</Item>
		<Item Name="规格" Type="Folder">
			<Item Name="大杯.lvclass" Type="LVClass" URL="../规格/大杯/大杯.lvclass"/>
			<Item Name="规格.lvclass" Type="LVClass" URL="../规格/规格.lvclass"/>
			<Item Name="小杯.lvclass" Type="LVClass" URL="../规格/小杯/小杯.lvclass"/>
			<Item Name="中杯.lvclass" Type="LVClass" URL="../规格/中杯/中杯.lvclass"/>
		</Item>
		<Item Name="奶茶" Type="Folder">
			<Item Name="醇黑浓情系列" Type="Folder">
				<Item Name="醇黑浓情系列奶茶.lvclass" Type="LVClass" URL="../奶茶/醇黑浓情/醇黑浓情系列奶茶.lvclass"/>
				<Item Name="巧克力可可.lvclass" Type="LVClass" URL="../奶茶/醇黑浓情/巧克力可可/巧克力可可.lvclass"/>
				<Item Name="燕麦巧克力.lvclass" Type="LVClass" URL="../奶茶/醇黑浓情/燕麦巧克力/燕麦巧克力.lvclass"/>
			</Item>
			<Item Name="醇香奶茶系列" Type="Folder">
				<Item Name="醇香奶茶.lvclass" Type="LVClass" URL="../奶茶/醇香奶茶/醇香奶茶.lvclass"/>
				<Item Name="黑糯米奶茶.lvclass" Type="LVClass" URL="../奶茶/醇香奶茶/黑糯米奶茶/黑糯米奶茶.lvclass"/>
				<Item Name="招牌奶茶.lvclass" Type="LVClass" URL="../奶茶/醇香奶茶/招牌奶茶/招牌奶茶.lvclass"/>
				<Item Name="茉莉奶茶.lvclass" Type="LVClass" URL="../奶茶/醇香奶茶/茉莉奶茶/茉莉奶茶.lvclass"/>
			</Item>
			<Item Name="奶茶.lvclass" Type="LVClass" URL="../奶茶/奶茶.lvclass"/>
		</Item>
		<Item Name="测试1.vi" Type="VI" URL="../测试1.vi"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Get LV Class Default Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Default Value.vi"/>
				<Item Name="Get LV Class Name.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Name.vi"/>
				<Item Name="List Directory and LLBs.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/List Directory and LLBs.vi"/>
				<Item Name="Recursive File List.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Recursive File List.vi"/>
			</Item>
		</Item>
		<Item Name="程序生成规范" Type="Build"/>
	</Item>
</Project>
