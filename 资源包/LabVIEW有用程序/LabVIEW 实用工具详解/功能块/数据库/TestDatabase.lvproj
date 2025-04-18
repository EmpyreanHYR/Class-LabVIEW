<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="11008008">
	<Item Name="我的电脑" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">我的电脑/VI服务器</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">我的电脑/VI服务器</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Pulbic" Type="Folder">
			<Item Name="Get DB From Provider.vi" Type="VI" URL="../Pulblic/Get DB From Provider.vi"/>
			<Item Name="Get Types From Database.vi" Type="VI" URL="../Pulblic/Get Types From Database.vi"/>
			<Item Name="Validate Input.vi" Type="VI" URL="../Pulblic/Validate Input.vi"/>
			<Item Name="ADO Type and Dir To DB Tools.vi" Type="VI" URL="../Pulblic/ADO Type and Dir To DB Tools.vi"/>
			<Item Name="ADO Error Helper.vi" Type="VI" URL="../Pulblic/ADO Error Helper.vi"/>
			<Item Name="Generate Parameter.vi" Type="VI" URL="../Pulblic/Generate Parameter.vi"/>
			<Item Name="Is DateTime String.vi" Type="VI" URL="../Pulblic/Is DateTime String.vi"/>
			<Item Name="定位数据源.vi" Type="VI" URL="../Pulblic/定位数据源.vi"/>
			<Item Name="Parser.vi" Type="VI" URL="../Pulblic/Parser.vi"/>
			<Item Name="Type and Dir To ADO.vi" Type="VI" URL="../Pulblic/Type and Dir To ADO.vi"/>
		</Item>
		<Item Name="SQL" Type="Folder">
			<Item Name="SQL Build Create Table Query.vi" Type="VI" URL="../SQL/SQL Build Create Table Query.vi"/>
			<Item Name="SQL Build Delete Query.vi" Type="VI" URL="../SQL/SQL Build Delete Query.vi"/>
			<Item Name="SQL Build Select_Condition Query.vi" Type="VI" URL="../SQL/SQL Build Select_Condition Query.vi"/>
			<Item Name="SQL Build Select Query.vi" Type="VI" URL="../SQL/SQL Build Select Query.vi"/>
			<Item Name="SQL Build Insert Query.vi" Type="VI" URL="../SQL/SQL Build Insert Query.vi"/>
			<Item Name="SQL Build Upate Query.vi" Type="VI" URL="../SQL/SQL Build Upate Query.vi"/>
		</Item>
		<Item Name="Database Connection.lvclass" Type="LVClass" URL="../Connection/Database Connection.lvclass"/>
		<Item Name="Database Command.lvclass" Type="LVClass" URL="../Command/Database Command.lvclass"/>
		<Item Name="Database Recordset.lvclass" Type="LVClass" URL="../Recordset/Database Recordset.lvclass"/>
		<Item Name="未命名 4.vi" Type="VI" URL="../Connection/未命名 4.vi"/>
		<Item Name="未命名 5.vi" Type="VI" URL="../../../../未命名 5.vi"/>
		<Item Name="未命名 1.vi" Type="VI" URL="../Pulblic/未命名 1.vi"/>
		<Item Name="Format DateTime String.vi" Type="VI" URL="../Pulblic/Format DateTime String.vi"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="VariantType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/VariantDataType/VariantType.lvlib"/>
				<Item Name="DB Tools Get Types From File.vi" Type="VI" URL="/&lt;vilib&gt;/addons/database/Auxilliary.llb/DB Tools Get Types From File.vi"/>
				<Item Name="DB Tools DataTypes.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/database/Auxilliary.llb/DB Tools DataTypes.ctl"/>
				<Item Name="DB Tools Parameter Dir.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/database/Auxilliary.llb/DB Tools Parameter Dir.ctl"/>
				<Item Name="DB Tools Parameter Info.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/database/Auxilliary.llb/DB Tools Parameter Info.ctl"/>
				<Item Name="DB Tools Error Helper.vi" Type="VI" URL="/&lt;vilib&gt;/addons/database/Auxilliary.llb/DB Tools Error Helper.vi"/>
				<Item Name="DB Tools Is DateTime String.vi" Type="VI" URL="/&lt;vilib&gt;/addons/database/Auxilliary.llb/DB Tools Is DateTime String.vi"/>
				<Item Name="DB Tools Generate Parameter.vi" Type="VI" URL="/&lt;vilib&gt;/addons/database/Parser.llb/DB Tools Generate Parameter.vi"/>
				<Item Name="DB Tools Column Info.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/database/Auxilliary.llb/DB Tools Column Info.ctl"/>
				<Item Name="DB Tools Cursor Type.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/database/Auxilliary.llb/DB Tools Cursor Type.ctl"/>
				<Item Name="DB Tools Transaction.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/database/Auxilliary.llb/DB Tools Transaction.ctl"/>
				<Item Name="DB Tools Isolation Level.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/database/Auxilliary.llb/DB Tools Isolation Level.ctl"/>
				<Item Name="Conn Properties.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/database/Connection.llb/Conn Properties.ctl"/>
				<Item Name="DB Tools Set Properties.vi" Type="VI" URL="/&lt;vilib&gt;/addons/database/Auxilliary.llb/DB Tools Set Properties.vi"/>
				<Item Name="Conn Set Properties.vi" Type="VI" URL="/&lt;vilib&gt;/addons/database/Connection.llb/Conn Set Properties.vi"/>
				<Item Name="DB Tools Format Datetime String.vi" Type="VI" URL="/&lt;vilib&gt;/addons/database/Auxilliary.llb/DB Tools Format Datetime String.vi"/>
				<Item Name="DB Tools Format Datetime String (Time Stamp).vi" Type="VI" URL="/&lt;vilib&gt;/addons/database/Auxilliary.llb/DB Tools Format Datetime String (Time Stamp).vi"/>
				<Item Name="DB Tools Fetch Element Data.vi" Type="VI" URL="/&lt;vilib&gt;/addons/database/Recordset.llb/DB Tools Fetch Element Data.vi"/>
				<Item Name="Rec Fetch String Data (R).vi" Type="VI" URL="/&lt;vilib&gt;/addons/database/Recordset.llb/Rec Fetch String Data (R).vi"/>
				<Item Name="DB Tools Get Parameter Value.vi" Type="VI" URL="/&lt;vilib&gt;/addons/database/Command.llb/DB Tools Get Parameter Value.vi"/>
				<Item Name="Cmd Get String Parameter Value (C).vi" Type="VI" URL="/&lt;vilib&gt;/addons/database/Command.llb/Cmd Get String Parameter Value (C).vi"/>
				<Item Name="DB Tools Open Connection.vi" Type="VI" URL="/&lt;vilib&gt;/addons/database/Connection.llb/DB Tools Open Connection.vi"/>
				<Item Name="DB Tools Open Connec (String).vi" Type="VI" URL="/&lt;vilib&gt;/addons/database/Connection.llb/DB Tools Open Connec (String).vi"/>
				<Item Name="DB Tools Insert Data.vi" Type="VI" URL="/&lt;vilib&gt;/addons/database/Auxilliary.llb/DB Tools Insert Data.vi"/>
				<Item Name="DB Tools Close Connection.vi" Type="VI" URL="/&lt;vilib&gt;/addons/database/Connection.llb/DB Tools Close Connection.vi"/>
			</Item>
		</Item>
		<Item Name="程序生成规范" Type="Build"/>
	</Item>
</Project>
