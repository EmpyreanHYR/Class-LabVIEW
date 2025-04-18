<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="11008008">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="CCSymbols" Type="Str">OS,Win;CPU,x86;</Property>
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
		<Item Name="Controls" Type="Folder">
			<Item Name="References" Type="Folder">
				<Item Name="Item_Refnums.ctl" Type="VI" URL="../Controls/References/Item_Refnums.ctl"/>
				<Item Name="Item_Command_Refnum.ctl" Type="VI" URL="../Controls/References/Item_Command_Refnum.ctl"/>
			</Item>
			<Item Name="Item_Command.ctl" Type="VI" URL="../Controls/Item_Command.ctl"/>
			<Item Name="Item_Command_Enum.ctl" Type="VI" URL="../Controls/Item_Command_Enum.ctl"/>
			<Item Name="Root_Command.ctl" Type="VI" URL="../Controls/Root_Command.ctl"/>
			<Item Name="Root_Command_Enum.ctl" Type="VI" URL="../Controls/Root_Command_Enum.ctl"/>
		</Item>
		<Item Name="Root_XControl.xctl" Type="XControl" URL="../Root_XControl/Root_XControl.xctl"/>
		<Item Name="Thermometer_Object.vi" Type="VI" URL="../Thermometer_Object.vi"/>
		<Item Name="Thermometer_Example.vi" Type="VI" URL="../Thermometer_Example.vi"/>
		<Item Name="Readme.txt" Type="Document" URL="../Readme.txt"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="XControlSupport.lvlib" Type="Library" URL="/&lt;vilib&gt;/_xctls/XControlSupport.lvlib"/>
			</Item>
			<Item Name="Item_Command_Enum.ctl" Type="VI" URL="../Item_Command_Enum.ctl"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Zip Backup" Type="Zip File">
				<Property Name="Absolute[0]" Type="Bool">false</Property>
				<Property Name="BuildName" Type="Str">Zip Backup</Property>
				<Property Name="Comments" Type="Str"></Property>
				<Property Name="DestinationID[0]" Type="Str">{2E0E71FC-1061-4945-90A5-7537C4BE0E40}</Property>
				<Property Name="DestinationItemCount" Type="Int">1</Property>
				<Property Name="DestinationName[0]" Type="Str">Destination Directory</Property>
				<Property Name="IncludedItemCount" Type="Int">1</Property>
				<Property Name="IncludedItems[0]" Type="Ref">/My Computer</Property>
				<Property Name="IncludeProject" Type="Bool">true</Property>
				<Property Name="Path[0]" Type="Path">../../builds/Linked_List_Project/Zip Backup/Linked_List_Project.zip</Property>
			</Item>
		</Item>
	</Item>
</Project>
