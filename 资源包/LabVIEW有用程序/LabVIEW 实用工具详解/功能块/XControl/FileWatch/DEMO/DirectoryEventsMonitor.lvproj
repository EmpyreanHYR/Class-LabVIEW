<?xml version='1.0'?>
<Project Type="Project" LVVersion="8008005">
   <Property Name="CCSymbols" Type="Str"></Property>
   <Property Name="NI.Project.Description" Type="Str">The VI Monitor Any Changes at the Select Directory
Writen by Eran Herman
emai eranh@ehe-lab.com
web http://www.ehe-lab.com</Property>
   <Property Name="ThirdParty.LV.ExampleFinder" Type="Str">&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;nidna:ExampleProgram 
    xmlns:nidna="http://www.ni.com/Schemas/DNA/1.0" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
    xsi:schemaLocation="http://www.ni.com/Schemas/DNA/1.0 ..\DNA\1.0\NiExampleProgram.xsd" 
    SchemaVersion="1.0" 
    ContentType="EXAMPLE" 
&lt;Title&gt;
	&lt;Text Locale="US"&gt;DirectoryEventsMonitor.lvproj&lt;/Text&gt;
&lt;/Title&gt;
&lt;Description&gt;
	&lt;Text Locale="US"&gt;The VI Monitor Any Changes at the Select Directory
Writen by Eran Herman
emai eranh@ehe-lab.com
web http://www.ehe-lab.com&lt;/Text&gt;
&lt;/Description&gt;
&lt;Keywords&gt;
	&lt;Item&gt;XControl&lt;/Item&gt;
	&lt;Item&gt;XControls&lt;/Item&gt;
	&lt;Item&gt;.NET&lt;/Item&gt;
	&lt;Item&gt;directory&lt;/Item&gt;
	&lt;Item&gt;files&lt;/Item&gt;
	&lt;Item&gt;Eran Herman&lt;/Item&gt;
&lt;/Keywords&gt;
&lt;Navigation&gt;
	&lt;Item&gt;4543&lt;/Item&gt;
&lt;/Navigation&gt;
&lt;FileType&gt;LV Project&lt;/FileType&gt;
&lt;Metadata&gt;
&lt;Item Name="RTSupport"&gt;&lt;/Item&gt;
&lt;/Metadata&gt;
&lt;ProgrammingLanguages&gt;
&lt;Item&gt;LabVIEW&lt;/Item&gt;
&lt;/ProgrammingLanguages&gt;
&lt;RequiredSoftware&gt;
&lt;NiSoftware MinVersion="8.0"&gt;LabVIEW&lt;/NiSoftware&gt; 
&lt;/RequiredSoftware&gt;</Property>
   <Item Name="My Computer" Type="My Computer">
      <Property Name="CCSymbols" Type="Str">OS,Win;CPU,x86;</Property>
      <Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
      <Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
      <Property Name="server.tcp.enabled" Type="Bool">false</Property>
      <Property Name="server.tcp.port" Type="Int">0</Property>
      <Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
      <Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
      <Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
      <Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
      <Property Name="specify.custom.address" Type="Bool">false</Property>
      <Item Name="DEMO" Type="Folder">
         <Item Name="FileSysWatcher.vi" Type="VI" URL="/&lt;userlib&gt;/DEMO/FileSysWatcher.vi"/>
         <Item Name="ChangeEventFile.vi" Type="VI" URL="/&lt;userlib&gt;/DEMO/ChangeEventFile.vi"/>
         <Item Name="XControlFileNet.xctl" Type="XControl" URL="/&lt;userlib&gt;/DEMO/XControlFileNet.xctl">
            <Item Name="FileSizeNet.vi" Type="Method VI" URL="/&lt;userlib&gt;/DEMO/FileSizeNet.vi"/>
            <Item Name="DataFileNet" Type="Ability VI" URL="/&lt;userlib&gt;/DEMO/DataFileNet"/>
            <Item Name="StateFileNet.ctl" Type="Ability VI" URL="/&lt;userlib&gt;/DEMO/StateFileNet.ctl"/>
            <Item Name="FacadeFileNet.vi" Type="Ability VI" URL="/&lt;userlib&gt;/DEMO/FacadeFileNet.vi"/>
            <Item Name="InitFileNet.vi" Type="Ability VI" URL="/&lt;userlib&gt;/DEMO/InitFileNet.vi"/>
            <Item Name="fileEvent" Type="Property Folder">
               <Item Name="FileEventWrite.vi" Type="Property VI" URL="/&lt;userlib&gt;/DEMO/FileEventWrite.vi"/>
            </Item>
         </Item>
         <Item Name="FileEventNET.vi" Type="VI" URL="/&lt;userlib&gt;/DEMO/FileEventNET.vi"/>
         <Item Name="RenameEventFile.vi" Type="VI" URL="/&lt;userlib&gt;/DEMO/RenameEventFile.vi"/>
         <Item Name="help.html" Type="Document" URL="/&lt;userlib&gt;/DEMO/help.html"/>
      </Item>
      <Item Name="Dependencies" Type="Dependencies"/>
      <Item Name="Build Specifications" Type="Build"/>
   </Item>
</Project>
