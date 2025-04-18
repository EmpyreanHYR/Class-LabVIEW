<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="14008000">
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
		<Item Name="SubVI" Type="Folder">
			<Item Name="DB" Type="Folder">
				<Item Name="GetDBPath.vi" Type="VI" URL="../SubVI/GetDBPath.vi"/>
				<Item Name="StoreUUTResult.vi" Type="VI" URL="../SubVI/StoreUUTResult.vi"/>
				<Item Name="CreateTableDB.vi" Type="VI" URL="../Example/CreateTableDB.vi"/>
				<Item Name="UpdateRecords.vi" Type="VI" URL="../SubVI/UpdateRecords.vi"/>
			</Item>
			<Item Name="TestFunctions" Type="Folder">
				<Item Name="SimulatedTHD.vi" Type="VI" URL="../SubVI/SimulatedTHD.vi"/>
				<Item Name="Simulated Serial Number.vi" Type="VI" URL="../SubVI/Simulated Serial Number.vi"/>
				<Item Name="SimulatedResult.vi" Type="VI" URL="../SubVI/SimulatedResult.vi"/>
			</Item>
		</Item>
		<Item Name="MainVI.vi" Type="VI" URL="../MainVI.vi"/>
		<Item Name="iPhoneData.mdb" Type="Document" URL="../data/iPhoneData.mdb"/>
		<Item Name="mdac_typ.exe" Type="Document" URL="/C/Program Files/National Instruments/LabVIEW 8.2/Database/MDAC/mdac_typ.exe"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="NI_Database_API.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/database/NI_Database_API.lvlib"/>
				<Item Name="GOOP Object Repository Method.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/_goopsup.llb/GOOP Object Repository Method.ctl"/>
				<Item Name="GOOP Object Repository Statistics.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/_goopsup.llb/GOOP Object Repository Statistics.ctl"/>
				<Item Name="GOOP Object Repository.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/_goopsup.llb/GOOP Object Repository.vi"/>
				<Item Name="VariantType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/VariantDataType/VariantType.lvlib"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="NI_MABase.lvlib" Type="Library" URL="/&lt;vilib&gt;/measure/NI_MABase.lvlib"/>
				<Item Name="NI_MAPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/measure/NI_MAPro.lvlib"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="Get File Extension.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Get File Extension.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="GetDBPathPure.vi" Type="VI" URL="../SubVI/GetDBPathPure.vi"/>
			<Item Name="Access File Compress Database.vi" Type="VI" URL="../Example/Access File Compress Database.vi"/>
			<Item Name="Access File Compact Database.vi" Type="VI" URL="../Example/Access File Compact Database.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="BuildExe" Type="EXE">
				<Property Name="App_INI_aliasGUID" Type="Str">{A1B95A5C-C8E8-4071-A102-6E10FAD6E67C}</Property>
				<Property Name="App_INI_GUID" Type="Str">{2552559F-7B2D-4D42-AD59-0F4CA8498381}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{E5A86FE8-A71D-4B0B-9085-53596A19E7C6}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">BuildExe</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeTypedefs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToProject</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{488ADDA8-6725-4E9E-94AE-C09952591350}</Property>
				<Property Name="Bld_targetDestDir" Type="Path"></Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">iPhoneTest.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../相关例程/builds/iPhoneTest.exe</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../相关例程/builds/data</Property>
				<Property Name="Destination[2].destName" Type="Str">Destination Directory</Property>
				<Property Name="Destination[2].path" Type="Path">../相关例程/builds</Property>
				<Property Name="DestinationCount" Type="Int">3</Property>
				<Property Name="Source[0].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[0].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[0].Container.applyProperties" Type="Bool">true</Property>
				<Property Name="Source[0].itemID" Type="Str">{555037EE-1626-4CB7-937B-521A6D38E836}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/SubVI</Property>
				<Property Name="Source[1].type" Type="Str">Container</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/SubVI/DB</Property>
				<Property Name="Source[2].type" Type="Str">Container</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/SubVI/TestFunctions</Property>
				<Property Name="Source[3].type" Type="Str">Container</Property>
				<Property Name="Source[4].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[4].itemID" Type="Ref">/My Computer/MainVI.vi</Property>
				<Property Name="Source[4].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[4].type" Type="Str">VI</Property>
				<Property Name="Source[5].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[5].itemID" Type="Ref">/My Computer/iPhoneData.mdb</Property>
				<Property Name="Source[5].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[5].type" Type="Str">Source</Property>
				<Property Name="SourceCount" Type="Int">6</Property>
				<Property Name="TgtF_companyName" Type="Str">national Instruments</Property>
				<Property Name="TgtF_internalName" Type="Str">iPhoneTest</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright 2007 national Instruments</Property>
				<Property Name="TgtF_productName" Type="Str">iPhoneTest</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{187477FD-16AE-4253-995A-64587EFA6AC7}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">iPhoneTest.exe</Property>
			</Item>
			<Item Name="My Installer" Type="Installer">
				<Property Name="Destination[0].name" Type="Str">DatabaseExample</Property>
				<Property Name="Destination[0].parent" Type="Str">{3912416A-D2E5-411B-AFEE-B63654D690C0}</Property>
				<Property Name="Destination[0].tag" Type="Str">{8E168125-4E1A-4C05-8DBF-4B427E46B6DD}</Property>
				<Property Name="Destination[0].type" Type="Str">userFolder</Property>
				<Property Name="Destination[1].name" Type="Str">data</Property>
				<Property Name="Destination[1].parent" Type="Str">{8E168125-4E1A-4C05-8DBF-4B427E46B6DD}</Property>
				<Property Name="Destination[1].tag" Type="Str">{F9555760-1A38-4493-A282-D0E82FF30B8A}</Property>
				<Property Name="Destination[1].type" Type="Str">userFolder</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="DistPart[0].flavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPart[0].productID" Type="Str">{3FF6680C-29B9-48D6-ADC6-08ACA8B99946}</Property>
				<Property Name="DistPart[0].productName" Type="Str">LabVIEW运行引擎 2014</Property>
				<Property Name="DistPart[0].upgradeCode" Type="Str">{4722F14B-8434-468D-840D-2B0CD8CBD5EA}</Property>
				<Property Name="DistPartCount" Type="Int">1</Property>
				<Property Name="INST_autoIncrement" Type="Bool">true</Property>
				<Property Name="INST_buildLocation" Type="Path">../Builds/DatabaseExample/My Installer</Property>
				<Property Name="INST_buildLocation.type" Type="Str">relativeToCommon</Property>
				<Property Name="INST_buildSpecName" Type="Str">My Installer</Property>
				<Property Name="INST_defaultDir" Type="Str">{8E168125-4E1A-4C05-8DBF-4B427E46B6DD}</Property>
				<Property Name="INST_productName" Type="Str">DatabaseExample</Property>
				<Property Name="INST_productVersion" Type="Str">1.0.2</Property>
				<Property Name="InstSpecBitness" Type="Str">32-bit</Property>
				<Property Name="InstSpecVersion" Type="Str">14008034</Property>
				<Property Name="MSI_arpCompany" Type="Str">national Instruments</Property>
				<Property Name="MSI_arpURL" Type="Str">http://www.nationalInstruments.com/</Property>
				<Property Name="MSI_distID" Type="Str">{C6E39995-CA1E-4403-B650-355DFE186C80}</Property>
				<Property Name="MSI_osCheck" Type="Int">0</Property>
				<Property Name="MSI_upgradeCode" Type="Str">{8FFD2D01-C21F-4E71-B10F-C03D145B9B79}</Property>
				<Property Name="RegDest[0].dirName" Type="Str">Software</Property>
				<Property Name="RegDest[0].dirTag" Type="Str">{DDFAFC8B-E728-4AC8-96DE-B920EBB97A86}</Property>
				<Property Name="RegDest[0].parentTag" Type="Str">2</Property>
				<Property Name="RegDestCount" Type="Int">1</Property>
				<Property Name="Source[0].dest" Type="Str">{8E168125-4E1A-4C05-8DBF-4B427E46B6DD}</Property>
				<Property Name="Source[0].File[0].dest" Type="Str">{8E168125-4E1A-4C05-8DBF-4B427E46B6DD}</Property>
				<Property Name="Source[0].File[0].name" Type="Str">iPhoneTest.exe</Property>
				<Property Name="Source[0].File[0].Shortcut[0].destIndex" Type="Int">0</Property>
				<Property Name="Source[0].File[0].Shortcut[0].name" Type="Str">iPhoneTest</Property>
				<Property Name="Source[0].File[0].Shortcut[0].subDir" Type="Str">DatabaseExample</Property>
				<Property Name="Source[0].File[0].ShortcutCount" Type="Int">1</Property>
				<Property Name="Source[0].File[0].tag" Type="Str">{187477FD-16AE-4253-995A-64587EFA6AC7}</Property>
				<Property Name="Source[0].FileCount" Type="Int">1</Property>
				<Property Name="Source[0].name" Type="Str">BuildExe</Property>
				<Property Name="Source[0].tag" Type="Ref">/My Computer/Build Specifications/BuildExe</Property>
				<Property Name="Source[0].type" Type="Str">EXE</Property>
				<Property Name="Source[1].dest" Type="Str">{F9555760-1A38-4493-A282-D0E82FF30B8A}</Property>
				<Property Name="Source[1].name" Type="Str">mdac_typ.exe</Property>
				<Property Name="Source[1].runEXE" Type="Bool">true</Property>
				<Property Name="Source[1].Shortcut[0].destIndex" Type="Int">0</Property>
				<Property Name="Source[1].Shortcut[0].name" Type="Str">mdac_typ</Property>
				<Property Name="Source[1].Shortcut[0].subDir" Type="Str">DatabaseExample</Property>
				<Property Name="Source[1].ShortcutCount" Type="Int">1</Property>
				<Property Name="Source[1].tag" Type="Ref">/My Computer/mdac_typ.exe</Property>
				<Property Name="Source[1].type" Type="Str">File</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
			</Item>
		</Item>
	</Item>
</Project>
