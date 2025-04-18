<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="13008000">
	<Item Name="我的电脑" Type="My Computer">
		<Property Name="IOScan.Faults" Type="Str"></Property>
		<Property Name="IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="IOScan.Period" Type="UInt">10000</Property>
		<Property Name="IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="IOScan.Priority" Type="UInt">9</Property>
		<Property Name="IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="IOScan.StartEngineOnDeploy" Type="Bool">false</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">我的电脑/VI服务器</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">我的电脑/VI服务器</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="插件" Type="Folder">
			<Item Name="插件子VI" Type="Folder">
				<Item Name="插件_高斯噪声.vi" Type="VI" URL="../data/插件子VI/插件_高斯噪声.vi"/>
				<Item Name="插件_均匀白噪声.vi" Type="VI" URL="../data/插件子VI/插件_均匀白噪声.vi"/>
			</Item>
			<Item Name="噪声发生器DEMO.vi" Type="VI" URL="../插件/噪声发生器DEMO.vi"/>
		</Item>
		<Item Name="动态调用可重入VI" Type="Folder">
			<Item Name="动态调用可重入VI.vi" Type="VI" URL="../可重入VI/动态调用可重入VI.vi"/>
			<Item Name="可重入.vi" Type="VI" URL="../可重入VI/可重入.vi"/>
		</Item>
		<Item Name="动态调用显示前面板的VI" Type="Folder">
			<Item Name="Main.vi" Type="VI" URL="../动态调用显示前面板的子VI/Main.vi"/>
			<Item Name="闪屏.vi" Type="VI" URL="../动态调用显示前面板的子VI/闪屏.vi"/>
		</Item>
		<Item Name="后台任务" Type="Folder">
			<Item Name="后台任务.vi" Type="VI" URL="../后台任务/后台任务.vi"/>
			<Item Name="后台任务主调VI.vi" Type="VI" URL="../后台任务/后台任务主调VI.vi"/>
			<Item Name="静态调用的后台任务.vi" Type="VI" URL="../后台任务/静态调用的后台任务.vi"/>
			<Item Name="静态调用的后台任务主调VI.vi" Type="VI" URL="../后台任务/静态调用的后台任务主调VI.vi"/>
			<Item Name="事件结构+定时循环模式.vi" Type="VI" URL="../后台任务/事件结构+定时循环模式.vi"/>
		</Item>
		<Item Name="子面板" Type="Folder">
			<Item Name="动态调用与子面板.vi" Type="VI" URL="../../子面板/动态调用与子面板.vi"/>
		</Item>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="FormatTime String.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/FormatTime String.vi"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_MABase.lvlib" Type="Library" URL="/&lt;vilib&gt;/measure/NI_MABase.lvlib"/>
				<Item Name="Stop Timed Structure.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/TimedLoop/scheduler/LVUserAPI/Stop Timed Structure.vi"/>
				<Item Name="subElapsedTime.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/subElapsedTime.vi"/>
			</Item>
			<Item Name="0~1随机发生器.vi" Type="VI" URL="../../../../数学/随机数/0-1随机数发生器/0~1随机发生器.vi"/>
			<Item Name="0~1随机数发生器1D（dbl)(白噪声）.vi" Type="VI" URL="../../../../数学/随机数/0-1随机数发生器/0~1随机数发生器1D（dbl)(白噪声）.vi"/>
			<Item Name="0~1随机数发生器1D（dbl).vi" Type="VI" URL="../../../../数学/随机数/0-1随机数发生器/0~1随机数发生器1D（dbl).vi"/>
			<Item Name="0~1随机数发生器2D（dbl).vi" Type="VI" URL="../../../../数学/随机数/0-1随机数发生器/0~1随机数发生器2D（dbl).vi"/>
			<Item Name="0~1随机数发生器（dbl).vi" Type="VI" URL="../../../../数学/随机数/0-1随机数发生器/0~1随机数发生器（dbl).vi"/>
			<Item Name="lvalarms.dll" Type="Document" URL="lvalarms.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="NISAST Event.lvclass" Type="LVClass" URL="/&lt;resource&gt;/importtools/Common/Event/NISAST Event.lvclass"/>
			<Item Name="指定范围的随机数(dbl).vi" Type="VI" URL="../../../../数学/随机数/指定范围的随机数/指定范围的随机数(dbl).vi"/>
			<Item Name="指定范围的随机数.vi" Type="VI" URL="../../../../数学/随机数/指定范围的随机数/指定范围的随机数.vi"/>
			<Item Name="指定范围的随机数1D(dbl).vi" Type="VI" URL="../../../../数学/随机数/指定范围的随机数/指定范围的随机数1D(dbl).vi"/>
			<Item Name="指定范围的随机数2D(dbl).vi" Type="VI" URL="../../../../数学/随机数/指定范围的随机数/指定范围的随机数2D(dbl).vi"/>
		</Item>
		<Item Name="程序生成规范" Type="Build">
			<Item Name="插件" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{EE2AE309-E970-4EA1-AEF5-7B13526E5598}</Property>
				<Property Name="App_INI_GUID" Type="Str">{F87F6AC3-C4CD-4C76-A588-5C0E3852B884}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{0DF264E4-0C15-49EC-91E1-DB13AC51AC07}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">插件</Property>
				<Property Name="Bld_defaultLanguage" Type="Str">ChineseS</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/插件</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{1A38CE3C-2C30-4A09-BBAA-A9079C22D904}</Property>
				<Property Name="Bld_version.build" Type="Int">8</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">插件.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/插件/插件.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">支持目录</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/插件/data</Property>
				<Property Name="Destination[2].destName" Type="Str">data\插件子VI</Property>
				<Property Name="Destination[2].path" Type="Path">../builds/NI_AB_PROJECTNAME/插件/data\插件子VI</Property>
				<Property Name="DestinationCount" Type="Int">3</Property>
				<Property Name="Source[0].itemID" Type="Str">{234DADE6-D039-4858-BE72-937ADC7C9B88}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/我的电脑/插件/噪声发生器DEMO.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[2].itemID" Type="Ref">/我的电脑/插件/插件子VI/插件_高斯噪声.vi</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[3].itemID" Type="Ref">/我的电脑/插件/插件子VI/插件_均匀白噪声.vi</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[3].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">4</Property>
				<Property Name="TgtF_fileDescription" Type="Str">插件</Property>
				<Property Name="TgtF_internalName" Type="Str">插件</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">版权 2013 </Property>
				<Property Name="TgtF_productName" Type="Str">插件</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{6F36C196-CEC7-4A25-B5D8-E0453C9E77D4}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">插件.exe</Property>
			</Item>
		</Item>
	</Item>
</Project>
