<?xml version='1.0'?>
<Project Type="Project" LVVersion="8208000">
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
      <Item Name="Subs" Type="Folder">
         <Item Name="PPT_Activex.vi" Type="VI" URL="Subs/PPT_Activex.vi"/>
         <Item Name="Radiation Field Demo.vi" Type="VI" URL="Subs/Radiation Field Demo.vi"/>
         <Item Name="Radiation Field.vi" Type="VI" URL="Subs/Radiation Field.vi"/>
      </Item>
      <Item Name="LabVIEW on Communication Education.vi" Type="VI" URL="LabVIEW on Communication Education.vi"/>
      <Item Name="ActiveX PPT Demo help.doc" Type="Document" URL="../文档/ActiveX PPT Demo help.doc"/>
      <Item Name="PPT.ico" Type="Document" URL="Subs/PPT.ico"/>
      <Item Name="依赖关系" Type="Dependencies"/>
      <Item Name="程序生成规范" Type="Build">
         <Item Name="我的应用程序" Type="EXE">
            <Property Name="Absolute[0]" Type="Bool">false</Property>
            <Property Name="Absolute[1]" Type="Bool">false</Property>
            <Property Name="Absolute[2]" Type="Bool">false</Property>
            <Property Name="ActiveXInfoEnumCLSIDsItemCount" Type="Int">0</Property>
            <Property Name="ActiveXInfoMajorVersion" Type="Int">0</Property>
            <Property Name="ActiveXInfoMinorVersion" Type="Int">0</Property>
            <Property Name="ActiveXInfoObjCLSIDsItemCount" Type="Int">0</Property>
            <Property Name="ActiveXInfoProgIDPrefix" Type="Str"></Property>
            <Property Name="ActiveXServerName" Type="Str"></Property>
            <Property Name="AliasID" Type="Str">{B119C84D-17A3-458C-AC88-CAEEA4C0F2A7}</Property>
            <Property Name="AliasName" Type="Str">Project.aliases</Property>
            <Property Name="ApplicationID" Type="Str">{37936923-6443-454C-A384-221125B13093}</Property>
            <Property Name="ApplicationName" Type="Str">LabVIEW PPT.exe</Property>
            <Property Name="AutoIncrement" Type="Bool">false</Property>
            <Property Name="BuildName" Type="Str">我的应用程序</Property>
            <Property Name="CommandLineArguments" Type="Bool">false</Property>
            <Property Name="CopyErrors" Type="Bool">false</Property>
            <Property Name="CustomIcon" Type="Ref"></Property>
            <Property Name="DebuggingEXE" Type="Bool">false</Property>
            <Property Name="DebugServerWaitOnLaunch" Type="Bool">false</Property>
            <Property Name="DefaultLanguage" Type="Str">English</Property>
            <Property Name="DependencyApplyDestination" Type="Bool">true</Property>
            <Property Name="DependencyApplyInclusion" Type="Bool">true</Property>
            <Property Name="DependencyApplyProperties" Type="Bool">true</Property>
            <Property Name="DependencyFolderDestination" Type="Int">0</Property>
            <Property Name="DependencyFolderInclusion" Type="Str">As needed</Property>
            <Property Name="DependencyFolderPropertiesItemCount" Type="Int">0</Property>
            <Property Name="DestinationID[0]" Type="Str">{830CBAE0-6BD8-4B5D-869D-D60FB01B0EC1}</Property>
            <Property Name="DestinationID[1]" Type="Str">{830CBAE0-6BD8-4B5D-869D-D60FB01B0EC1}</Property>
            <Property Name="DestinationID[2]" Type="Str">{F545EED9-EE36-49AE-8952-7C39E1B9E270}</Property>
            <Property Name="DestinationItemCount" Type="Int">3</Property>
            <Property Name="DestinationName[0]" Type="Str">LabVIEW PPT.exe</Property>
            <Property Name="DestinationName[1]" Type="Str">目标目录</Property>
            <Property Name="DestinationName[2]" Type="Str">支持目录</Property>
            <Property Name="Disconnect" Type="Bool">true</Property>
            <Property Name="IncludeHWConfig" Type="Bool">false</Property>
            <Property Name="IncludeSCC" Type="Bool">true</Property>
            <Property Name="INIID" Type="Str">{713D85D4-4195-4141-9B00-75E1E74CB02B}</Property>
            <Property Name="ININame" Type="Str">LabVIEW.ini</Property>
            <Property Name="LOGID" Type="Str">{717A1BB2-7342-4A56-BF77-11E3DCD16807}</Property>
            <Property Name="MathScript" Type="Bool">false</Property>
            <Property Name="Path[0]" Type="Path">../EXE/internal.llb</Property>
            <Property Name="Path[1]" Type="Path">../EXE</Property>
            <Property Name="Path[2]" Type="Path">../EXE/data</Property>
            <Property Name="ShowHWConfig" Type="Bool">false</Property>
            <Property Name="SourceInfoItemCount" Type="Int">5</Property>
            <Property Name="SourceItem[0].Destination" Type="Int">0</Property>
            <Property Name="SourceItem[0].IsFolder" Type="Bool">true</Property>
            <Property Name="SourceItem[0].ItemID" Type="Ref">/我的电脑/Subs</Property>
            <Property Name="SourceItem[1].FolderInclusion" Type="Str">Dynamic VI (for non-VIs, always include)</Property>
            <Property Name="SourceItem[1].ItemID" Type="Ref">/我的电脑/Subs/PPT_Activex.vi</Property>
            <Property Name="SourceItem[2].FolderInclusion" Type="Str">Dynamic VI (for non-VIs, always include)</Property>
            <Property Name="SourceItem[2].ItemID" Type="Ref">/我的电脑/Subs/Radiation Field Demo.vi</Property>
            <Property Name="SourceItem[3].FolderInclusion" Type="Str">Dynamic VI (for non-VIs, always include)</Property>
            <Property Name="SourceItem[3].ItemID" Type="Ref">/我的电脑/Subs/Radiation Field.vi</Property>
            <Property Name="SourceItem[4].Inclusion" Type="Str">Startup VI</Property>
            <Property Name="SourceItem[4].ItemID" Type="Ref">/我的电脑/LabVIEW on Communication Education.vi</Property>
            <Property Name="SourceItem[4].VIPropertiesItemCount" Type="Int">2</Property>
            <Property Name="SourceItem[4].VIPropertiesSettingOption[0]" Type="Str">Remove panel</Property>
            <Property Name="SourceItem[4].VIPropertiesSettingOption[1]" Type="Str">Run when opened</Property>
            <Property Name="SourceItem[4].VIPropertiesVISetting[0]" Type="Bool">false</Property>
            <Property Name="SourceItem[4].VIPropertiesVISetting[1]" Type="Bool">true</Property>
            <Property Name="StripLib" Type="Bool">true</Property>
            <Property Name="SupportedLanguageCount" Type="Int">0</Property>
            <Property Name="TLBID" Type="Str">{0EEA3822-1CDB-44F9-98C1-60FB8E5EDCEA}</Property>
            <Property Name="UseFFRTE" Type="Bool">false</Property>
            <Property Name="VersionInfoCompanyName" Type="Str">NI</Property>
            <Property Name="VersionInfoFileDescription" Type="Str"></Property>
            <Property Name="VersionInfoFileType" Type="Int">1</Property>
            <Property Name="VersionInfoFileVersionBuild" Type="Int">0</Property>
            <Property Name="VersionInfoFileVersionMajor" Type="Int">1</Property>
            <Property Name="VersionInfoFileVersionMinor" Type="Int">0</Property>
            <Property Name="VersionInfoFileVersionPatch" Type="Int">0</Property>
            <Property Name="VersionInfoInternalName" Type="Str">LabVIEW PPT</Property>
            <Property Name="VersionInfoLegalCopyright" Type="Str">版权(C) 2007 NI</Property>
            <Property Name="VersionInfoProductName" Type="Str">LabVIEW PPT</Property>
         </Item>
      </Item>
   </Item>
</Project>
