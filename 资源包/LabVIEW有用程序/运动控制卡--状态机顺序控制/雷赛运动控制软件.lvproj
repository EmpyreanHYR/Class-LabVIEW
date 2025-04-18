<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="8608001">
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
		<Item Name="运动控制主程序.vi" Type="VI" URL="../运动控制主程序.vi"/>
		<Item Name="状态控件.ctl" Type="VI" URL="../状态控件.ctl"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="DMC1000.DLL" Type="Document" URL="../DMC1000.DLL"/>
		</Item>
		<Item Name="程序生成规范" Type="Build">
			<Item Name="我的应用程序" Type="EXE">
				<Property Name="App_applicationGUID" Type="Str">{55DB3008-0940-4636-B0CE-1552177542F1}</Property>
				<Property Name="App_applicationName" Type="Str">运动控制软件.exe</Property>
				<Property Name="App_companyName" Type="Str">hys</Property>
				<Property Name="App_fileDescription" Type="Str">我的应用程序</Property>
				<Property Name="App_fileVersion.major" Type="Int">1</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{3A929C65-D9E6-413C-AA5E-2D3032EA7658}</Property>
				<Property Name="App_INI_GUID" Type="Str">{9F9C67FF-9958-4793-8D0A-8754C0A01CCE}</Property>
				<Property Name="App_internalName" Type="Str">我的应用程序</Property>
				<Property Name="App_legalCopyright" Type="Str">版权 2010 </Property>
				<Property Name="App_productName" Type="Str">运动控制软件.exe</Property>
				<Property Name="Bld_buildSpecName" Type="Str">我的应用程序</Property>
				<Property Name="Bld_defaultLanguage" Type="Str">ChineseS</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_supportedLanguage[0]" Type="Str">ChineseS</Property>
				<Property Name="Bld_supportedLanguageCount" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">运动控制软件.exe</Property>
				<Property Name="Destination[0].path" Type="Path">/D/顺序运动控制/internal.llb</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">支持目录</Property>
				<Property Name="Destination[1].path" Type="Path">/D/顺序运动控制</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{E51C280E-C582-4FF9-8577-EC10A7990C0E}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/我的电脑/运动控制主程序.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
			</Item>
		</Item>
	</Item>
</Project>
