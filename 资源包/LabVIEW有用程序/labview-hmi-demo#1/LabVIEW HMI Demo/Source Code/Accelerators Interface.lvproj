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
      <Item Name="main" Type="Folder">
         <Item Name="main.vi" Type="VI" URL="subvi/main.vi"/>
      </Item>
      <Item Name="moves VI" Type="Folder">
         <Item Name="move--linear.vi" Type="VI" URL="subvi/move--linear.vi"/>
         <Item Name="move--booster.vi" Type="VI" URL="subvi/move--booster.vi"/>
         <Item Name="move--ring.vi" Type="VI" URL="subvi/move--ring.vi"/>
      </Item>
      <Item Name="special moves VI" Type="Folder">
         <Item Name="initialization.vi" Type="VI" URL="subvi/initialization.vi"/>
         <Item Name="s--move-linear.vi" Type="VI" URL="subvi/s--move-linear.vi"/>
         <Item Name="s--move-booster.vi" Type="VI" URL="subvi/s--move-booster.vi"/>
         <Item Name="s--move-ring.vi" Type="VI" URL="subvi/s--move-ring.vi"/>
         <Item Name="s--light.vi" Type="VI" URL="subvi/s--light.vi"/>
      </Item>
      <Item Name="menu" Type="Folder">
         <Item Name="About Menu Bar.vi" Type="VI" URL="subvi/About Menu Bar.vi"/>
      </Item>
      <Item Name="typedef control" Type="Folder">
         <Item Name="flash.ctl" Type="VI" URL="Controls/flash.ctl"/>
         <Item Name="flash1.ctl" Type="VI" URL="Controls/flash1.ctl"/>
         <Item Name="stop.ctl" Type="VI" URL="Controls/stop.ctl"/>
         <Item Name="stop1.ctl" Type="VI" URL="Controls/stop1.ctl"/>
      </Item>
      <Item Name="help" Type="Folder">
         <Item Name="help.txt" Type="Document" URL="Documentation/help.txt"/>
         <Item Name="report.doc" Type="Document" URL="Documentation/report.doc"/>
      </Item>
      <Item Name="SR Light.ico" Type="Document" URL="Controls/SR Light.ico"/>
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
            <Property Name="AliasID" Type="Str">{FEE56143-C70E-43C2-8C70-816D6FCB1B2E}</Property>
            <Property Name="AliasName" Type="Str">Project.aliases</Property>
            <Property Name="ApplicationID" Type="Str">{38848D8B-7E4F-4DD7-8356-622DCF82B07D}</Property>
            <Property Name="ApplicationName" Type="Str">SR Light.exe</Property>
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
            <Property Name="DestinationID[0]" Type="Str">{446A72D7-D732-440E-849E-163B8B9AD026}</Property>
            <Property Name="DestinationID[1]" Type="Str">{446A72D7-D732-440E-849E-163B8B9AD026}</Property>
            <Property Name="DestinationID[2]" Type="Str">{88D7253D-CAE7-4C52-B78D-0462FBC422C5}</Property>
            <Property Name="DestinationItemCount" Type="Int">3</Property>
            <Property Name="DestinationName[0]" Type="Str">SR Light.exe</Property>
            <Property Name="DestinationName[1]" Type="Str">目标目录</Property>
            <Property Name="DestinationName[2]" Type="Str">支持目录</Property>
            <Property Name="Disconnect" Type="Bool">true</Property>
            <Property Name="IncludeHWConfig" Type="Bool">false</Property>
            <Property Name="IncludeSCC" Type="Bool">true</Property>
            <Property Name="INIID" Type="Str">{48264974-5471-48EA-BA21-35371FF4CD03}</Property>
            <Property Name="ININame" Type="Str">LabVIEW.ini</Property>
            <Property Name="LOGID" Type="Str">{FA6B6DAE-7193-481E-9637-DB179BE5D223}</Property>
            <Property Name="MathScript" Type="Bool">false</Property>
            <Property Name="Path[0]" Type="Path">../EXE/internal.llb</Property>
            <Property Name="Path[1]" Type="Path">../EXE</Property>
            <Property Name="Path[2]" Type="Path">../EXE/data</Property>
            <Property Name="ShowHWConfig" Type="Bool">false</Property>
            <Property Name="SourceInfoItemCount" Type="Int">20</Property>
            <Property Name="SourceItem[0].Destination" Type="Int">0</Property>
            <Property Name="SourceItem[0].IsFolder" Type="Bool">true</Property>
            <Property Name="SourceItem[0].ItemID" Type="Ref">/我的电脑/main</Property>
            <Property Name="SourceItem[1].Inclusion" Type="Str">Startup VI</Property>
            <Property Name="SourceItem[1].ItemID" Type="Ref">/我的电脑/main/main.vi</Property>
            <Property Name="SourceItem[10].DisableInclusion" Type="Bool">true</Property>
            <Property Name="SourceItem[10].FolderInclusion" Type="Str">Dynamic VI (for non-VIs, always include)</Property>
            <Property Name="SourceItem[10].Inclusion" Type="Str">Always Included</Property>
            <Property Name="SourceItem[10].ItemID" Type="Ref">/我的电脑/special moves VI/s--move-ring.vi</Property>
            <Property Name="SourceItem[11].DisableInclusion" Type="Bool">true</Property>
            <Property Name="SourceItem[11].FolderInclusion" Type="Str">Dynamic VI (for non-VIs, always include)</Property>
            <Property Name="SourceItem[11].Inclusion" Type="Str">Always Included</Property>
            <Property Name="SourceItem[11].ItemID" Type="Ref">/我的电脑/special moves VI/s--light.vi</Property>
            <Property Name="SourceItem[12].ApplyInclusion" Type="Bool">true</Property>
            <Property Name="SourceItem[12].Destination" Type="Int">0</Property>
            <Property Name="SourceItem[12].FolderInclusion" Type="Str">Dynamic VI (for non-VIs, always include)</Property>
            <Property Name="SourceItem[12].Inclusion" Type="Str">Always Included</Property>
            <Property Name="SourceItem[12].IsFolder" Type="Bool">true</Property>
            <Property Name="SourceItem[12].ItemID" Type="Ref">/我的电脑/menu</Property>
            <Property Name="SourceItem[13].DisableInclusion" Type="Bool">true</Property>
            <Property Name="SourceItem[13].FolderInclusion" Type="Str">Dynamic VI (for non-VIs, always include)</Property>
            <Property Name="SourceItem[13].Inclusion" Type="Str">Always Included</Property>
            <Property Name="SourceItem[13].ItemID" Type="Ref">/我的电脑/menu/About Menu Bar.vi</Property>
            <Property Name="SourceItem[14].ApplyInclusion" Type="Bool">true</Property>
            <Property Name="SourceItem[14].Destination" Type="Int">0</Property>
            <Property Name="SourceItem[14].FolderInclusion" Type="Str">Dynamic VI (for non-VIs, always include)</Property>
            <Property Name="SourceItem[14].Inclusion" Type="Str">Always Included</Property>
            <Property Name="SourceItem[14].IsFolder" Type="Bool">true</Property>
            <Property Name="SourceItem[14].ItemID" Type="Ref">/我的电脑/typedef control</Property>
            <Property Name="SourceItem[15].DisableInclusion" Type="Bool">true</Property>
            <Property Name="SourceItem[15].FolderInclusion" Type="Str">Dynamic VI (for non-VIs, always include)</Property>
            <Property Name="SourceItem[15].Inclusion" Type="Str">Always Included</Property>
            <Property Name="SourceItem[15].ItemID" Type="Ref">/我的电脑/typedef control/flash.ctl</Property>
            <Property Name="SourceItem[16].DisableInclusion" Type="Bool">true</Property>
            <Property Name="SourceItem[16].FolderInclusion" Type="Str">Dynamic VI (for non-VIs, always include)</Property>
            <Property Name="SourceItem[16].Inclusion" Type="Str">Always Included</Property>
            <Property Name="SourceItem[16].ItemID" Type="Ref">/我的电脑/typedef control/flash1.ctl</Property>
            <Property Name="SourceItem[17].DisableInclusion" Type="Bool">true</Property>
            <Property Name="SourceItem[17].FolderInclusion" Type="Str">Dynamic VI (for non-VIs, always include)</Property>
            <Property Name="SourceItem[17].Inclusion" Type="Str">Always Included</Property>
            <Property Name="SourceItem[17].ItemID" Type="Ref">/我的电脑/typedef control/stop.ctl</Property>
            <Property Name="SourceItem[18].DisableInclusion" Type="Bool">true</Property>
            <Property Name="SourceItem[18].FolderInclusion" Type="Str">Dynamic VI (for non-VIs, always include)</Property>
            <Property Name="SourceItem[18].Inclusion" Type="Str">Always Included</Property>
            <Property Name="SourceItem[18].ItemID" Type="Ref">/我的电脑/typedef control/stop1.ctl</Property>
            <Property Name="SourceItem[19].Destination" Type="Int">0</Property>
            <Property Name="SourceItem[19].IsFolder" Type="Bool">true</Property>
            <Property Name="SourceItem[19].ItemID" Type="Ref">/我的电脑/help</Property>
            <Property Name="SourceItem[2].ApplyInclusion" Type="Bool">true</Property>
            <Property Name="SourceItem[2].Destination" Type="Int">0</Property>
            <Property Name="SourceItem[2].FolderInclusion" Type="Str">Dynamic VI (for non-VIs, always include)</Property>
            <Property Name="SourceItem[2].Inclusion" Type="Str">Always Included</Property>
            <Property Name="SourceItem[2].IsFolder" Type="Bool">true</Property>
            <Property Name="SourceItem[2].ItemID" Type="Ref">/我的电脑/moves VI</Property>
            <Property Name="SourceItem[3].DisableInclusion" Type="Bool">true</Property>
            <Property Name="SourceItem[3].FolderInclusion" Type="Str">Dynamic VI (for non-VIs, always include)</Property>
            <Property Name="SourceItem[3].Inclusion" Type="Str">Always Included</Property>
            <Property Name="SourceItem[3].ItemID" Type="Ref">/我的电脑/moves VI/move--linear.vi</Property>
            <Property Name="SourceItem[4].DisableInclusion" Type="Bool">true</Property>
            <Property Name="SourceItem[4].FolderInclusion" Type="Str">Dynamic VI (for non-VIs, always include)</Property>
            <Property Name="SourceItem[4].Inclusion" Type="Str">Always Included</Property>
            <Property Name="SourceItem[4].ItemID" Type="Ref">/我的电脑/moves VI/move--booster.vi</Property>
            <Property Name="SourceItem[5].DisableInclusion" Type="Bool">true</Property>
            <Property Name="SourceItem[5].FolderInclusion" Type="Str">Dynamic VI (for non-VIs, always include)</Property>
            <Property Name="SourceItem[5].Inclusion" Type="Str">Always Included</Property>
            <Property Name="SourceItem[5].ItemID" Type="Ref">/我的电脑/moves VI/move--ring.vi</Property>
            <Property Name="SourceItem[6].ApplyInclusion" Type="Bool">true</Property>
            <Property Name="SourceItem[6].Destination" Type="Int">0</Property>
            <Property Name="SourceItem[6].FolderInclusion" Type="Str">Dynamic VI (for non-VIs, always include)</Property>
            <Property Name="SourceItem[6].Inclusion" Type="Str">Always Included</Property>
            <Property Name="SourceItem[6].IsFolder" Type="Bool">true</Property>
            <Property Name="SourceItem[6].ItemID" Type="Ref">/我的电脑/special moves VI</Property>
            <Property Name="SourceItem[7].DisableInclusion" Type="Bool">true</Property>
            <Property Name="SourceItem[7].FolderInclusion" Type="Str">Dynamic VI (for non-VIs, always include)</Property>
            <Property Name="SourceItem[7].Inclusion" Type="Str">Always Included</Property>
            <Property Name="SourceItem[7].ItemID" Type="Ref">/我的电脑/special moves VI/initialization.vi</Property>
            <Property Name="SourceItem[8].DisableInclusion" Type="Bool">true</Property>
            <Property Name="SourceItem[8].FolderInclusion" Type="Str">Dynamic VI (for non-VIs, always include)</Property>
            <Property Name="SourceItem[8].Inclusion" Type="Str">Always Included</Property>
            <Property Name="SourceItem[8].ItemID" Type="Ref">/我的电脑/special moves VI/s--move-linear.vi</Property>
            <Property Name="SourceItem[9].DisableInclusion" Type="Bool">true</Property>
            <Property Name="SourceItem[9].FolderInclusion" Type="Str">Dynamic VI (for non-VIs, always include)</Property>
            <Property Name="SourceItem[9].Inclusion" Type="Str">Always Included</Property>
            <Property Name="SourceItem[9].ItemID" Type="Ref">/我的电脑/special moves VI/s--move-booster.vi</Property>
            <Property Name="StripLib" Type="Bool">true</Property>
            <Property Name="SupportedLanguageCount" Type="Int">0</Property>
            <Property Name="TLBID" Type="Str">{06C212F1-8A34-45DE-90B6-A5683C86B768}</Property>
            <Property Name="UseFFRTE" Type="Bool">false</Property>
            <Property Name="VersionInfoCompanyName" Type="Str">NI</Property>
            <Property Name="VersionInfoFileDescription" Type="Str"></Property>
            <Property Name="VersionInfoFileType" Type="Int">1</Property>
            <Property Name="VersionInfoFileVersionBuild" Type="Int">0</Property>
            <Property Name="VersionInfoFileVersionMajor" Type="Int">1</Property>
            <Property Name="VersionInfoFileVersionMinor" Type="Int">0</Property>
            <Property Name="VersionInfoFileVersionPatch" Type="Int">0</Property>
            <Property Name="VersionInfoInternalName" Type="Str">我的应用程序</Property>
            <Property Name="VersionInfoLegalCopyright" Type="Str">版权(C) 2007 NI</Property>
            <Property Name="VersionInfoProductName" Type="Str">SR Light</Property>
         </Item>
      </Item>
   </Item>
</Project>
