<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="18008000">
	<Property Name="SMProvider.SMVersion" Type="Int">201310</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="IOScan.Faults" Type="Str"></Property>
		<Property Name="IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="IOScan.Period" Type="UInt">10000</Property>
		<Property Name="IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="IOScan.Priority" Type="UInt">9</Property>
		<Property Name="IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="IOScan.StartEngineOnDeploy" Type="Bool">false</Property>
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
		<Item Name="Colors" Type="Folder">
			<Item Name="Color.lvclass" Type="LVClass" URL="../Color/Color.lvclass"/>
			<Item Name="RGB Color.lvclass" Type="LVClass" URL="../RGB Color/RGB Color.lvclass"/>
			<Item Name="CMY Color.lvclass" Type="LVClass" URL="../CMY Color/CMY Color.lvclass"/>
		</Item>
		<Item Name="Graphics Objects" Type="Folder">
			<Item Name="Graphics Object.lvclass" Type="LVClass" URL="../Graphics Object/Graphics Object.lvclass"/>
			<Item Name="Line.lvclass" Type="LVClass" URL="../Line/Line.lvclass"/>
			<Item Name="Polygon.lvclass" Type="LVClass" URL="../Polygon/Polygon.lvclass"/>
			<Item Name="Triangle.lvclass" Type="LVClass" URL="../Triangle/Triangle.lvclass"/>
			<Item Name="Rectangle.lvclass" Type="LVClass" URL="../Rectangle/Rectangle.lvclass"/>
			<Item Name="Circle.lvclass" Type="LVClass" URL="../Circle/Circle.lvclass"/>
			<Item Name="Ellipse.lvclass" Type="LVClass" URL="../Ellipse/Ellipse.lvclass"/>
			<Item Name="Picture.lvclass" Type="LVClass" URL="../Picture/Picture.lvclass"/>
			<Item Name="Empty.lvclass" Type="LVClass" URL="../Empty/Empty.lvclass"/>
		</Item>
		<Item Name="Controls" Type="Folder">
			<Item Name="System Color Box.ctl" Type="VI" URL="../Controls/System Color Box.ctl"/>
			<Item Name="Borderless picture.ctl" Type="VI" URL="../Controls/Borderless picture.ctl"/>
			<Item Name="Hover Button.ctl" Type="VI" URL="../Controls/Hover Button.ctl"/>
			<Item Name="System cluster.ctl" Type="VI" URL="../Controls/System cluster.ctl"/>
		</Item>
		<Item Name="Drawing Tool.vi" Type="VI" URL="../Drawing Tool.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Set Pen State.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Set Pen State.vi"/>
				<Item Name="Color to RGB.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/colorconv.llb/Color to RGB.vi"/>
				<Item Name="RGB to Color.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/colorconv.llb/RGB to Color.vi"/>
				<Item Name="Move Pen.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Move Pen.vi"/>
				<Item Name="Draw Line.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Line.vi"/>
				<Item Name="Draw Oval.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Oval.vi"/>
				<Item Name="LVPoint32TypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVPoint32TypeDef.ctl"/>
				<Item Name="Set Cursor (Icon Pict).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Icon Pict).vi"/>
				<Item Name="Set Cursor (Cursor ID).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Cursor ID).vi"/>
				<Item Name="Set Cursor.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor.vi"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
