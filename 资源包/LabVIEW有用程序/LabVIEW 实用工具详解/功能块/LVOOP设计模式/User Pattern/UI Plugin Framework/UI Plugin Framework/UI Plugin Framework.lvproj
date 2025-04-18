<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="11008008">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="IOScan.Faults" Type="Str"></Property>
		<Property Name="IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="IOScan.Period" Type="UInt">10000</Property>
		<Property Name="IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="IOScan.Priority" Type="UInt">9</Property>
		<Property Name="IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="IOScan.StartEngineOnDeploy" Type="Bool">false</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Framework SubVIs" Type="Folder">
			<Item Name="Error Handling" Type="Folder">
				<Item Name="Error Handler Terminate.vi" Type="VI" URL="../Framework SubVIs/Error Handling/Error Handler Terminate.vi"/>
				<Item Name="Error Handler.vi" Type="VI" URL="../Framework SubVIs/Error Handling/Error Handler.vi"/>
			</Item>
			<Item Name="Main Type Definitions" Type="Folder">
				<Item Name="Actions Type Definition.ctl" Type="VI" URL="../Sliding Menu/Sliding Menu Library/Sliding Menu SubVIs/Sliding Menu Type Definitions/Actions Type Definition.ctl"/>
				<Item Name="Data Communication Type Definitions.ctl" Type="VI" URL="../Sliding Menu/Sliding Menu Library/Sliding Menu SubVIs/Sliding Menu Type Definitions/Data Communication Type Definitions.ctl"/>
				<Item Name="Framework Configuration Data.ctl" Type="VI" URL="../Framework SubVIs/Main Type Definitions/Framework Configuration Data.ctl"/>
				<Item Name="Root Directory Path Global Variable.vi" Type="VI" URL="../Framework SubVIs/Main Type Definitions/Root Directory Path Global Variable.vi"/>
				<Item Name="UI Picture Containers.ctl" Type="VI" URL="../Framework SubVIs/Main Type Definitions/UI Picture Containers.ctl"/>
				<Item Name="User Interface Type Definitions.ctl" Type="VI" URL="../Framework SubVIs/Main Type Definitions/User Interface Type Definitions.ctl"/>
			</Item>
			<Item Name="Plugin Handler" Type="Folder">
				<Item Name="Plugin Command Manager" Type="Folder">
					<Item Name="Notify Plugin Slide Complete" Type="Folder">
						<Item Name="Notify Plugin Slide Completed.lvclass" Type="LVClass" URL="../Framework SubVIs/Plugin Handler/Plugin Command Manager/Notify Plugin Slide Complete/Notify Plugin Slide Completed.lvclass"/>
					</Item>
					<Item Name="Notify Plugins of Menu Down" Type="Folder">
						<Item Name="Notify Plugins of Menu Down.lvclass" Type="LVClass" URL="../Framework SubVIs/Plugin Handler/Plugin Command Manager/Notify Plugins of Menu Down/Notify Plugins of Menu Down.lvclass"/>
					</Item>
					<Item Name="Notify Plugins of Menu Up" Type="Folder">
						<Item Name="Notify Plugins of Menu Up.lvclass" Type="LVClass" URL="../Framework SubVIs/Plugin Handler/Plugin Command Manager/Notify Plugins of Menu Up/Notify Plugins of Menu Up.lvclass"/>
					</Item>
					<Item Name="Plugin Display UI" Type="Folder">
						<Item Name="Plugin Display UI.lvclass" Type="LVClass" URL="../Framework SubVIs/Plugin Handler/Plugin Command Manager/Plugin Display UI/Plugin Display UI.lvclass"/>
					</Item>
					<Item Name="Plugin Handler Launch Plugin" Type="Folder">
						<Item Name="Plugin Handler Launch Plugin.lvclass" Type="LVClass" URL="../Framework SubVIs/Plugin Handler/Plugin Command Manager/Plugin Handler Launch Plugin/Plugin Handler Launch Plugin.lvclass"/>
					</Item>
					<Item Name="Plugin Handler Stop" Type="Folder">
						<Item Name="Plugin Handler Stop.lvclass" Type="LVClass" URL="../Framework SubVIs/Plugin Handler/Plugin Command Manager/Plugin Handler Stop/Plugin Handler Stop.lvclass"/>
					</Item>
					<Item Name="Plugin Initialize" Type="Folder">
						<Item Name="Plugin Handler Initialize.lvclass" Type="LVClass" URL="../Framework SubVIs/Plugin Handler/Plugin Command Manager/Plugin Initialize/Plugin Handler Initialize.lvclass"/>
					</Item>
					<Item Name="Plugin Launch Next" Type="Folder">
						<Item Name="Plugin Load Next.lvclass" Type="LVClass" URL="../Framework SubVIs/Plugin Handler/Plugin Command Manager/Plugin Launch Next/Plugin Load Next.lvclass"/>
					</Item>
					<Item Name="Plugin Load from Disk" Type="Folder">
						<Item Name="Plugin Load from Disk.lvclass" Type="LVClass" URL="../Framework SubVIs/Plugin Handler/Plugin Command Manager/Plugin Load from Disk/Plugin Load from Disk.lvclass"/>
					</Item>
					<Item Name="Plugin Handler Command.lvclass" Type="LVClass" URL="../Framework SubVIs/Plugin Handler/Plugin Command Manager/Plugin Handler Command.lvclass"/>
				</Item>
				<Item Name="Plugin Strict Type Definitions" Type="Folder">
					<Item Name="Plugin Action Engine Enumerator Type Definition.ctl" Type="VI" URL="../Framework SubVIs/Plugin Handler/Plugin Strict Type Definitions/Plugin Action Engine Enumerator Type Definition.ctl"/>
					<Item Name="Plugin Action States.ctl" Type="VI" URL="../Framework SubVIs/Plugin Handler/Plugin Strict Type Definitions/Plugin Action States.ctl"/>
					<Item Name="Plugin Configuration Information.ctl" Type="VI" URL="../Framework SubVIs/Plugin Handler/Plugin Strict Type Definitions/Plugin Configuration Information.ctl"/>
					<Item Name="Plugin Handler Shifter Data Definition.ctl" Type="VI" URL="../Framework SubVIs/Plugin Handler/Plugin Strict Type Definitions/Plugin Handler Shifter Data Definition.ctl"/>
					<Item Name="Plugin Queue Data Communication Type Definition.ctl" Type="VI" URL="../Framework SubVIs/Plugin Handler/Plugin Strict Type Definitions/Plugin Queue Data Communication Type Definition.ctl"/>
				</Item>
			</Item>
			<Item Name="User Interface" Type="Folder">
				<Item Name="UI Command Manager" Type="Folder">
					<Item Name="UI Command Manager Stop" Type="Folder">
						<Item Name="UI Command Manager Stop.lvclass" Type="LVClass" URL="../Framework SubVIs/User Interface/UI Command Manager/UI Command Manager Stop/UI Command Manager Stop.lvclass"/>
					</Item>
					<Item Name="UI Initialize" Type="Folder">
						<Item Name="UI Initialize.lvclass" Type="LVClass" URL="../Framework SubVIs/User Interface/UI Command Manager/UI Initialize/UI Initialize.lvclass"/>
					</Item>
					<Item Name="UI Load SubPanel Display" Type="Folder">
						<Item Name="UI Load SubPanel Display.lvclass" Type="LVClass" URL="../Framework SubVIs/User Interface/UI Command Manager/UI Load SubPanel Display/UI Load SubPanel Display.lvclass"/>
					</Item>
					<Item Name="UI Populate Menu" Type="Folder">
						<Item Name="UI Populate Menu.lvclass" Type="LVClass" URL="../Framework SubVIs/User Interface/UI Command Manager/UI Populate Menu/UI Populate Menu.lvclass"/>
					</Item>
					<Item Name="UI Resize Menu" Type="Folder">
						<Item Name="Resize Menu.lvclass" Type="LVClass" URL="../Framework SubVIs/User Interface/UI Command Manager/UI Resize Menu/Resize Menu.lvclass"/>
						<Item Name="Size Menu to Screen.vi" Type="VI" URL="../Framework SubVIs/User Interface/UI Command Manager/UI Resize Menu/Size Menu to Screen.vi"/>
					</Item>
					<Item Name="UI Set Header Text" Type="Folder">
						<Item Name="Set Header Text.lvclass" Type="LVClass" URL="../Framework SubVIs/User Interface/UI Command Manager/UI Set Header Text/Set Header Text.lvclass"/>
					</Item>
					<Item Name="UI Slide Panel" Type="Folder">
						<Item Name="Move Object.vi" Type="VI" URL="../Framework SubVIs/User Interface/UI Command Manager/UI Slide Panel/Move Object.vi"/>
						<Item Name="Slide Panel Off Screen.lvclass" Type="LVClass" URL="../Framework SubVIs/User Interface/UI Command Manager/UI Slide Panel/Slide Panel Off Screen.lvclass"/>
					</Item>
					<Item Name="UI Slide Panel On Screen" Type="Folder">
						<Item Name="Slide Panel On Screen.lvclass" Type="LVClass" URL="../Framework SubVIs/User Interface/UI Command Manager/UI Slide Panel On Screen/Slide Panel On Screen.lvclass"/>
					</Item>
					<Item Name="UI Toggle Menu" Type="Folder">
						<Item Name="UI Toggle Menu.lvclass" Type="LVClass" URL="../Framework SubVIs/User Interface/UI Command Manager/UI Toggle Menu/UI Toggle Menu.lvclass"/>
					</Item>
					<Item Name="UI Un-Load SubPanel Display" Type="Folder">
						<Item Name="UI Un-Load SubPanel Display.lvclass" Type="LVClass" URL="../Framework SubVIs/User Interface/UI Command Manager/UI Un-Load SubPanel Display/UI Un-Load SubPanel Display.lvclass"/>
					</Item>
					<Item Name="UI Command Manager.lvclass" Type="LVClass" URL="../Framework SubVIs/User Interface/UI Command Manager/UI Command Manager.lvclass"/>
				</Item>
				<Item Name="UI Control Definitions" Type="Folder">
					<Item Name="Button Images" Type="Folder">
						<Item Name="Home Down.png" Type="Document" URL="../Framework SubVIs/User Interface/UI Control Definitions/Button Images/Home Down.png"/>
						<Item Name="Home Up.png" Type="Document" URL="../Framework SubVIs/User Interface/UI Control Definitions/Button Images/Home Up.png"/>
						<Item Name="Locked Down.png" Type="Document" URL="../Framework SubVIs/User Interface/UI Control Definitions/Button Images/Locked Down.png"/>
						<Item Name="Locked Up.png" Type="Document" URL="../Framework SubVIs/User Interface/UI Control Definitions/Button Images/Locked Up.png"/>
						<Item Name="Menu (Down).png" Type="Document" URL="../Framework SubVIs/User Interface/UI Control Definitions/Button Images/Menu (Down).png"/>
						<Item Name="Menu (Up).png" Type="Document" URL="../Framework SubVIs/User Interface/UI Control Definitions/Button Images/Menu (Up).png"/>
						<Item Name="Un-Locked Down.png" Type="Document" URL="../Framework SubVIs/User Interface/UI Control Definitions/Button Images/Un-Locked Down.png"/>
						<Item Name="Un-Locked Up.png" Type="Document" URL="../Framework SubVIs/User Interface/UI Control Definitions/Button Images/Un-Locked Up.png"/>
					</Item>
					<Item Name="Borderless Picture Control.ctl" Type="VI" URL="../Framework SubVIs/User Interface/UI Control Definitions/Borderless Picture Control.ctl"/>
					<Item Name="Go Home.ctl" Type="VI" URL="../Framework SubVIs/User Interface/UI Control Definitions/Go Home.ctl"/>
					<Item Name="Lock Button.ctl" Type="VI" URL="../Framework SubVIs/User Interface/UI Control Definitions/Lock Button.ctl"/>
					<Item Name="Menu Button.ctl" Type="VI" URL="../Framework SubVIs/User Interface/UI Control Definitions/Menu Button.ctl"/>
					<Item Name="UI Configuration Information.ctl" Type="VI" URL="../Framework SubVIs/User Interface/UI Control Definitions/UI Configuration Information.ctl"/>
				</Item>
				<Item Name="UI Images" Type="Folder">
					<Item Name="Blue Background.bmp" Type="Document" URL="../Framework SubVIs/User Interface/UI Images/Blue Background.bmp"/>
				</Item>
				<Item Name="UI Initialize.vi" Type="VI" URL="../Framework SubVIs/User Interface/UI Initialize.vi"/>
				<Item Name="UI Populate Main Menu.vi" Type="VI" URL="../Framework SubVIs/User Interface/UI Populate Main Menu.vi"/>
				<Item Name="UI Shutdown.vi" Type="VI" URL="../Framework SubVIs/User Interface/UI Shutdown.vi"/>
			</Item>
			<Item Name="Create Default Config settings.vi" Type="VI" URL="../Framework SubVIs/Create Default Config settings.vi"/>
			<Item Name="Get Configuration Information.vi" Type="VI" URL="../Framework SubVIs/Get Configuration Information.vi"/>
			<Item Name="Root Location Global.vi" Type="VI" URL="../Framework SubVIs/Root Location Global.vi"/>
			<Item Name="Stop Everything FGV.vi" Type="VI" URL="../Framework SubVIs/Stop Everything FGV.vi"/>
			<Item Name="Toggle Menu Action.vi" Type="VI" URL="../Framework SubVIs/Toggle Menu Action.vi"/>
			<Item Name="Top Level VI Reference.vi" Type="VI" URL="../Framework SubVIs/Top Level VI Reference.vi"/>
		</Item>
		<Item Name="Images" Type="Folder">
			<Item Name="Blue Background.bmp" Type="Document" URL="../Images/Blue Background.bmp"/>
			<Item Name="LV2010.bmp" Type="Document" URL="../Images/LV2010.bmp"/>
			<Item Name="LV2010Foot.bmp" Type="Document" URL="../Images/LV2010Foot.bmp"/>
			<Item Name="LV2010Foot2.bmp" Type="Document" URL="../Images/LV2010Foot2.bmp"/>
			<Item Name="LV2010header.bmp" Type="Document" URL="../Images/LV2010header.bmp"/>
			<Item Name="Yellow.bmp" Type="Document" URL="../Images/Yellow.bmp"/>
		</Item>
		<Item Name="Parent Plugin Definition" Type="Folder">
			<Item Name="Plugin API" Type="Folder"/>
			<Item Name="Plugin Template" Type="Folder">
				<Item Name="Generic Plugin.lvclass" Type="LVClass" URL="../Parent Plugin Definition/Plugin Template/Generic Plugin.lvclass"/>
			</Item>
			<Item Name="Template Type Definitions" Type="Folder"/>
			<Item Name="Plugin Design Pattern.vi" Type="VI" URL="../Parent Plugin Definition/Plugin Design Pattern.vi"/>
		</Item>
		<Item Name="Avatar.ini" Type="Document" URL="../Avatar.ini"/>
		<Item Name="main.vi" Type="VI" URL="../main.vi"/>
		<Item Name="Sliding Menu Library.lvlib" Type="Library" URL="../Sliding Menu/Sliding Menu Library/Sliding Menu Library.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Calc Long Word Padded Width.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Calc Long Word Padded Width.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Draw Flattened Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Flattened Pixmap.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="FixBadRect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/FixBadRect.vi"/>
				<Item Name="Flip and Pad for Picture Control.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Flip and Pad for Picture Control.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="FormatTime String.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/FormatTime String.vi"/>
				<Item Name="General Error Handler CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Get LV Class Default Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Default Value.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="imagedata.ctl" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/imagedata.ctl"/>
				<Item Name="List Directory and LLBs.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/List Directory and LLBs.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="LVPointTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVPointTypeDef.ctl"/>
				<Item Name="LVPositionTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVPositionTypeDef.ctl"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Read BMP File Data.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Read BMP File Data.vi"/>
				<Item Name="Read BMP File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Read BMP File.vi"/>
				<Item Name="Read BMP Header Info.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Read BMP Header Info.vi"/>
				<Item Name="Recursive File List.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Recursive File List.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set Cursor (Cursor ID).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Cursor ID).vi"/>
				<Item Name="Set Cursor (Icon Pict).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Icon Pict).vi"/>
				<Item Name="Set Cursor.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="subElapsedTime.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/subElapsedTime.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Version To Dotted String.vi" Type="VI" URL="/&lt;vilib&gt;/_xctls/Version To Dotted String.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="XControlSupport.lvlib" Type="Library" URL="/&lt;vilib&gt;/_xctls/XControlSupport.lvlib"/>
			</Item>
			<Item Name="Menu Button Library.lvlib" Type="Library" URL="../Sliding Menu/Menu Button Library/Menu Button Library.lvlib"/>
			<Item Name="Sliding Menu Methods.ctl" Type="VI" URL="../Sliding Menu/Sliding Menu Library/Sliding Menu xControl/Sliding Menu Methods.ctl"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
