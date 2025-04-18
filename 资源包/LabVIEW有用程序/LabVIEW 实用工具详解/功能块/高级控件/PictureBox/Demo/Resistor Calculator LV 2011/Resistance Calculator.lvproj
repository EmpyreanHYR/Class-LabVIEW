<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="11008008">
	<Item Name="My Computer" Type="My Computer">
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
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="SubVIs" Type="Folder">
			<Item Name="Calc Resistance (SubVI).vi" Type="VI" URL="../SubVI/Calc Resistance (SubVI).vi"/>
			<Item Name="Get Resistance String (SubVI).vi" Type="VI" URL="../SubVI/Get Resistance String (SubVI).vi"/>
			<Item Name="Get Tolerance String (SubVI).vi" Type="VI" URL="../SubVI/Get Tolerance String (SubVI).vi"/>
			<Item Name="Get Tolerance Val (SubVI).vi" Type="VI" URL="../SubVI/Get Tolerance Val (SubVI).vi"/>
		</Item>
		<Item Name="Resistor calculator.vi" Type="VI" URL="../Resistor calculator.vi"/>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Resistor Calculator" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{2E2433AB-A4DA-4297-918A-1DB405379189}</Property>
				<Property Name="App_INI_GUID" Type="Str">{81A37C63-1374-4332-BDF0-EF29B7FC2AE1}</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{AC8A6C0B-604C-4A3E-A506-12136F0B313B}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Resistor Calculator</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/Resistor Calculator</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{2E53D706-1F0B-46F9-AD55-BC061D53D256}</Property>
				<Property Name="Destination[0].destName" Type="Str">ResistorCalculator.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/Resistor Calculator/ResistorCalculator.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/Resistor Calculator/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{AC546354-264F-4AAC-822B-10BB0BC5633D}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Resistor calculator.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/SubVIs</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">Container</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_companyName" Type="Str">NI</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Resistor Calculator</Property>
				<Property Name="TgtF_fileVersion.major" Type="Int">1</Property>
				<Property Name="TgtF_internalName" Type="Str">Resistor Calculator</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2011 NI</Property>
				<Property Name="TgtF_productName" Type="Str">Resistor Calculator</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{12F8995C-D6B5-4559-9887-90F9D6E148B6}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">ResistorCalculator.exe</Property>
			</Item>
		</Item>
	</Item>
</Project>
