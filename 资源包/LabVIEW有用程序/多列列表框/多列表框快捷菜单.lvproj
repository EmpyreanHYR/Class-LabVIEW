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
		<Item Name="listbox" Type="Folder">
			<Item Name="listbox.lvclass" Type="LVClass" URL="../listbox/listbox.lvclass"/>
		</Item>
		<Item Name="Menu" Type="Folder">
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Item Name="Menu.lvclass" Type="LVClass" URL="../LNK/Parent Class/Menu.lvclass"/>
			<Item Name="Copy.lvclass" Type="LVClass" URL="../LNK/Copy/Copy.lvclass"/>
			<Item Name="Delete.lvclass" Type="LVClass" URL="../LNK/Delete/Delete.lvclass"/>
			<Item Name="Line.lvclass" Type="LVClass" URL="../LNK/Line/Line.lvclass"/>
			<Item Name="UP.lvclass" Type="LVClass" URL="../LNK/UP/UP.lvclass"/>
			<Item Name="Down.lvclass" Type="LVClass" URL="../LNK/Down/Down.lvclass"/>
			<Item Name="Hide Row.lvclass" Type="LVClass" URL="../LNK/Hide Row/Hide Row.lvclass"/>
			<Item Name="Show Row.lvclass" Type="LVClass" URL="../LNK/Show Row/Show Row.lvclass"/>
		</Item>
		<Item Name="Sub VI" Type="Folder">
			<Item Name="更新列首行首.vi" Type="VI" URL="../Sub VI/更新列首行首.vi"/>
			<Item Name="列表框修改.vi" Type="VI" URL="../Sub VI/列表框修改.vi"/>
		</Item>
		<Item Name="Example 1.vi" Type="VI" URL="../Example 1.vi"/>
		<Item Name="Example 2.vi" Type="VI" URL="../Example 2.vi"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="LVPoint32TypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVPoint32TypeDef.ctl"/>
				<Item Name="LVRowAndColumnTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRowAndColumnTypeDef.ctl"/>
			</Item>
		</Item>
		<Item Name="程序生成规范" Type="Build"/>
	</Item>
</Project>
