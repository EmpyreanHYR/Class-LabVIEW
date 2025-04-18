<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="12008004">
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
		<Item Name="FIFO(Boolean).lvclass" Type="LVClass" URL="../FIFO(Boolean)/FIFO(Boolean).lvclass"/>
		<Item Name="FIFO(CDB).lvclass" Type="LVClass" URL="../FIFO(CDB)/FIFO(CDB).lvclass"/>
		<Item Name="FIFO(CSG).lvclass" Type="LVClass" URL="../FIFO(CSG)/FIFO(CSG).lvclass"/>
		<Item Name="FIFO(DBL).lvclass" Type="LVClass" URL="../FIFO(DBL)/FIFO(DBL).lvclass"/>
		<Item Name="FIFO(I8).lvclass" Type="LVClass" URL="../FIFO(I8)/FIFO(I8).lvclass"/>
		<Item Name="FIFO(I16).lvclass" Type="LVClass" URL="../FIFO(I16)/FIFO(I16).lvclass"/>
		<Item Name="FIFO(I32).lvclass" Type="LVClass" URL="../FIFO(I32)/FIFO(I32).lvclass"/>
		<Item Name="FIFO(I64).lvclass" Type="LVClass" URL="../FIFO(I64)/FIFO(I64).lvclass"/>
		<Item Name="FIFO(LVObject).lvclass" Type="LVClass" URL="../FIFO(LVObject)/FIFO(LVObject).lvclass"/>
		<Item Name="FIFO(PATH).lvclass" Type="LVClass" URL="../FIFO(PATH)/FIFO(PATH).lvclass"/>
		<Item Name="FIFO(SGL).lvclass" Type="LVClass" URL="../FIFO(SGL)/FIFO(SGL).lvclass"/>
		<Item Name="FIFO(STR).lvclass" Type="LVClass" URL="../FIFO(STR)/FIFO(STR).lvclass"/>
		<Item Name="FIFO(TimeStamp).lvclass" Type="LVClass" URL="../FIFO(TimeStamp)/FIFO(TimeStamp).lvclass"/>
		<Item Name="FIFO(U8).lvclass" Type="LVClass" URL="../FIFO(U8)/FIFO(U8).lvclass"/>
		<Item Name="FIFO(U16).lvclass" Type="LVClass" URL="../FIFO(U16)/FIFO(U16).lvclass"/>
		<Item Name="FIFO(U32).lvclass" Type="LVClass" URL="../FIFO(U32)/FIFO(U32).lvclass"/>
		<Item Name="FIFO(U64).lvclass" Type="LVClass" URL="../FIFO(U64)/FIFO(U64).lvclass"/>
		<Item Name="FIFO(VAR).lvclass" Type="LVClass" URL="../FIFO(VAR)/FIFO(VAR).lvclass"/>
		<Item Name="Test.vi" Type="VI" URL="../Test.vi"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="subTimeDelay.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/TimeDelayBlock.llb/subTimeDelay.vi"/>
			</Item>
		</Item>
		<Item Name="程序生成规范" Type="Build"/>
	</Item>
</Project>
