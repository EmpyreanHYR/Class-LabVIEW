<?xml version='1.0' encoding='UTF-8'?>
<Library LVVersion="11008008">
	<Property Name="NI.Lib.Description" Type="Str">LVOOP library of interprocess messages and message-passing, as well as proxies of dynamically-launched VIs as "active objects".

All code by James David Powell, drjdpowell@gmail.com</Property>
	<Property Name="NI.Lib.HelpPath" Type="Str"></Property>
	<Property Name="NI.Lib.Icon" Type="Bin">%1#!#!!!!!)!"1!&amp;!!!-!%!!!@````]!!!!"!!%!!!(^!!!*Q(C=\&gt;8"&lt;2MR%!813:"$A*T51;!7JA7VI";G"6V^6!P4AFJ1#^/#7F!,TN/'-(++=IC2(-TVS+O`80+:3[QDNP9VYEO]0GP@@NM_LD_\`K4&amp;2`NI`\;^0.WE\\ZH0]8D2;2'N3K6]:DK&gt;?1D(`H)2T\SFL?]Z3VP?=N,8P+3F\TE*5^ZSF/?]J3H@$PE)1^ZS*('Z'/C-?A99(2'C@%R0--T0-0D;QT0]!T0]!S0,D%]QT-]QT-]&lt;IPB':\B':\B-&gt;1GG?W1]QS0Y;.ZGK&gt;ZGK&gt;Z4"H.UQ"NMD:Q'Q1DWM6WUDT.UTR/IXG;JXG;JXF=DO:JHO:JHO:RS\9KP7E?BZT(-&amp;%]R6-]R6-]BI\C+:\C+:\C-6U54`%52*GQ$)Y1Z;&lt;3I8QJHO,R+YKH?)KH?)L(J?U*V&lt;9S$]XDE0-E4`)E4`)EDS%C?:)H?:)H?1Q&lt;S:-]S:-]S7/K3*\E3:Y%3:/;0N*A[=&lt;5+18*YW@&lt;,&lt;E^J&gt;YEO2U2;`0'WJ3R.FOM422L=]2[[,%?:KS(&amp;'PR9SVKL-7+N1CR`LB9[&amp;C97*0%OPH2-?Y_&lt;_KK,OKM4OKI$GKP&gt;I^&lt;`X,(_`U?N^MNLN&gt;L8#[8/*`0=4K&gt;YHA]RO&amp;QC0V_(\P&gt;\OUV].XR^E,Y_6Z[=@YH^5\`3`_$&gt;W.]DF`(N59`!/&lt;!-PQ!!!!!</Property>
	<Property Name="NI.Lib.Version" Type="Str">1.0.0.0</Property>
	<Property Name="NI.SortType" Type="Int">3</Property>
	<Item Name="Messages" Type="Folder">
		<Item Name="MSG.lvclass" Type="LVClass" URL="../Interprocess Messenger/TextVarientMessage/MSG.lvclass"/>
		<Item Name="VarMessage.lvclass" Type="LVClass" URL="../Interprocess Messenger/VarMessage/VarMessage.lvclass"/>
		<Item Name="ErrorMessage.lvclass" Type="LVClass" URL="../Interprocess Messenger/ErrorMessage/ErrorMessage.lvclass"/>
	</Item>
	<Item Name="Messengers" Type="Folder">
		<Item Name="Untested Types" Type="Folder">
			<Item Name="SimpleExample1_DS.vi" Type="VI" URL="../Examples/SimpleExample1_DS.vi"/>
			<Item Name="SimpleExample1_DS_server.vi" Type="VI" URL="../Examples/SimpleExample1_DS_server.vi"/>
			<Item Name="DataSocketMessenger.lvclass" Type="LVClass" URL="../Interprocess Messenger/DataSocketMessenger/DataSocketMessenger.lvclass"/>
			<Item Name="NotifierMessenger.lvclass" Type="LVClass" URL="../Interprocess Messenger/NotifierMessenger/NotifierMessenger.lvclass"/>
		</Item>
		<Item Name="MGR.lvclass" Type="LVClass" URL="../Interprocess Messenger/Messenger (Parent)/MGR.lvclass"/>
		<Item Name="MGR (Receive type).lvclass" Type="LVClass" URL="../Interprocess Messenger/Receiver/MGR (Receive type).lvclass"/>
		<Item Name="QueueMessenger.lvclass" Type="LVClass" URL="../Interprocess Messenger/QueueMessenger/QueueMessenger.lvclass"/>
		<Item Name="EventMessenger.lvclass" Type="LVClass" URL="../Interprocess Messenger/EventMessenger/EventMessenger.lvclass"/>
		<Item Name="LinkedEventMessenger.lvclass" Type="LVClass" URL="../Interprocess Messenger/LinkedEventMessenger/LinkedEventMessenger.lvclass"/>
	</Item>
	<Item Name="Observers" Type="Folder">
		<Item Name="ObserverRegister" Type="Folder">
			<Item Name="Command Messages" Type="Folder">
				<Item Name="ObserverRegistryCommand.lvclass" Type="LVClass" URL="../Parallel Process/ObserverRegister/Commands/ParentCommand/ObserverRegistryCommand.lvclass"/>
				<Item Name="Observer_RegisterByLabel.lvclass" Type="LVClass" URL="../Parallel Process/ObserverRegister/Commands/Register by Label/Observer_RegisterByLabel.lvclass"/>
				<Item Name="Observer_RegisterForAll.lvclass" Type="LVClass" URL="../Parallel Process/ObserverRegister/Commands/RegisterForAll/Observer_RegisterForAll.lvclass"/>
				<Item Name="Observer_RegisterForErrors.lvclass" Type="LVClass" URL="../Parallel Process/ObserverRegister/Commands/RegisterForErrors/Observer_RegisterForErrors.lvclass"/>
			</Item>
			<Item Name="ObserverRegistry.lvclass" Type="LVClass" URL="../Parallel Process/ObserverRegister/ObserverRegistry.lvclass"/>
		</Item>
		<Item Name="Message Translation" Type="Folder">
			<Item Name="Translator.lvclass" Type="LVClass" URL="../Interprocess Messenger/Message Translation/Translator/Translator.lvclass"/>
			<Item Name="SubstututeMessage.lvclass" Type="LVClass" URL="../Interprocess Messenger/Message Translation/SubstututeMessage Folder/SubstututeMessage.lvclass"/>
			<Item Name="Relabel.lvclass" Type="LVClass" URL="../Interprocess Messenger/Message Translation/Relabel Folder/Relabel.lvclass"/>
			<Item Name="LabelPrefix.lvclass" Type="LVClass" URL="../Interprocess Messenger/Message Translation/LabelPrefix Folder/LabelPrefix.lvclass"/>
			<Item Name="AddOuterEnvelope.lvclass" Type="LVClass" URL="../Interprocess Messenger/Message Translation/AddOuterEnvelope Folder/AddOuterEnvelope.lvclass"/>
		</Item>
		<Item Name="Observer.lvclass" Type="LVClass" URL="../Interprocess Messenger/SendOnly/Observer.lvclass"/>
		<Item Name="ObserverSet.lvclass" Type="LVClass" URL="../Interprocess Messenger/SendMultiple/ObserverSet.lvclass"/>
		<Item Name="CancelableObserver.lvclass" Type="LVClass" URL="../Interprocess Messenger/Cancelable Observer/CancelableObserver.lvclass"/>
		<Item Name="Create Observer (polymorphic).vi" Type="VI" URL="../Interprocess Messenger/SendMultiple/Create Observer (polymorphic).vi"/>
		<Item Name="Attach Observer (polymorphic).vi" Type="VI" URL="../Interprocess Messenger/Attach Observer (polymorphic).vi"/>
	</Item>
	<Item Name="Parallel Process" Type="Folder">
		<Item Name="Parallel Process.lvclass" Type="LVClass" URL="../Parallel Process/Parallel Process.lvclass"/>
		<Item Name="PP Template.lvclass" Type="LVClass" URL="../Parallel Process/PP Template (Receive type)/PP Template.lvclass"/>
		<Item Name="PP Template (UserEvent).lvclass" Type="LVClass" URL="../Parallel Process/PP Template (EventUI)/Parallel Process Template (EventUI) Folder/PP Template (UserEvent).lvclass"/>
		<Item Name="Parallel Process Template (JKI-QSM).lvclass" Type="LVClass" URL="../Parallel Process/Parallel Process Template/Parallel Process Template (JKI-QSM).lvclass"/>
		<Item Name="ShutDown Example.vi" Type="VI" URL="../Parallel Process/PP Template (EventUI)/Parallel Process Template (EventUI) Folder/ShutDown Example.vi"/>
	</Item>
	<Item Name="Useful Processes" Type="Folder">
		<Item Name="Logging" Type="Folder">
			<Item Name="Message Logger.lvclass" Type="LVClass" URL="../Parallel Process/Messsage Logger/Message Logger.lvclass"/>
			<Item Name="State Logger.lvclass" Type="LVClass" URL="../Parallel Process/State Logger Folder/State Logger.lvclass"/>
			<Item Name="MessageLoggerMessage.lvclass" Type="LVClass" URL="../Parallel Process/Messsage Logger/MessageLoggerMessage/MessageLoggerMessage.lvclass"/>
		</Item>
		<Item Name="Metronome.lvclass" Type="LVClass" URL="../Parallel Process/Metronome/Metronome.lvclass"/>
	</Item>
	<Item Name="probes" Type="Folder">
		<Item Name="SEND_Probe.vi" Type="VI" URL="../probes/SEND_Probe.vi"/>
		<Item Name="MessageProbe.vi" Type="VI" URL="../probes/MessageProbe.vi"/>
		<Item Name="MessageTableProbe.vi" Type="VI" URL="../probes/MessageTableProbe.vi"/>
	</Item>
	<Item Name="palette menus" Type="Folder">
		<Item Name="Messaging.mnu" Type="Document" URL="../Messaging.mnu"/>
		<Item Name="PP.mnu" Type="Document" URL="../PP.mnu"/>
		<Item Name="Messengers.mnu" Type="Document" URL="../Messengers.mnu"/>
		<Item Name="Observer.mnu" Type="Document" URL="../Observer.mnu"/>
		<Item Name="ObserverReg.mnu" Type="Document" URL="../ObserverReg.mnu"/>
	</Item>
	<Item Name="Send.lvclass" Type="LVClass" URL="../Interprocess Messenger/Send/Send.lvclass"/>
	<Item Name="Class Diagram.vi" Type="VI" URL="../Class Diagram.vi"/>
	<Item Name="Tree.vi" Type="VI" URL="../Tree.vi"/>
</Library>
