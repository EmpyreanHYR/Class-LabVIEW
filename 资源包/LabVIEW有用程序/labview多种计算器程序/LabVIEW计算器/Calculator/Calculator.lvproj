<?xml version='1.0'?>
<Project Type="Project" LVVersion="8508002">
   <Item Name="My Computer" Type="My Computer">
      <Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
      <Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
      <Property Name="server.tcp.enabled" Type="Bool">false</Property>
      <Property Name="server.tcp.port" Type="Int">0</Property>
      <Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
      <Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
      <Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
      <Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
      <Property Name="specify.custom.address" Type="Bool">false</Property>
      <Item Name="Custom Controls" Type="Folder">
         <Item Name="Operation Buttons.ctl" Type="VI" URL="Custom Controls/Operation Buttons.ctl"/>
         <Item Name="Memory Options.ctl" Type="VI" URL="Custom Controls/Memory Options.ctl"/>
      </Item>
      <Item Name="SubVIs" Type="Folder">
         <Item Name="Overflow Protection.vi" Type="VI" URL="SubVIs/Overflow Protection.vi"/>
         <Item Name="Apply Decimal.vi" Type="VI" URL="SubVIs/Apply Decimal.vi"/>
         <Item Name="Backspace Decimal.vi" Type="VI" URL="SubVIs/Backspace Decimal.vi"/>
         <Item Name="Get &apos;M&apos; RefNum.vi" Type="VI" URL="SubVIs/Get &apos;M&apos; RefNum.vi"/>
         <Item Name="Button RefNum to Num.vi" Type="VI" URL="SubVIs/Button RefNum to Num.vi"/>
      </Item>
      <Item Name="Pictures" Type="Folder">
         <Item Name="LabVIEW.bmp" Type="Document" URL="Pictures/LabVIEW.bmp"/>
      </Item>
      <Item Name="Functional Globals" Type="Folder">
         <Item Name="Memory Functional Global.vi" Type="VI" URL="Functional Globals/Memory Functional Global.vi"/>
      </Item>
      <Item Name="Calculator.vi" Type="VI" URL="Calculator.vi"/>
      <Item Name="Dependencies" Type="Dependencies">
         <Item Name="vi.lib" Type="Folder">
            <Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
            <Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
            <Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
            <Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
            <Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
            <Item Name="General Error Handler CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler CORE.vi"/>
            <Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
            <Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
            <Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
            <Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
            <Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
            <Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
            <Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
            <Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
            <Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
            <Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
            <Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
            <Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
            <Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
            <Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
            <Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
            <Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
            <Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
            <Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
            <Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
            <Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
            <Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
            <Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
         </Item>
         <Item Name="Add To Display.vi" Type="VI" URL="SubVIs/Add To Display.vi"/>
         <Item Name="Backspace.vi" Type="VI" URL="SubVIs/Backspace.vi"/>
      </Item>
      <Item Name="Build Specifications" Type="Build">
         <Item Name="LabVIEW Calculator" Type="EXE">
            <Property Name="App_applicationGUID" Type="Str">{5D8A90B7-3FC0-4FA9-9CA4-3F3906993488}</Property>
            <Property Name="App_applicationName" Type="Str">LabVIEW Calculator.exe</Property>
            <Property Name="App_autoIncrement" Type="Bool">true</Property>
            <Property Name="App_companyName" Type="Str">National Instruments</Property>
            <Property Name="App_fileDescription" Type="Str">LabVIEW Calculator by Erik Johnson, National Instruments</Property>
            <Property Name="App_fileType" Type="Int">1</Property>
            <Property Name="App_fileVersion.build" Type="Int">4</Property>
            <Property Name="App_fileVersion.major" Type="Int">2</Property>
            <Property Name="App_INI_aliasGUID" Type="Str">{D6AF9F02-47C8-4096-92F9-4CED8EE48EFA}</Property>
            <Property Name="App_INI_GUID" Type="Str">{8FE480A1-FD95-4455-AEB9-0598FD53A6EE}</Property>
            <Property Name="App_internalName" Type="Str">LabVIEW Calculator</Property>
            <Property Name="App_legalCopyright" Type="Str">Copyright © 2007 National Instruments</Property>
            <Property Name="App_productName" Type="Str">LabVIEW Calculator</Property>
            <Property Name="Bld_buildSpecName" Type="Str">LabVIEW Calculator</Property>
            <Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
            <Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
            <Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
            <Property Name="Destination[0].destName" Type="Str">LabVIEW Calculator.exe</Property>
            <Property Name="Destination[0].path" Type="Path">../NI_AB_PROJECTNAME/Executable/internal.llb</Property>
            <Property Name="Destination[0].type" Type="Str">App</Property>
            <Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
            <Property Name="Destination[1].path" Type="Path">../NI_AB_PROJECTNAME/Executable/data</Property>
            <Property Name="DestinationCount" Type="Int">2</Property>
            <Property Name="Source[0].itemID" Type="Str">{B7750495-B80A-4D6B-BC70-3AF6FAAAF86A}</Property>
            <Property Name="Source[0].type" Type="Str">Container</Property>
            <Property Name="Source[1].destinationIndex" Type="Int">0</Property>
            <Property Name="Source[1].itemID" Type="Ref">/My Computer/Calculator.vi</Property>
            <Property Name="Source[1].properties[0].type" Type="Str">Show Abort button</Property>
            <Property Name="Source[1].properties[0].value" Type="Bool">false</Property>
            <Property Name="Source[1].propertiesCount" Type="Int">1</Property>
            <Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
            <Property Name="Source[1].type" Type="Str">VI</Property>
            <Property Name="SourceCount" Type="Int">2</Property>
         </Item>
         <Item Name="Calculator VI Installer" Type="Installer">
            <Property Name="Absolute" Type="Bool">true</Property>
            <Property Name="arpCompany" Type="Str">National Instruments</Property>
            <Property Name="arpContact" Type="Str">Erik Johnson</Property>
            <Property Name="arpURL" Type="Str">http://www.ni.com/</Property>
            <Property Name="AutoIncrement" Type="Bool">true</Property>
            <Property Name="BuildLabel" Type="Str">Calculator VI Installer</Property>
            <Property Name="BuildLocation" Type="Path">/C/Documents and Settings/ejohnson/Desktop/Calculator/Installer</Property>
            <Property Name="DirInfo.Count" Type="Int">1</Property>
            <Property Name="DirInfo.DefaultDir" Type="Str">{51E3EFC7-E80A-4A15-9580-D651E625156E}</Property>
            <Property Name="DirInfo[0].DirName" Type="Str">Calculator</Property>
            <Property Name="DirInfo[0].DirTag" Type="Str">{51E3EFC7-E80A-4A15-9580-D651E625156E}</Property>
            <Property Name="DirInfo[0].ParentTag" Type="Str">{3912416A-D2E5-411B-AFEE-B63654D690C0}</Property>
            <Property Name="DistID" Type="Str">{31239685-F7BE-4887-91D0-19FFA9F8D0DE}</Property>
            <Property Name="DistParts.Count" Type="Int">1</Property>
            <Property Name="DistPartsInfo[0].FlavorID" Type="Str">DefaultFull</Property>
            <Property Name="DistPartsInfo[0].ProductID" Type="Str">{47FFFF8E-A6E7-4C9A-AB7B-1BE0FE29A95A}</Property>
            <Property Name="DistPartsInfo[0].ProductName" Type="Str">NI LabVIEW Run-Time Engine 8.5</Property>
            <Property Name="DistPartsInfo[0].UpgradeCode" Type="Str">{99D796C3-2E53-4839-A25B-22C26B029103}</Property>
            <Property Name="FileInfo.Count" Type="Int">2</Property>
            <Property Name="FileInfo[0].DirTag" Type="Str">{51E3EFC7-E80A-4A15-9580-D651E625156E}</Property>
            <Property Name="FileInfo[0].FileName" Type="Str">LabVIEW Calculator.exe</Property>
            <Property Name="FileInfo[0].FileTag" Type="Str">{5D8A90B7-3FC0-4FA9-9CA4-3F3906993488}</Property>
            <Property Name="FileInfo[0].Type" Type="Int">3</Property>
            <Property Name="FileInfo[0].TypeID" Type="Ref">/My Computer/Build Specifications/LabVIEW Calculator</Property>
            <Property Name="FileInfo[1].DirTag" Type="Str">{51E3EFC7-E80A-4A15-9580-D651E625156E}</Property>
            <Property Name="FileInfo[1].FileName" Type="Str">LabVIEW Calculator.aliases</Property>
            <Property Name="FileInfo[1].FileTag" Type="Str">{D6AF9F02-47C8-4096-92F9-4CED8EE48EFA}</Property>
            <Property Name="FileInfo[1].Type" Type="Int">3</Property>
            <Property Name="FileInfo[1].TypeID" Type="Ref">/My Computer/Build Specifications/LabVIEW Calculator</Property>
            <Property Name="InstSpecVersion" Type="Str">8508002</Property>
            <Property Name="LicenseFile" Type="Ref"></Property>
            <Property Name="OSCheck" Type="Int">0</Property>
            <Property Name="OSCheck_Vista" Type="Bool">false</Property>
            <Property Name="ProductName" Type="Str">Calculator VI</Property>
            <Property Name="ProductVersion" Type="Str">1.0.2</Property>
            <Property Name="ReadmeFile" Type="Ref"></Property>
            <Property Name="ShortcutInfo.Count" Type="Int">1</Property>
            <Property Name="ShortcutInfo[0].DirTag" Type="Str">{B9E310F1-839C-48B7-8CAE-33000780C26E}</Property>
            <Property Name="ShortcutInfo[0].FileTag" Type="Str">{5D8A90B7-3FC0-4FA9-9CA4-3F3906993488}</Property>
            <Property Name="ShortcutInfo[0].FileTagDir" Type="Str">{51E3EFC7-E80A-4A15-9580-D651E625156E}</Property>
            <Property Name="ShortcutInfo[0].Name" Type="Str">LabVIEW Calculator</Property>
            <Property Name="ShortcutInfo[0].SubDir" Type="Str">Calculator VI</Property>
            <Property Name="UpgradeCode" Type="Str">{6412818E-0E5F-4F39-98D0-FDA33B34ED4F}</Property>
         </Item>
      </Item>
   </Item>
</Project>
