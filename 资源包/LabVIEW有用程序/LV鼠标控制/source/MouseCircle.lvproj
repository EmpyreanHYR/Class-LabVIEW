<?xml version='1.0'?>
<Project Type="Project" LVVersion="8208000">
   <Item Name="マイ コンピュータ" Type="My Computer">
      <Property Name="CCSymbols" Type="Str">OS,Win;CPU,x86;</Property>
      <Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
      <Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
      <Property Name="server.tcp.enabled" Type="Bool">false</Property>
      <Property Name="server.tcp.port" Type="Int">0</Property>
      <Property Name="server.tcp.serviceName" Type="Str">マイ コンピュータ/VIサーバ</Property>
      <Property Name="server.tcp.serviceName.default" Type="Str">マイ コンピュータ/VIサーバ</Property>
      <Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
      <Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
      <Property Name="specify.custom.address" Type="Bool">false</Property>
      <Item Name="unittests" Type="Folder">
         <Item Name="RunTests.vi" Type="VI" URL="test/RunTests.vi"/>
      </Item>
      <Item Name="callback" Type="Folder">
         <Item Name="configure.vi" Type="VI" URL="callback/configure.vi"/>
         <Item Name="exit.vi" Type="VI" URL="callback/exit.vi"/>
         <Item Name="message.ctl" Type="VI" URL="callback/message.ctl"/>
         <Item Name="messageEventRef.ctl" Type="VI" URL="callback/messageEventRef.ctl"/>
         <Item Name="template.vit" Type="VI" URL="callback/template.vit"/>
         <Item Name="toggleCircle.vi" Type="VI" URL="callback/toggleCircle.vi"/>
      </Item>
      <Item Name="subVI" Type="Folder">
         <Item Name="Current VIs Reference.vi" Type="VI" URL="subVI/Current VIs Reference.vi"/>
         <Item Name="SetupNotifyIcon.vi" Type="VI" URL="subVI/SetupNotifyIcon.vi"/>
         <Item Name="SetupUserEvent.vi" Type="VI" URL="subVI/SetupUserEvent.vi"/>
         <Item Name="ToggleCircleDisplay.vi" Type="VI" URL="subVI/ToggleCircleDisplay.vi"/>
         <Item Name="RigisterHotKey.vi" Type="VI" URL="subVI/RigisterHotKey.vi"/>
         <Item Name="UnregisterHotKey.vi" Type="VI" URL="subVI/UnregisterHotKey.vi"/>
         <Item Name="TeardownNotifyIcon.vi" Type="VI" URL="subVI/TeardownNotifyIcon.vi"/>
         <Item Name="TeardownUserEvent.vi" Type="VI" URL="subVI/TeardownUserEvent.vi"/>
      </Item>
      <Item Name="data" Type="Folder">
         <Item Name="mousecircle.ico" Type="Document" URL="data/mousecircle.ico"/>
         <Item Name="MouseCircle.ini" Type="Document" URL="data/MouseCircle.ini"/>
      </Item>
      <Item Name="inifile" Type="Folder">
         <Item Name="StripVINameFromCurrentPath.vi" Type="VI" URL="inifile/StripVINameFromCurrentPath.vi"/>
         <Item Name="WriteIniFile.vi" Type="VI" URL="inifile/WriteIniFile.vi"/>
         <Item Name="IniFilePath.vi" Type="VI" URL="inifile/IniFilePath.vi"/>
         <Item Name="ReadIniFile.vi" Type="VI" URL="inifile/ReadIniFile.vi"/>
      </Item>
      <Item Name="MouseCircle.vi" Type="VI" URL="MouseCircle.vi"/>
      <Item Name="Model.lvlib" Type="Library" URL="model/Model.lvlib">
         <Item Name="data.ctl" Type="VI" URL="model/data.ctl"/>
         <Item Name="_model.vi" Type="VI" URL="model/_model.vi"/>
      </Item>
      <Item Name="WindowsMessageQueue.lvlib" Type="Library" URL="windows_messaging_que/WindowsMessageQueue.lvlib">
         <Item Name="Create Windows Message Queue.vi" Type="VI" URL="windows_messaging_que/Windows Message Queue.llb/Create Windows Message Queue.vi"/>
         <Item Name="Destroy Windows Message Queue.vi" Type="VI" URL="windows_messaging_que/Windows Message Queue.llb/Destroy Windows Message Queue.vi"/>
         <Item Name="Flush Windows Message Queue.vi" Type="VI" URL="windows_messaging_que/Windows Message Queue.llb/Flush Windows Message Queue.vi"/>
         <Item Name="Generate Error Cluster.vi" Type="VI" URL="windows_messaging_que/Windows Message Queue.llb/Generate Error Cluster.vi"/>
         <Item Name="Get Next Windows Message.vi" Type="VI" URL="windows_messaging_que/Windows Message Queue.llb/Get Next Windows Message.vi"/>
         <Item Name="Get VI Window Title.vi" Type="VI" URL="windows_messaging_que/Windows Message Queue.llb/Get VI Window Title.vi"/>
         <Item Name="Get Window RefNum.vi" Type="VI" URL="windows_messaging_que/Windows Message Queue.llb/Get Window RefNum.vi"/>
         <Item Name="Not A Windows Message Queue.vi" Type="VI" URL="windows_messaging_que/Windows Message Queue.llb/Not A Windows Message Queue.vi"/>
         <Item Name="Wait for Windows Message.vi" Type="VI" URL="windows_messaging_que/Windows Message Queue.llb/Wait for Windows Message.vi"/>
         <Item Name="Win Msg Queue RefNum" Type="VI" URL="windows_messaging_que/Windows Message Queue.llb/Win Msg Queue RefNum"/>
         <Item Name="Window Refnum" Type="VI" URL="windows_messaging_que/Windows Message Queue.llb/Window Refnum"/>
         <Item Name="Windows Message Queue Size.vi" Type="VI" URL="windows_messaging_que/Windows Message Queue.llb/Windows Message Queue Size.vi"/>
         <Item Name="Windows Messages for LabVIEW.dll" Type="Document" URL="windows_messaging_que/Windows Messages for LabVIEW.dll"/>
      </Item>
      <Item Name="circle.lvlib" Type="Library" URL="circle/circle.lvlib">
         <Item Name="private" Type="Folder">
            <Item Name="_MouseCircle_MousePositionToWindowBorder.vi" Type="VI" URL="circle/_MouseCircle_MousePositionToWindowBorder.vi"/>
            <Item Name="_MouseCircle_MakeWindowUntransparent.vi" Type="VI" URL="circle/_MouseCircle_MakeWindowUntransparent.vi"/>
            <Item Name="_MouseCircle_MakeWindowTransparent.vi" Type="VI" URL="circle/_MouseCircle_MakeWindowTransparent.vi"/>
            <Item Name="_MouseCircle_MakeWindowTopMost.vi" Type="VI" URL="circle/_MouseCircle_MakeWindowTopMost.vi"/>
            <Item Name="_MouseCircle_GetWindowsColor.vi" Type="VI" URL="circle/_MouseCircle_GetWindowsColor.vi"/>
            <Item Name="_MouseCircle_DrawCirclePicture.vi" Type="VI" URL="circle/_MouseCircle_DrawCirclePicture.vi"/>
            <Item Name="_MouseCircle_Window.vi" Type="VI" URL="circle/_MouseCircle_Window.vi"/>
         </Item>
         <Item Name="Run.vi" Type="VI" URL="circle/Run.vi"/>
         <Item Name="Stop.vi" Type="VI" URL="circle/Stop.vi"/>
         <Item Name="SetRadius.vi" Type="VI" URL="circle/SetRadius.vi"/>
         <Item Name="GetRadius.vi" Type="VI" URL="circle/GetRadius.vi"/>
      </Item>
      <Item Name="NotifyIcon.lvlib" Type="Library" URL="NotifyIcon/NotifyIcon.lvlib">
         <Item Name="Create.vi" Type="VI" URL="NotifyIcon/Create.vi"/>
         <Item Name="SetImage.vi" Type="VI" URL="NotifyIcon/SetImage.vi"/>
         <Item Name="SetMenu.vi" Type="VI" URL="NotifyIcon/SetMenu.vi"/>
         <Item Name="Start.vi" Type="VI" URL="NotifyIcon/Start.vi"/>
         <Item Name="buildMenuItem.vi" Type="VI" URL="NotifyIcon/buildMenuItem.vi"/>
         <Item Name="NotifyIconObject.ctl" Type="VI" URL="NotifyIcon/NotifyIconObject.ctl"/>
         <Item Name="MenuItem.ctl" Type="VI" URL="NotifyIcon/MenuItem.ctl"/>
         <Item Name="Destroy.vi" Type="VI" URL="NotifyIcon/Destroy.vi"/>
      </Item>
      <Item Name="依存性" Type="Dependencies"/>
      <Item Name="ビルド仕様" Type="Build">
         <Item Name="executable" Type="EXE">
            <Property Name="Absolute[0]" Type="Bool">false</Property>
            <Property Name="Absolute[1]" Type="Bool">false</Property>
            <Property Name="Absolute[2]" Type="Bool">false</Property>
            <Property Name="ActiveXInfoEnumCLSIDsItemCount" Type="Int">0</Property>
            <Property Name="ActiveXInfoMajorVersion" Type="Int">0</Property>
            <Property Name="ActiveXInfoMinorVersion" Type="Int">0</Property>
            <Property Name="ActiveXInfoObjCLSIDsItemCount" Type="Int">0</Property>
            <Property Name="ActiveXInfoProgIDPrefix" Type="Str"></Property>
            <Property Name="ActiveXServerName" Type="Str"></Property>
            <Property Name="AliasID" Type="Str">{1A83698F-C9C2-4CA7-943A-1A69D3FA0BE2}</Property>
            <Property Name="AliasName" Type="Str">Project.aliases</Property>
            <Property Name="ApplicationID" Type="Str">{E1E0D0B1-281A-4DFB-8BA7-32B29C30C69A}</Property>
            <Property Name="ApplicationName" Type="Str">mousecircle.exe</Property>
            <Property Name="BuildName" Type="Str">executable</Property>
            <Property Name="CommandLineArguments" Type="Bool">false</Property>
            <Property Name="CopyErrors" Type="Bool">false</Property>
            <Property Name="CustomIcon" Type="Ref">/マイ コンピュータ/data/mousecircle.ico</Property>
            <Property Name="DebuggingEXE" Type="Bool">false</Property>
            <Property Name="DebugServerWaitOnLaunch" Type="Bool">false</Property>
            <Property Name="DefaultLanguage" Type="Str">Japanese</Property>
            <Property Name="DependencyApplyDestination" Type="Bool">true</Property>
            <Property Name="DependencyApplyInclusion" Type="Bool">true</Property>
            <Property Name="DependencyApplyProperties" Type="Bool">true</Property>
            <Property Name="DependencyFolderDestination" Type="Int">0</Property>
            <Property Name="DependencyFolderInclusion" Type="Str">As needed</Property>
            <Property Name="DependencyFolderPropertiesItemCount" Type="Int">0</Property>
            <Property Name="DestinationID[0]" Type="Str">{27104BE4-AB15-41DF-AD2A-8C9D9E7FC1BB}</Property>
            <Property Name="DestinationID[1]" Type="Str">{27104BE4-AB15-41DF-AD2A-8C9D9E7FC1BB}</Property>
            <Property Name="DestinationID[2]" Type="Str">{D3CD59D0-8076-42F2-B8F4-1125EEC396F3}</Property>
            <Property Name="DestinationItemCount" Type="Int">3</Property>
            <Property Name="DestinationName[0]" Type="Str">mousecircle.exe</Property>
            <Property Name="DestinationName[1]" Type="Str">出力先ディレクトリ</Property>
            <Property Name="DestinationName[2]" Type="Str">サポートディレクトリ</Property>
            <Property Name="Disconnect" Type="Bool">true</Property>
            <Property Name="IncludeHWConfig" Type="Bool">false</Property>
            <Property Name="INIID" Type="Str">{86BDA081-29D8-4D81-8293-D68C348F3BB5}</Property>
            <Property Name="ININame" Type="Ref">/マイ コンピュータ/data/MouseCircle.ini</Property>
            <Property Name="LOGID" Type="Str">{8DBE6ABB-3790-4A9B-8E32-62635BE30478}</Property>
            <Property Name="Path[0]" Type="Path">../../build/executable/internal.llb</Property>
            <Property Name="Path[1]" Type="Path">../../build/executable</Property>
            <Property Name="Path[2]" Type="Path">../../build/executable/data</Property>
            <Property Name="SourceInfoItemCount" Type="Int">10</Property>
            <Property Name="SourceItem[0].Destination" Type="Int">0</Property>
            <Property Name="SourceItem[0].IsFolder" Type="Bool">true</Property>
            <Property Name="SourceItem[0].ItemID" Type="Ref">/マイ コンピュータ/callback</Property>
            <Property Name="SourceItem[1].Destination" Type="Int">0</Property>
            <Property Name="SourceItem[1].ItemID" Type="Ref"></Property>
            <Property Name="SourceItem[2].Destination" Type="Int">0</Property>
            <Property Name="SourceItem[2].IsFolder" Type="Bool">true</Property>
            <Property Name="SourceItem[2].ItemID" Type="Ref">/マイ コンピュータ/subVI</Property>
            <Property Name="SourceItem[3].Destination" Type="Int">0</Property>
            <Property Name="SourceItem[3].IsFolder" Type="Bool">true</Property>
            <Property Name="SourceItem[3].ItemID" Type="Ref">/マイ コンピュータ/data</Property>
            <Property Name="SourceItem[4].Inclusion" Type="Str">Always Included</Property>
            <Property Name="SourceItem[4].ItemID" Type="Ref">/マイ コンピュータ/data/mousecircle.ico</Property>
            <Property Name="SourceItem[5].Inclusion" Type="Str">Startup VI</Property>
            <Property Name="SourceItem[5].ItemID" Type="Ref">/マイ コンピュータ/MouseCircle.vi</Property>
            <Property Name="SourceItem[6].IsFolder" Type="Bool">true</Property>
            <Property Name="SourceItem[6].ItemID" Type="Ref">/マイ コンピュータ/WindowsMessageQueue.lvlib</Property>
            <Property Name="SourceItem[7].IsFolder" Type="Bool">true</Property>
            <Property Name="SourceItem[7].ItemID" Type="Ref">/マイ コンピュータ/circle.lvlib</Property>
            <Property Name="SourceItem[8].Destination" Type="Int">0</Property>
            <Property Name="SourceItem[8].IsFolder" Type="Bool">true</Property>
            <Property Name="SourceItem[8].ItemID" Type="Ref">/マイ コンピュータ/circle.lvlib/private</Property>
            <Property Name="SourceItem[9].IsFolder" Type="Bool">true</Property>
            <Property Name="SourceItem[9].ItemID" Type="Ref">/マイ コンピュータ/NotifyIcon.lvlib</Property>
            <Property Name="SupportedLanguageCount" Type="Int">0</Property>
            <Property Name="TLBID" Type="Str">{A1431ECD-3809-4973-8C7A-F5ACB20F36F8}</Property>
            <Property Name="UseFFRTE" Type="Bool">false</Property>
            <Property Name="VersionInfoCompanyName" Type="Str"></Property>
            <Property Name="VersionInfoFileDescription" Type="Str"></Property>
            <Property Name="VersionInfoFileType" Type="Int">1</Property>
            <Property Name="VersionInfoFileVersionBuild" Type="Int">0</Property>
            <Property Name="VersionInfoFileVersionMajor" Type="Int">1</Property>
            <Property Name="VersionInfoFileVersionMinor" Type="Int">1</Property>
            <Property Name="VersionInfoFileVersionPatch" Type="Int">0</Property>
            <Property Name="VersionInfoInternalName" Type="Str"></Property>
            <Property Name="VersionInfoLegalCopyright" Type="Str">Copyright (C) 2006 </Property>
            <Property Name="VersionInfoProductName" Type="Str">MouseCircle</Property>
         </Item>
         <Item Name="source" Type="Zip File">
            <Property Name="Absolute[0]" Type="Bool">false</Property>
            <Property Name="BuildName" Type="Str">source</Property>
            <Property Name="Comments" Type="Str"></Property>
            <Property Name="DestinationID[0]" Type="Str">{DB7A7370-5691-4ECE-ABFB-3BE017C17315}</Property>
            <Property Name="DestinationItemCount" Type="Int">1</Property>
            <Property Name="DestinationName[0]" Type="Str">Destination Directory</Property>
            <Property Name="IncludedItemCount" Type="Int">1</Property>
            <Property Name="IncludedItems[0]" Type="Ref">/マイ コンピュータ</Property>
            <Property Name="IncludeProject" Type="Bool">true</Property>
            <Property Name="Path[0]" Type="Path">../../build/MouseCircle.zip</Property>
         </Item>
      </Item>
   </Item>
</Project>
