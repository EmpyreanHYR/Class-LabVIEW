<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="12008004">
	<Item Name="My Computer" Type="My Computer">
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
		<Item Name="Multilist Box" Type="Folder" URL="..">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="LVRowAndColumnTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRowAndColumnTypeDef.ctl"/>
				<Item Name="LVPoint32TypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVPoint32TypeDef.ctl"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="LVFontTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVFontTypeDef.ctl"/>
				<Item Name="Color to RGB.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/colorconv.llb/Color to RGB.vi"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="RGB to Color.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/colorconv.llb/RGB to Color.vi"/>
				<Item Name="imagedata.ctl" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/imagedata.ctl"/>
				<Item Name="LVPositionTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVPositionTypeDef.ctl"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="LVRowAndColumnUnsignedTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRowAndColumnUnsignedTypeDef.ctl"/>
				<Item Name="NI_Matrix.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/Matrix/NI_Matrix.lvlib"/>
			</Item>
			<Item Name="Mlistbox Tools.lvlib" Type="Library" URL="../../../Mlistbox Tools.lvlib"/>
			<Item Name="Listbox Tool.lvlib" Type="Library" URL="../../../../ListBox/Listbox Tool.lvlib"/>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="Shift 2D Array.vi" Type="VI" URL="../../../../../../数组工具/2D数组移位/Shift 2D Array.vi"/>
			<Item Name="Shift 2D CDB Array.vi" Type="VI" URL="../../../../../../数组工具/2D数组移位/Shift 2D CDB Array.vi"/>
			<Item Name="依行或列索引2D数组.vi" Type="VI" URL="../../../../../../数组工具/索引数组/依行或列索引2D数组.vi"/>
			<Item Name="依行或列索引2D数组(Boolean).vi" Type="VI" URL="../../../../../../数组工具/索引数组/依行或列索引2D数组(Boolean).vi"/>
			<Item Name="依行或列索引2D数组(CDB).vi" Type="VI" URL="../../../../../../数组工具/索引数组/依行或列索引2D数组(CDB).vi"/>
			<Item Name="依行或列索引2D数组(CSG).vi" Type="VI" URL="../../../../../../数组工具/索引数组/依行或列索引2D数组(CSG).vi"/>
			<Item Name="依行或列索引2D数组(DBL).vi" Type="VI" URL="../../../../../../数组工具/索引数组/依行或列索引2D数组(DBL).vi"/>
			<Item Name="依行或列索引2D数组(I8).vi" Type="VI" URL="../../../../../../数组工具/索引数组/依行或列索引2D数组(I8).vi"/>
			<Item Name="依行或列索引2D数组(I16).vi" Type="VI" URL="../../../../../../数组工具/索引数组/依行或列索引2D数组(I16).vi"/>
			<Item Name="依行或列索引2D数组(I32).vi" Type="VI" URL="../../../../../../数组工具/索引数组/依行或列索引2D数组(I32).vi"/>
			<Item Name="依行或列索引2D数组(I64).vi" Type="VI" URL="../../../../../../数组工具/索引数组/依行或列索引2D数组(I64).vi"/>
			<Item Name="依行或列索引2D数组(LVObject).vi" Type="VI" URL="../../../../../../数组工具/索引数组/依行或列索引2D数组(LVObject).vi"/>
			<Item Name="依行或列索引2D数组(Path).vi" Type="VI" URL="../../../../../../数组工具/索引数组/依行或列索引2D数组(Path).vi"/>
			<Item Name="依行或列索引2D数组(SGL).vi" Type="VI" URL="../../../../../../数组工具/索引数组/依行或列索引2D数组(SGL).vi"/>
			<Item Name="依行或列索引2D数组(STR).vi" Type="VI" URL="../../../../../../数组工具/索引数组/依行或列索引2D数组(STR).vi"/>
			<Item Name="依行或列索引2D数组(TimeStamp).vi" Type="VI" URL="../../../../../../数组工具/索引数组/依行或列索引2D数组(TimeStamp).vi"/>
			<Item Name="依行或列索引2D数组(U8).vi" Type="VI" URL="../../../../../../数组工具/索引数组/依行或列索引2D数组(U8).vi"/>
			<Item Name="依行或列索引2D数组(U16).vi" Type="VI" URL="../../../../../../数组工具/索引数组/依行或列索引2D数组(U16).vi"/>
			<Item Name="依行或列索引2D数组(U32).vi" Type="VI" URL="../../../../../../数组工具/索引数组/依行或列索引2D数组(U32).vi"/>
			<Item Name="依行或列索引2D数组(U64).vi" Type="VI" URL="../../../../../../数组工具/索引数组/依行或列索引2D数组(U64).vi"/>
			<Item Name="依行或列索引2D数组(VAR).vi" Type="VI" URL="../../../../../../数组工具/索引数组/依行或列索引2D数组(VAR).vi"/>
			<Item Name="Shift 2D CSG Array.vi" Type="VI" URL="../../../../../../数组工具/2D数组移位/Shift 2D CSG Array.vi"/>
			<Item Name="Shift 2D DBL Array.vi" Type="VI" URL="../../../../../../数组工具/2D数组移位/Shift 2D DBL Array.vi"/>
			<Item Name="Shift 2D I8 Array.vi" Type="VI" URL="../../../../../../数组工具/2D数组移位/Shift 2D I8 Array.vi"/>
			<Item Name="Shift 2D I16 Array.vi" Type="VI" URL="../../../../../../数组工具/2D数组移位/Shift 2D I16 Array.vi"/>
			<Item Name="Shift 2D I32 Array.vi" Type="VI" URL="../../../../../../数组工具/2D数组移位/Shift 2D I32 Array.vi"/>
			<Item Name="Shift 2D I64 Array.vi" Type="VI" URL="../../../../../../数组工具/2D数组移位/Shift 2D I64 Array.vi"/>
			<Item Name="Shift 2D Path Array.vi" Type="VI" URL="../../../../../../数组工具/2D数组移位/Shift 2D Path Array.vi"/>
			<Item Name="Shift 2D SGL Array.vi" Type="VI" URL="../../../../../../数组工具/2D数组移位/Shift 2D SGL Array.vi"/>
			<Item Name="Shift 2D String Array.vi" Type="VI" URL="../../../../../../数组工具/2D数组移位/Shift 2D String Array.vi"/>
			<Item Name="Shift 2D TimeStamp Array.vi" Type="VI" URL="../../../../../../数组工具/2D数组移位/Shift 2D TimeStamp Array.vi"/>
			<Item Name="Shift 2D U8 Array.vi" Type="VI" URL="../../../../../../数组工具/2D数组移位/Shift 2D U8 Array.vi"/>
			<Item Name="Shift 2D U16 Array.vi" Type="VI" URL="../../../../../../数组工具/2D数组移位/Shift 2D U16 Array.vi"/>
			<Item Name="Shift 2D U32 Array.vi" Type="VI" URL="../../../../../../数组工具/2D数组移位/Shift 2D U32 Array.vi"/>
			<Item Name="Shift 2D U64 Array.vi" Type="VI" URL="../../../../../../数组工具/2D数组移位/Shift 2D U64 Array.vi"/>
			<Item Name="Shift 2D VAR Array.vi" Type="VI" URL="../../../../../../数组工具/2D数组移位/Shift 2D VAR Array.vi"/>
			<Item Name="2D数组排序.vi" Type="VI" URL="../../../../../../数组工具/数组排序/2D数组排序.vi"/>
			<Item Name="2D数组排序[CDB 幅度,实部,虚部].vi" Type="VI" URL="../../../../../../数组工具/数组排序/2D数组排序[CDB 幅度,实部,虚部].vi"/>
			<Item Name="1D数组排序.vi" Type="VI" URL="../../../../../../数组工具/数组排序/1D数组排序.vi"/>
			<Item Name="1D数组排序[DBL].vi" Type="VI" URL="../../../../../../数组工具/数组排序/1D数组排序[DBL].vi"/>
			<Item Name="1D数组排序[I8].vi" Type="VI" URL="../../../../../../数组工具/数组排序/1D数组排序[I8].vi"/>
			<Item Name="1D数组排序[I16].vi" Type="VI" URL="../../../../../../数组工具/数组排序/1D数组排序[I16].vi"/>
			<Item Name="1D数组排序[I32].vi" Type="VI" URL="../../../../../../数组工具/数组排序/1D数组排序[I32].vi"/>
			<Item Name="1D数组排序[I64].vi" Type="VI" URL="../../../../../../数组工具/数组排序/1D数组排序[I64].vi"/>
			<Item Name="1D数组排序[Path].vi" Type="VI" URL="../../../../../../数组工具/数组排序/1D数组排序[Path].vi"/>
			<Item Name="1D数组排序[SGL].vi" Type="VI" URL="../../../../../../数组工具/数组排序/1D数组排序[SGL].vi"/>
			<Item Name="1D数组排序[STR].vi" Type="VI" URL="../../../../../../数组工具/数组排序/1D数组排序[STR].vi"/>
			<Item Name="1D数组排序[TimeStamp].vi" Type="VI" URL="../../../../../../数组工具/数组排序/1D数组排序[TimeStamp].vi"/>
			<Item Name="1D数组排序[U8].vi" Type="VI" URL="../../../../../../数组工具/数组排序/1D数组排序[U8].vi"/>
			<Item Name="1D数组排序[U16].vi" Type="VI" URL="../../../../../../数组工具/数组排序/1D数组排序[U16].vi"/>
			<Item Name="1D数组排序[U32].vi" Type="VI" URL="../../../../../../数组工具/数组排序/1D数组排序[U32].vi"/>
			<Item Name="1D数组排序[U64].vi" Type="VI" URL="../../../../../../数组工具/数组排序/1D数组排序[U64].vi"/>
			<Item Name="1D数组排序[CDB 实部,虚部].vi" Type="VI" URL="../../../../../../数组工具/数组排序/1D数组排序[CDB 实部,虚部].vi"/>
			<Item Name="1D数组排序[CDB 幅度,相位角].vi" Type="VI" URL="../../../../../../数组工具/数组排序/1D数组排序[CDB 幅度,相位角].vi"/>
			<Item Name="1D数组排序[CSG 幅度,实部,虚部].vi" Type="VI" URL="../../../../../../数组工具/数组排序/1D数组排序[CSG 幅度,实部,虚部].vi"/>
			<Item Name="1D数组排序[CDB 幅度,实部,虚部].vi" Type="VI" URL="../../../../../../数组工具/数组排序/1D数组排序[CDB 幅度,实部,虚部].vi"/>
			<Item Name="1D数组排序[CSG 幅度,相位角].vi" Type="VI" URL="../../../../../../数组工具/数组排序/1D数组排序[CSG 幅度,相位角].vi"/>
			<Item Name="1D数组排序[CSG 实部,虚部].vi" Type="VI" URL="../../../../../../数组工具/数组排序/1D数组排序[CSG 实部,虚部].vi"/>
			<Item Name="1D数组排序[Boolean].vi" Type="VI" URL="../../../../../../数组工具/数组排序/1D数组排序[Boolean].vi"/>
			<Item Name="2D数组排序[CDB 幅度,相位角].vi" Type="VI" URL="../../../../../../数组工具/数组排序/2D数组排序[CDB 幅度,相位角].vi"/>
			<Item Name="2D数组排序[CDB 实部,虚部].vi" Type="VI" URL="../../../../../../数组工具/数组排序/2D数组排序[CDB 实部,虚部].vi"/>
			<Item Name="2D数组排序[CSG 幅度,实部,虚部].vi" Type="VI" URL="../../../../../../数组工具/数组排序/2D数组排序[CSG 幅度,实部,虚部].vi"/>
			<Item Name="2D数组排序[CSG 幅度,相位角].vi" Type="VI" URL="../../../../../../数组工具/数组排序/2D数组排序[CSG 幅度,相位角].vi"/>
			<Item Name="2D数组排序[CSG 实部,虚部].vi" Type="VI" URL="../../../../../../数组工具/数组排序/2D数组排序[CSG 实部,虚部].vi"/>
			<Item Name="2D数组排序[DBL].vi" Type="VI" URL="../../../../../../数组工具/数组排序/2D数组排序[DBL].vi"/>
			<Item Name="2D数组排序[I8].vi" Type="VI" URL="../../../../../../数组工具/数组排序/2D数组排序[I8].vi"/>
			<Item Name="2D数组排序[I16].vi" Type="VI" URL="../../../../../../数组工具/数组排序/2D数组排序[I16].vi"/>
			<Item Name="2D数组排序[I32].vi" Type="VI" URL="../../../../../../数组工具/数组排序/2D数组排序[I32].vi"/>
			<Item Name="2D数组排序[I64].vi" Type="VI" URL="../../../../../../数组工具/数组排序/2D数组排序[I64].vi"/>
			<Item Name="2D数组排序[SGL].vi" Type="VI" URL="../../../../../../数组工具/数组排序/2D数组排序[SGL].vi"/>
			<Item Name="2D数组排序[Path].vi" Type="VI" URL="../../../../../../数组工具/数组排序/2D数组排序[Path].vi"/>
			<Item Name="2D数组排序[STR].vi" Type="VI" URL="../../../../../../数组工具/数组排序/2D数组排序[STR].vi"/>
			<Item Name="2D数组排序[TimeStamp].vi" Type="VI" URL="../../../../../../数组工具/数组排序/2D数组排序[TimeStamp].vi"/>
			<Item Name="2D数组排序[U8].vi" Type="VI" URL="../../../../../../数组工具/数组排序/2D数组排序[U8].vi"/>
			<Item Name="2D数组排序[U16].vi" Type="VI" URL="../../../../../../数组工具/数组排序/2D数组排序[U16].vi"/>
			<Item Name="2D数组排序[U32].vi" Type="VI" URL="../../../../../../数组工具/数组排序/2D数组排序[U32].vi"/>
			<Item Name="2D数组排序[U64].vi" Type="VI" URL="../../../../../../数组工具/数组排序/2D数组排序[U64].vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
