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
		<Item Name="图形.lvclass" Type="LVClass" URL="../图形/图形.lvclass"/>
		<Item Name="点.lvclass" Type="LVClass" URL="../点/点.lvclass"/>
		<Item Name="直线.lvclass" Type="LVClass" URL="../线/直线.lvclass"/>
		<Item Name="三角形.lvclass" Type="LVClass" URL="../三角形/三角形.lvclass"/>
		<Item Name="圆形.lvclass" Type="LVClass" URL="../圆/圆形.lvclass"/>
		<Item Name="集合.lvclass" Type="LVClass" URL="../集合/集合.lvclass"/>
		<Item Name="测试.vi" Type="VI" URL="../集合/测试.vi"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Draw Point.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Point.vi"/>
				<Item Name="LVPointDoubleTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVPointDoubleTypeDef.ctl"/>
				<Item Name="Set Pen State.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Set Pen State.vi"/>
				<Item Name="Move Pen.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Move Pen.vi"/>
				<Item Name="Draw Line.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Line.vi"/>
				<Item Name="Draw Multiple Lines.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Multiple Lines.vi"/>
				<Item Name="Draw Arc.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Arc.vi"/>
				<Item Name="Draw Circle by Radius.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/Draw Circle by Radius.vi"/>
				<Item Name="Empty Picture" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Empty Picture"/>
			</Item>
			<Item Name="计算三角形内心与半径.vi" Type="VI" URL="../../点与线/计算三角形内心与半径.vi"/>
			<Item Name="计算直线的斜率与截距.vi" Type="VI" URL="../../点与线/计算直线的斜率与截距.vi"/>
			<Item Name="斜率与截距.ctl" Type="VI" URL="../../点与线/斜率与截距.ctl"/>
			<Item Name="点至线段的角平分线点.vi" Type="VI" URL="../../点与线/点至线段的角平分线点.vi"/>
			<Item Name="两点之间距离(DBL).vi" Type="VI" URL="../../点与线/两点之间距离(DBL).vi"/>
			<Item Name="线段比例点.vi" Type="VI" URL="../../点与线/线段比例点.vi"/>
			<Item Name="计算两条直线的交点（4点）.vi" Type="VI" URL="../../点与线/计算两条直线的交点（4点）.vi"/>
			<Item Name="计算两条直线的交点（斜率与截距）.vi" Type="VI" URL="../../点与线/计算两条直线的交点（斜率与截距）.vi"/>
			<Item Name="计算点至直线的垂足.vi" Type="VI" URL="../../点与线/计算点至直线的垂足.vi"/>
		</Item>
		<Item Name="程序生成规范" Type="Build"/>
	</Item>
</Project>
