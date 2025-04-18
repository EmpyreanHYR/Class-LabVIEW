<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="11008008">
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
		<Item Name="Color Demo.vi" Type="VI" URL="../Color/Color Demo.vi"/>
		<Item Name="Color.lvclass" Type="LVClass" URL="../Color/Color.lvclass"/>
		<Item Name="Font.lvclass" Type="LVClass" URL="../Font/Font.lvclass"/>
		<Item Name="ToolsStripSeperator.lvclass" Type="LVClass" URL="../ToolStrip/ToolStripSeperator/ToolsStripSeperator.lvclass"/>
		<Item Name="ToolStripLabel.lvclass" Type="LVClass" URL="../ToolStrip/ToolStripLabel/ToolStripLabel.lvclass"/>
		<Item Name="ToolStripProgressBar.lvclass" Type="LVClass" URL="../ToolStrip/ToolsStripProgressBar/ToolStripProgressBar.lvclass"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Color to RGB.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/colorconv.llb/Color to RGB.vi"/>
			</Item>
			<Item Name="System.Drawing" Type="Document" URL="System.Drawing">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="System.Windows.Forms" Type="Document" URL="System.Windows.Forms">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="程序生成规范" Type="Build"/>
	</Item>
</Project>
