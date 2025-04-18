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
		<Item Name="Enumerator.lvclass" Type="LVClass" URL="../Enumerator/Enumerator.lvclass"/>
		<Item Name="ArrayListClass.lvclass" Type="LVClass" URL="../ArrayList/ArrayList/ArrayListClass.lvclass"/>
		<Item Name="ArrayList DEMO.vi" Type="VI" URL="../ArrayList/ArrayList DEMO.vi"/>
		<Item Name="HashTable.lvclass" Type="LVClass" URL="../HashTable/HashTableClass/HashTable.lvclass"/>
		<Item Name="HashTable Demo.vi" Type="VI" URL="../HashTable/HashTableClass/HashTable Demo.vi"/>
		<Item Name="HashTable Demo1.vi" Type="VI" URL="../HashTable/HashTableClass/HashTable Demo1.vi"/>
		<Item Name="Stack.lvclass" Type="LVClass" URL="../Stack/Stack.lvclass"/>
		<Item Name="Stack Demo.vi" Type="VI" URL="../Stack/Stack Demo.vi"/>
		<Item Name="Queue.lvclass" Type="LVClass" URL="../Queue/Queue.lvclass"/>
		<Item Name="Queue Demo.vi" Type="VI" URL="../Queue/Queue Demo.vi"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name=".NET Object To Variant.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/dotnet.llb/.NET Object To Variant.vi"/>
				<Item Name="To .NET Object.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/dotnet.llb/To .NET Object.vi"/>
			</Item>
			<Item Name="mscorlib" Type="VI" URL="mscorlib">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="程序生成规范" Type="Build"/>
	</Item>
</Project>
