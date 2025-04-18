<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="14008000">
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
		<Item Name="测试demo.vi" Type="VI" URL="../测试demo.vi"/>
		<Item Name="初始化注册表.vi" Type="VI" URL="../初始化注册表.vi"/>
		<Item Name="注册机.vi" Type="VI" URL="../注册机.vi"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="user.lib" Type="Folder">
				<Item Name="MD5 F function__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/md5/md5.llb/MD5 F function__ogtk.vi"/>
				<Item Name="MD5 FGHI functions__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/md5/md5.llb/MD5 FGHI functions__ogtk.vi"/>
				<Item Name="MD5 G function__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/md5/md5.llb/MD5 G function__ogtk.vi"/>
				<Item Name="MD5 H function__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/md5/md5.llb/MD5 H function__ogtk.vi"/>
				<Item Name="MD5 I function__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/md5/md5.llb/MD5 I function__ogtk.vi"/>
				<Item Name="MD5 Message Digest (Binary String)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/md5/md5.llb/MD5 Message Digest (Binary String)__ogtk.vi"/>
				<Item Name="MD5 Message Digest (Hexadecimal String)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/md5/md5.llb/MD5 Message Digest (Hexadecimal String)__ogtk.vi"/>
				<Item Name="MD5 Message Digest__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/md5/md5.llb/MD5 Message Digest__ogtk.vi"/>
				<Item Name="MD5 Padding__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/md5/md5.llb/MD5 Padding__ogtk.vi"/>
				<Item Name="MD5 ti__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/md5/md5.llb/MD5 ti__ogtk.vi"/>
				<Item Name="MD5 Unrecoverable character padding__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/md5/md5.llb/MD5 Unrecoverable character padding__ogtk.vi"/>
			</Item>
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Close Registry Key.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Close Registry Key.vi"/>
				<Item Name="Image Type" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/Image Type"/>
				<Item Name="IMAQ Create" Type="VI" URL="/&lt;vilib&gt;/vision/Basics.llb/IMAQ Create"/>
				<Item Name="IMAQ Image.ctl" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/IMAQ Image.ctl"/>
				<Item Name="IMAQ Load Image Dialog" Type="VI" URL="/&lt;vilib&gt;/vision/Files.llb/IMAQ Load Image Dialog"/>
				<Item Name="IMAQ ReadFile" Type="VI" URL="/&lt;vilib&gt;/vision/Files.llb/IMAQ ReadFile"/>
				<Item Name="Open Registry Key.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Open Registry Key.vi"/>
				<Item Name="Read Registry Value DWORD.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value DWORD.vi"/>
				<Item Name="Read Registry Value Simple STR.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value Simple STR.vi"/>
				<Item Name="Read Registry Value Simple U32.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value Simple U32.vi"/>
				<Item Name="Read Registry Value Simple.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value Simple.vi"/>
				<Item Name="Read Registry Value STR.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value STR.vi"/>
				<Item Name="Read Registry Value.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value.vi"/>
				<Item Name="Registry Handle Master.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry Handle Master.vi"/>
				<Item Name="Registry refnum.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry refnum.ctl"/>
				<Item Name="Registry RtKey.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry RtKey.ctl"/>
				<Item Name="Registry SAM.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry SAM.ctl"/>
				<Item Name="Registry Simplify Data Type.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry Simplify Data Type.vi"/>
				<Item Name="Registry View.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry View.ctl"/>
				<Item Name="Registry WinErr-LVErr.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry WinErr-LVErr.vi"/>
				<Item Name="STR_ASCII-Unicode.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/STR_ASCII-Unicode.vi"/>
				<Item Name="System Exec.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/System Exec.vi"/>
				<Item Name="Write Registry Value DWORD.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Write Registry Value DWORD.vi"/>
				<Item Name="Write Registry Value Simple STR.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Write Registry Value Simple STR.vi"/>
				<Item Name="Write Registry Value Simple U32.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Write Registry Value Simple U32.vi"/>
				<Item Name="Write Registry Value Simple.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Write Registry Value Simple.vi"/>
				<Item Name="Write Registry Value STR.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Write Registry Value STR.vi"/>
				<Item Name="Write Registry Value.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Write Registry Value.vi"/>
			</Item>
			<Item Name="Advapi32.dll" Type="Document" URL="Advapi32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="kernel32.dll" Type="Document" URL="kernel32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="nivision.dll" Type="Document" URL="nivision.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="nivissvc.dll" Type="Document" URL="nivissvc.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="菜单.rtm" Type="Document" URL="../菜单.rtm"/>
			<Item Name="创建注册表.vi" Type="VI" URL="../创建注册表.vi"/>
			<Item Name="读写注册表.vi" Type="VI" URL="../读写注册表.vi"/>
			<Item Name="更新t2.vi" Type="VI" URL="../更新t2.vi"/>
			<Item Name="客户端校验.vi" Type="VI" URL="../客户端校验.vi"/>
			<Item Name="判断时间正常.vi" Type="VI" URL="../判断时间正常.vi"/>
			<Item Name="判断试用期.vi" Type="VI" URL="../判断试用期.vi"/>
			<Item Name="生成机器码.vi" Type="VI" URL="../生成机器码.vi"/>
			<Item Name="校验license.vi" Type="VI" URL="../校验license.vi"/>
		</Item>
		<Item Name="程序生成规范" Type="Build">
			<Item Name="license-demo" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{BD537418-FFC1-470E-BE22-F21C913DD573}</Property>
				<Property Name="App_INI_GUID" Type="Str">{B41FFA2D-DCDA-414C-8107-20C89BD1B2B6}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{35567761-2194-4E46-B8DA-500A4072E82E}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">license-demo</Property>
				<Property Name="Bld_defaultLanguage" Type="Str">ChineseS</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/license-demo</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{9649712B-7D56-447C-965E-8054449B00B9}</Property>
				<Property Name="Bld_version.build" Type="Int">3</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">license-demo.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/license-demo/license-demo.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">支持目录</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/license-demo/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Exe_actXinfo_enumCLSID[0]" Type="Str">{8085B30F-3BB8-4263-98A0-AC2EC3FE331C}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[1]" Type="Str">{7F916F49-6D33-4ED1-912D-81D5626A73A0}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[10]" Type="Str">{4EC08669-1EDC-46B3-A15C-B35EFD05E764}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[11]" Type="Str">{C0DB2117-280D-49AB-9452-73C28A6D2F89}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[12]" Type="Str">{2747FD6A-C362-4AEE-9839-55141DC9972C}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[13]" Type="Str">{7646F124-1080-4C34-8E7B-F3722DD6A422}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[14]" Type="Str">{C95424C8-235A-4DF3-932B-937A71C61C5B}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[15]" Type="Str">{D7712EAA-D321-42C7-A3D2-03CDD5F1704A}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[16]" Type="Str">{1F82F4E9-0C19-46DA-8BBC-79B195CE7EAC}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[2]" Type="Str">{B9613ED8-7901-41A3-91BD-075EB53D2494}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[3]" Type="Str">{76695AD4-B2EA-4331-8D39-8DE51D4C7D59}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[4]" Type="Str">{07B0D4BC-02AB-43B4-B836-1F9D1249A8B9}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[5]" Type="Str">{68216889-8DCD-42E8-AB8D-D85EDF209F61}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[6]" Type="Str">{E01F8DCF-E4D2-48E3-955D-8779D3E334DA}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[7]" Type="Str">{864DFB8C-57C9-4A4B-AF8B-275F77F920FB}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[8]" Type="Str">{7E69717C-C8D6-4888-B6CE-9DB02963D7A4}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[9]" Type="Str">{7CEF5580-8259-4212-9162-B9A982FE0081}</Property>
				<Property Name="Exe_actXinfo_enumCLSIDsCount" Type="Int">17</Property>
				<Property Name="Exe_actXinfo_majorVersion" Type="Int">5</Property>
				<Property Name="Exe_actXinfo_minorVersion" Type="Int">5</Property>
				<Property Name="Exe_actXinfo_objCLSID[0]" Type="Str">{A4AF605E-A958-4C71-A2B1-64638A19E843}</Property>
				<Property Name="Exe_actXinfo_objCLSID[1]" Type="Str">{7150B29F-AF0A-4D28-9BD3-60DB9D959C93}</Property>
				<Property Name="Exe_actXinfo_objCLSID[10]" Type="Str">{221C3645-37BD-4F04-ABEA-00F2463E0C5C}</Property>
				<Property Name="Exe_actXinfo_objCLSID[11]" Type="Str">{48976A81-C488-4FCC-BA02-7ACA28DDF18C}</Property>
				<Property Name="Exe_actXinfo_objCLSID[12]" Type="Str">{BA1AF306-5698-4799-B8EE-4BF739167B01}</Property>
				<Property Name="Exe_actXinfo_objCLSID[13]" Type="Str">{58FA12D0-A59C-4282-BCEE-3157872525BC}</Property>
				<Property Name="Exe_actXinfo_objCLSID[2]" Type="Str">{8F425C55-DE10-4683-B897-EF208886EDD3}</Property>
				<Property Name="Exe_actXinfo_objCLSID[3]" Type="Str">{7CD2F024-C980-456A-ABA3-49DCFAE1801D}</Property>
				<Property Name="Exe_actXinfo_objCLSID[4]" Type="Str">{4498444C-3C36-42E9-AC30-4C7E21EC95C9}</Property>
				<Property Name="Exe_actXinfo_objCLSID[5]" Type="Str">{399E1731-7E5C-4135-ABE8-3B72244B7DE4}</Property>
				<Property Name="Exe_actXinfo_objCLSID[6]" Type="Str">{64D6047F-2BEB-427C-8914-516DC1B2837E}</Property>
				<Property Name="Exe_actXinfo_objCLSID[7]" Type="Str">{E607097D-1D87-49A5-8DD4-735DD2050CF3}</Property>
				<Property Name="Exe_actXinfo_objCLSID[8]" Type="Str">{F070DC1C-B438-46B2-829F-2F876B46F222}</Property>
				<Property Name="Exe_actXinfo_objCLSID[9]" Type="Str">{3A20D8E5-E2C1-4703-B193-D6ED4CCB2C1F}</Property>
				<Property Name="Exe_actXinfo_objCLSIDsCount" Type="Int">14</Property>
				<Property Name="Exe_actXinfo_progIDPrefix" Type="Str">LicenseDemo</Property>
				<Property Name="Exe_actXServerName" Type="Str">LicenseDemo</Property>
				<Property Name="Exe_actXServerNameGUID" Type="Str">{BBF8AEA1-30C3-4C4E-8E29-8E19CF0F8A58}</Property>
				<Property Name="Source[0].itemID" Type="Str">{C08F7F85-197E-4329-AAEE-3B35B9920A75}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/我的电脑/测试demo.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_fileDescription" Type="Str">license-demo</Property>
				<Property Name="TgtF_internalName" Type="Str">license-demo</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">版权 2019 </Property>
				<Property Name="TgtF_productName" Type="Str">license-demo</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{56EC467E-8000-44E6-B9DB-ADACEC415A8B}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">license-demo.exe</Property>
			</Item>
			<Item Name="license-demo-install" Type="Installer">
				<Property Name="Destination[0].name" Type="Str">license-demo</Property>
				<Property Name="Destination[0].parent" Type="Str">{3912416A-D2E5-411B-AFEE-B63654D690C0}</Property>
				<Property Name="Destination[0].tag" Type="Str">{1EF0D0AE-44C1-4BDE-A9B2-5461D05958CE}</Property>
				<Property Name="Destination[0].type" Type="Str">userFolder</Property>
				<Property Name="DestinationCount" Type="Int">1</Property>
				<Property Name="DistPart[0].flavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPart[0].productID" Type="Str">{A648895B-B83C-4230-BD46-2EDD7D7B6811}</Property>
				<Property Name="DistPart[0].productName" Type="Str">NI Vision Common Resources 2014 f1</Property>
				<Property Name="DistPart[0].upgradeCode" Type="Str">{409BEFA9-EB3E-472F-AD77-271A4A1D5927}</Property>
				<Property Name="DistPart[1].flavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPart[1].productID" Type="Str">{1601A0F4-B5D1-4488-881C-9158DFB0D05C}</Property>
				<Property Name="DistPart[1].productName" Type="Str">LabVIEW运行引擎 2014</Property>
				<Property Name="DistPart[1].SoftDep[0].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[0].productName" Type="Str">NI LabVIEW 2014运行引擎非英语语言支持</Property>
				<Property Name="DistPart[1].SoftDep[0].upgradeCode" Type="Str">{CAC8FA79-6D3D-4263-BB7B-1A706EF87C08}</Property>
				<Property Name="DistPart[1].SoftDep[1].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[1].productName" Type="Str">NI ActiveX容器</Property>
				<Property Name="DistPart[1].SoftDep[1].upgradeCode" Type="Str">{1038A887-23E1-4289-B0BD-0C4B83C6BA21}</Property>
				<Property Name="DistPart[1].SoftDep[10].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[10].productName" Type="Str">NI mDNS Responder 14.0</Property>
				<Property Name="DistPart[1].SoftDep[10].upgradeCode" Type="Str">{9607874B-4BB3-42CB-B450-A2F5EF60BA3B}</Property>
				<Property Name="DistPart[1].SoftDep[11].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[11].productName" Type="Str">NI Deployment Framework 2014</Property>
				<Property Name="DistPart[1].SoftDep[11].upgradeCode" Type="Str">{838942E4-B73C-492E-81A3-AA1E291FD0DC}</Property>
				<Property Name="DistPart[1].SoftDep[12].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[12].productName" Type="Str">NI错误报告 2014</Property>
				<Property Name="DistPart[1].SoftDep[12].upgradeCode" Type="Str">{42E818C6-2B08-4DE7-BD91-B0FD704C119A}</Property>
				<Property Name="DistPart[1].SoftDep[2].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[2].productName" Type="Str">NI服务定位器 14.0</Property>
				<Property Name="DistPart[1].SoftDep[2].upgradeCode" Type="Str">{B235B862-6A92-4A04-A8B2-6D71F777DE67}</Property>
				<Property Name="DistPart[1].SoftDep[3].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[3].productName" Type="Str">数学核心库</Property>
				<Property Name="DistPart[1].SoftDep[3].upgradeCode" Type="Str">{3BDD0408-2F90-4B42-9777-5ED1D4BE67A8}</Property>
				<Property Name="DistPart[1].SoftDep[4].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[4].productName" Type="Str">NI Logos 14.0</Property>
				<Property Name="DistPart[1].SoftDep[4].upgradeCode" Type="Str">{5E4A4CE3-4D06-11D4-8B22-006008C16337}</Property>
				<Property Name="DistPart[1].SoftDep[5].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[5].productName" Type="Str">NI TDM Streaming 14.0</Property>
				<Property Name="DistPart[1].SoftDep[5].upgradeCode" Type="Str">{4CD11BE6-6BB7-4082-8A27-C13771BC309B}</Property>
				<Property Name="DistPart[1].SoftDep[6].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[6].productName" Type="Str">NI LabVIEW Web服务器 2014</Property>
				<Property Name="DistPart[1].SoftDep[6].upgradeCode" Type="Str">{4A8BDBBB-DA1C-45C9-8563-74C034FBD357}</Property>
				<Property Name="DistPart[1].SoftDep[7].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[7].productName" Type="Str">NI LabVIEW Real-Time NBFifo 2014</Property>
				<Property Name="DistPart[1].SoftDep[7].upgradeCode" Type="Str">{4372F3E3-5935-4012-93AB-B6710CE24920}</Property>
				<Property Name="DistPart[1].SoftDep[8].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[8].productName" Type="Str">NI VC2008MSMs</Property>
				<Property Name="DistPart[1].SoftDep[8].upgradeCode" Type="Str">{FDA3F8BB-BAA9-45D7-8DC7-22E1F5C76315}</Property>
				<Property Name="DistPart[1].SoftDep[9].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[9].productName" Type="Str">NI VC2010MSMs</Property>
				<Property Name="DistPart[1].SoftDep[9].upgradeCode" Type="Str">{EFBA6F9E-F934-4BD7-AC51-60CCA480489C}</Property>
				<Property Name="DistPart[1].SoftDepCount" Type="Int">13</Property>
				<Property Name="DistPart[1].upgradeCode" Type="Str">{4722F14B-8434-468D-840D-2B0CD8CBD5EA}</Property>
				<Property Name="DistPartCount" Type="Int">2</Property>
				<Property Name="INST_autoIncrement" Type="Bool">true</Property>
				<Property Name="INST_buildLocation" Type="Path">../builds/license-demo-install/license-demo-install</Property>
				<Property Name="INST_buildLocation.type" Type="Str">relativeToCommon</Property>
				<Property Name="INST_buildSpecName" Type="Str">license-demo-install</Property>
				<Property Name="INST_defaultDir" Type="Str">{1EF0D0AE-44C1-4BDE-A9B2-5461D05958CE}</Property>
				<Property Name="INST_language" Type="Int">2052</Property>
				<Property Name="INST_productName" Type="Str">license-demo-install</Property>
				<Property Name="INST_productVersion" Type="Str">1.0.1</Property>
				<Property Name="InstSpecBitness" Type="Str">32-bit</Property>
				<Property Name="InstSpecVersion" Type="Str">14008034</Property>
				<Property Name="MSI_autoselectDrivers" Type="Bool">true</Property>
				<Property Name="MSI_distID" Type="Str">{A32A9C89-E0AC-41AA-96CB-522F027D29F8}</Property>
				<Property Name="MSI_osCheck" Type="Int">0</Property>
				<Property Name="MSI_upgradeCode" Type="Str">{67F7C036-28F0-4FD3-B8FF-CC638300BB5C}</Property>
				<Property Name="RegDest[0].dirName" Type="Str">Software</Property>
				<Property Name="RegDest[0].dirTag" Type="Str">{DDFAFC8B-E728-4AC8-96DE-B920EBB97A86}</Property>
				<Property Name="RegDest[0].parentTag" Type="Str">2</Property>
				<Property Name="RegDestCount" Type="Int">1</Property>
				<Property Name="Source[0].dest" Type="Str">{1EF0D0AE-44C1-4BDE-A9B2-5461D05958CE}</Property>
				<Property Name="Source[0].File[0].dest" Type="Str">{1EF0D0AE-44C1-4BDE-A9B2-5461D05958CE}</Property>
				<Property Name="Source[0].File[0].name" Type="Str">license-demo.exe</Property>
				<Property Name="Source[0].File[0].Shortcut[0].destIndex" Type="Int">1</Property>
				<Property Name="Source[0].File[0].Shortcut[0].name" Type="Str">license-demo</Property>
				<Property Name="Source[0].File[0].Shortcut[0].subDir" Type="Str">license-demo</Property>
				<Property Name="Source[0].File[0].ShortcutCount" Type="Int">1</Property>
				<Property Name="Source[0].File[0].tag" Type="Str">{56EC467E-8000-44E6-B9DB-ADACEC415A8B}</Property>
				<Property Name="Source[0].FileCount" Type="Int">1</Property>
				<Property Name="Source[0].name" Type="Str">license-demo</Property>
				<Property Name="Source[0].tag" Type="Ref">/我的电脑/程序生成规范/license-demo</Property>
				<Property Name="Source[0].type" Type="Str">EXE</Property>
				<Property Name="SourceCount" Type="Int">1</Property>
			</Item>
			<Item Name="注册机" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{FC9048C3-108D-41E4-B9CF-0196346CE87C}</Property>
				<Property Name="App_INI_GUID" Type="Str">{2672254B-56D9-457A-8D9F-793D1E08541A}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{D67C9980-C656-4CAA-8E14-B0F18CF8A8C5}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">注册机</Property>
				<Property Name="Bld_defaultLanguage" Type="Str">ChineseS</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/注册机</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{FE2CF235-53E2-4AEA-B695-91BB3AA8B9A9}</Property>
				<Property Name="Bld_version.build" Type="Int">3</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">注册机.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/注册机/注册机.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">支持目录</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/注册机/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{C08F7F85-197E-4329-AAEE-3B35B9920A75}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/我的电脑/注册机.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_fileDescription" Type="Str">注册机</Property>
				<Property Name="TgtF_internalName" Type="Str">注册机</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">版权 2019 </Property>
				<Property Name="TgtF_productName" Type="Str">注册机</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{59115806-F350-4990-B952-6A424BE6D3CF}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">注册机.exe</Property>
			</Item>
		</Item>
	</Item>
</Project>
