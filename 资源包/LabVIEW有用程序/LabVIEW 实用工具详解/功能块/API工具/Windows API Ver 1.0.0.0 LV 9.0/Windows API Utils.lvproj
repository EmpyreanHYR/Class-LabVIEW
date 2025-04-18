<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="12008004">
	<Property Name="CCSymbols" Type="Str"></Property>
	<Property Name="NI.Project.Description" Type="Str">A collection of VIs that are wrappers around common windows API functions.</Property>
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
		<Item Name="Windows API" Type="Folder">
			<Item Name="windows_api_Drives.llb" Type="Folder">
				<Item Name="Get All Drives Info.vi" Type="VI" URL="../windows_api_Drives.llb/Get All Drives Info.vi"/>
				<Item Name="Get Drive List.vi" Type="VI" URL="../windows_api_Drives.llb/Get Drive List.vi"/>
				<Item Name="Get Drive Type.vi" Type="VI" URL="../windows_api_Drives.llb/Get Drive Type.vi"/>
				<Item Name="GetDiskFreeSpace.vi" Type="VI" URL="../windows_api_Drives.llb/GetDiskFreeSpace.vi"/>
				<Item Name="GetFileAttributes.vi" Type="VI" URL="../windows_api_Drives.llb/GetFileAttributes.vi"/>
				<Item Name="GetSystemDirectory.vi" Type="VI" URL="../windows_api_Drives.llb/GetSystemDirectory.vi"/>
				<Item Name="GetTempDirectory.vi" Type="VI" URL="../windows_api_Drives.llb/GetTempDirectory.vi"/>
				<Item Name="GetVolumeInformation.vi" Type="VI" URL="../windows_api_Drives.llb/GetVolumeInformation.vi"/>
				<Item Name="GetWindowsDirectory.vi" Type="VI" URL="../windows_api_Drives.llb/GetWindowsDirectory.vi"/>
				<Item Name="SetFileAttributes.vi" Type="VI" URL="../windows_api_Drives.llb/SetFileAttributes.vi"/>
				<Item Name="SetVolumeLabel.vi" Type="VI" URL="../windows_api_Drives.llb/SetVolumeLabel.vi"/>
			</Item>
			<Item Name="windows_api_Login.llb" Type="Folder">
				<Item Name="GetComputerName.vi" Type="VI" URL="../windows_api_Login.llb/GetComputerName.vi"/>
				<Item Name="GetUserName.vi" Type="VI" URL="../windows_api_Login.llb/GetUserName.vi"/>
			</Item>
			<Item Name="windows_api_Misc.llb" Type="Folder">
				<Item Name="AdjustTokenPrivilege.vi" Type="VI" URL="../windows_api_Misc.llb/AdjustTokenPrivilege.vi"/>
				<Item Name="Cursor.vi" Type="VI" URL="../windows_api_Misc.llb/Cursor.vi"/>
				<Item Name="ExitWindowsEx.vi" Type="VI" URL="../windows_api_Misc.llb/ExitWindowsEx.vi"/>
				<Item Name="GetCurrentProcess.vi" Type="VI" URL="../windows_api_Misc.llb/GetCurrentProcess.vi"/>
				<Item Name="GetProcessToken.vi" Type="VI" URL="../windows_api_Misc.llb/GetProcessToken.vi"/>
				<Item Name="SetTokenPrivilege.vi" Type="VI" URL="../windows_api_Misc.llb/SetTokenPrivilege.vi"/>
				<Item Name="Str To UTF16.vi" Type="VI" URL="../windows_api_Misc.llb/Str To UTF16.vi"/>
			</Item>
			<Item Name="Documentation" Type="Folder">
				<Item Name="Creative Commons - Attribution - Non-Commercial - Share-Alike 2.0 England and Wales.pdf" Type="Document" URL="../Documentation/Creative Commons - Attribution - Non-Commercial - Share-Alike 2.0 England and Wales.pdf"/>
				<Item Name="ReadMe.txt" Type="Document" URL="../Documentation/ReadMe.txt"/>
			</Item>
		</Item>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="kernel32.dll" Type="Document" URL="kernel32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="advapi32.dll" Type="Document" URL="advapi32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="user32.dll" Type="Document" URL="user32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
