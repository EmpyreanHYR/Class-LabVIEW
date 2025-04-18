<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="12008004">
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
		<Item Name="WRL" Type="Folder" URL="../WRL">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="机械臂-labview控制仿真.vi" Type="VI" URL="../机械臂-labview控制仿真.vi"/>
		<Item Name="机械臂图标.ico" Type="Document" URL="../机械臂图标.ico"/>
		<Item Name="十字架.bmp" Type="Document" URL="../十字架.bmp"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="LVRGBAColorTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRGBAColorTypeDef.ctl"/>
				<Item Name="NI_3D Picture Control.lvlib" Type="Library" URL="/&lt;vilib&gt;/picture/3D Picture Control/NI_3D Picture Control.lvlib"/>
			</Item>
		</Item>
		<Item Name="程序生成规范" Type="Build">
			<Item Name="机械臂-labview控制仿真" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{28CE6133-186D-4E9C-BDF7-23E747D61161}</Property>
				<Property Name="App_INI_GUID" Type="Str">{B02E6C74-67DC-4E26-9E7C-EF345EE21AE6}</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{E2D218AD-8608-47B1-809E-5ECD5A07A3B8}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">机械臂-labview控制仿真</Property>
				<Property Name="Bld_defaultLanguage" Type="Str">ChineseS</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/机械臂-labview控制仿真</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{930AF2B1-9D01-4B21-BFB0-70FD342B3B9E}</Property>
				<Property Name="Bld_supportedLanguage[0]" Type="Str">ChineseS</Property>
				<Property Name="Bld_supportedLanguage[1]" Type="Str">English</Property>
				<Property Name="Bld_supportedLanguageCount" Type="Int">2</Property>
				<Property Name="Destination[0].destName" Type="Str">机械臂-labview控制仿真.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/机械臂-labview控制仿真/机械臂-labview控制仿真.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">支持目录</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/机械臂-labview控制仿真/WRL</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Exe_iconItemID" Type="Ref">/我的电脑/机械臂图标.ico</Property>
				<Property Name="Source[0].itemID" Type="Str">{E1F8856E-A781-4340-9E5C-12AF5364736D}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/我的电脑/机械臂-labview控制仿真.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/我的电脑/机械臂图标.ico</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].itemID" Type="Ref">/我的电脑/十字架.bmp</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[4].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[4].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[4].itemID" Type="Ref">/我的电脑/WRL</Property>
				<Property Name="Source[4].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[4].type" Type="Str">Container</Property>
				<Property Name="SourceCount" Type="Int">5</Property>
				<Property Name="TgtF_fileDescription" Type="Str">主要是学习用LabView控制三维模型，现在只能手控，以后再设计为按预先设定的程序运行，自动计算出刀路（三维），把极坐标的机械臂相对于直角坐标的机床的优势充分发掘出来，现在比较粗糟。罗清》电话：13548205451 QQ：564200811</Property>
				<Property Name="TgtF_fileVersion.major" Type="Int">1</Property>
				<Property Name="TgtF_internalName" Type="Str">机械臂-labview控制仿真</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">版权 2014 </Property>
				<Property Name="TgtF_productName" Type="Str">机械臂-labview控制仿真</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{48C69831-47BD-43B7-BDB7-37D2458CF2A1}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">机械臂-labview控制仿真.exe</Property>
			</Item>
			<Item Name="我的安装程序" Type="Installer">
				<Property Name="Destination[0].name" Type="Str">机械臂-labview控制仿真</Property>
				<Property Name="Destination[0].parent" Type="Str">{3912416A-D2E5-411B-AFEE-B63654D690C0}</Property>
				<Property Name="Destination[0].tag" Type="Str">{5BEAEE22-991B-4B4E-971A-ACA02625E3A3}</Property>
				<Property Name="Destination[0].type" Type="Str">userFolder</Property>
				<Property Name="DestinationCount" Type="Int">1</Property>
				<Property Name="DistPart[0].flavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPart[0].productID" Type="Str">{5157CC53-EB17-4E69-A5C9-73E5695198B1}</Property>
				<Property Name="DistPart[0].productName" Type="Str">NI LabVIEW运行引擎2012 SP1 f3</Property>
				<Property Name="DistPart[0].SoftDep[0].dependencyKey" Type="Str">RIBAAA.329C48DD_662F_48EC_83F5_13B05DFCF8E5</Property>
				<Property Name="DistPart[0].SoftDep[0].productName" Type="Str">NI System Web Server 12.0</Property>
				<Property Name="DistPart[0].SoftDep[1].dependencyKey" Type="Str">TIBAAA.329C48DD_662F_48EC_83F5_13B05DFCF8E5</Property>
				<Property Name="DistPart[0].SoftDep[1].productName" Type="Str">NI Logos 5.4</Property>
				<Property Name="DistPart[0].SoftDep[2].dependencyKey" Type="Str">UIBAAA.329C48DD_662F_48EC_83F5_13B05DFCF8E5</Property>
				<Property Name="DistPart[0].SoftDep[2].productName" Type="Str">NI TDM Streaming 2.4</Property>
				<Property Name="DistPart[0].SoftDep[3].dependencyKey" Type="Str">VIBAAA.329C48DD_662F_48EC_83F5_13B05DFCF8E5</Property>
				<Property Name="DistPart[0].SoftDep[3].productName" Type="Str">NI LabVIEW 2012 SP1 Web服务器</Property>
				<Property Name="DistPart[0].SoftDepCount" Type="Int">4</Property>
				<Property Name="DistPart[0].upgradeCode" Type="Str">{20385C41-50B1-4416-AC2A-F7D6423A9BD6}</Property>
				<Property Name="DistPartCount" Type="Int">1</Property>
				<Property Name="INST_autoIncrement" Type="Bool">true</Property>
				<Property Name="INST_buildLocation" Type="Path">../builds/机械臂-labview控制仿真/我的安装程序</Property>
				<Property Name="INST_buildLocation.type" Type="Str">relativeToCommon</Property>
				<Property Name="INST_buildSpecName" Type="Str">我的安装程序</Property>
				<Property Name="INST_defaultDir" Type="Str">{5BEAEE22-991B-4B4E-971A-ACA02625E3A3}</Property>
				<Property Name="INST_language" Type="Int">2052</Property>
				<Property Name="INST_productName" Type="Str">机械臂-labview控制仿真</Property>
				<Property Name="INST_productVersion" Type="Str">1.0.2</Property>
				<Property Name="InstSpecBitness" Type="Str">32-bit</Property>
				<Property Name="InstSpecVersion" Type="Str">12008024</Property>
				<Property Name="MSI_arpCompany" Type="Str">罗清</Property>
				<Property Name="MSI_arpContact" Type="Str">13548205451</Property>
				<Property Name="MSI_arpPhone" Type="Str">13548205451</Property>
				<Property Name="MSI_distID" Type="Str">{159883D9-EDC9-42C8-B37C-774786A563B9}</Property>
				<Property Name="MSI_osCheck" Type="Int">0</Property>
				<Property Name="MSI_upgradeCode" Type="Str">{34784B4C-E75B-4EDE-BFEB-6BF464B3777D}</Property>
				<Property Name="MSI_welcomeImageID" Type="Ref">/我的电脑/十字架.bmp</Property>
				<Property Name="MSI_windowTitle" Type="Str">欢迎安装</Property>
				<Property Name="RegDest[0].dirName" Type="Str">Software</Property>
				<Property Name="RegDest[0].dirTag" Type="Str">{DDFAFC8B-E728-4AC8-96DE-B920EBB97A86}</Property>
				<Property Name="RegDest[0].parentTag" Type="Str">2</Property>
				<Property Name="RegDestCount" Type="Int">1</Property>
				<Property Name="Source[0].dest" Type="Str">{5BEAEE22-991B-4B4E-971A-ACA02625E3A3}</Property>
				<Property Name="Source[0].File[0].dest" Type="Str">{5BEAEE22-991B-4B4E-971A-ACA02625E3A3}</Property>
				<Property Name="Source[0].File[0].name" Type="Str">机械臂-labview控制仿真.exe</Property>
				<Property Name="Source[0].File[0].Shortcut[0].destIndex" Type="Int">0</Property>
				<Property Name="Source[0].File[0].Shortcut[0].name" Type="Str">机械臂-labview控制仿真</Property>
				<Property Name="Source[0].File[0].Shortcut[0].subDir" Type="Str">机械臂-labview控制仿真</Property>
				<Property Name="Source[0].File[0].ShortcutCount" Type="Int">1</Property>
				<Property Name="Source[0].File[0].tag" Type="Str">{48C69831-47BD-43B7-BDB7-37D2458CF2A1}</Property>
				<Property Name="Source[0].FileCount" Type="Int">1</Property>
				<Property Name="Source[0].name" Type="Str">机械臂-labview控制仿真</Property>
				<Property Name="Source[0].tag" Type="Ref">/我的电脑/程序生成规范/机械臂-labview控制仿真</Property>
				<Property Name="Source[0].type" Type="Str">EXE</Property>
				<Property Name="SourceCount" Type="Int">1</Property>
			</Item>
		</Item>
	</Item>
</Project>
