<?xml version='1.0' encoding='UTF-8'?>
<LVClass LVVersion="11008008">
	<Property Name="NI.Lib.ContainingLib" Type="Str">Messenging.lvlib</Property>
	<Property Name="NI.Lib.ContainingLibPath" Type="Str">../../../Messenging.lvlib</Property>
	<Property Name="NI.Lib.Description" Type="Str">Any object to which one can send a message inherits from this class.  It could really do with a better name but I can't think of one ("Sendable"?).

Note that "Send" has no "receive", "create" or "destroy" functionality in itself.  It's children are:

"Messengers", communication means that carry messages

"Parallel Processes", proxies for "actors" or "active obects" that communicate via messages

"Observers", special containers of the above two object types meant for use in the "Observer Pattern"</Property>
	<Property Name="NI.Lib.HelpPath" Type="Str"></Property>
	<Property Name="NI.Lib.Icon" Type="Bin">%1#!#!!!!!)!"1!&amp;!!!-!%!!!@````]!!!!"!!%!!!)_!!!*Q(C=\&gt;7`5?.1%-@RHZA,3.5"YYS%:&amp;NQ\LH!,?Q-&amp;4AV2_)7.LA#TCWYB7V",&lt;A&amp;]8X0#]0.!5[!97ZY9I8]U`PT1:+&amp;V.OF^%0TO&lt;:[MTW?&lt;RV\=&lt;B[.KK/ZM&gt;&gt;\T*8].@YKN8]YPH6;6D.`]`Z_44_V@8@]*^J_G\@\@^OW\.@AA``(ARK,S)KK;#=-L6FZS20]C20]C20]C!0]C!0]C!0=C&gt;X=C&gt;X=C&gt;X=C-X=C-X=C-X]L[2CVTE)I?5,*YMF%S;4*"UBK*EFXA34_**0(R5YEE]C3@R*"[[+0%EHM34?")0QZ2Y%E`C34S*B[G[*0N'DC@R-,U#4_!*0)%H],#E!E]!#"9,*AYGA;(A:(!1?!*0Y/&amp;1A3@Q"*\!%XAYL=!4?!*0Y!E]$/F8*&lt;KG&lt;?2YG%;/R`%Y(M@D?*B;DM@R/"\(YXB94I\(]4A):U&amp;H=ABS"DE&gt;H!_/R`(Q3Y\(]4A?R_.Y/.8PE0=LUT2N)]&gt;D?!S0Y4%]BI=J:(A-D_%R0);(;76Y$)`B-4S'B[6E?!S0Y4%ARK)M,W-S9[$2S1A-$T`^;&lt;&amp;_F[*,L'^30&lt;SKBV,VM+E?)N8$I&lt;LJKJOJOEGKC[_[K+K,J&lt;I)KD^/B6:B6)OI"L?//L+@K!/VJX&lt;5BFJ43WJ"D7XI/X=](I_;JEG(QU(\`6[\X5[&lt;T5&lt;L^6L,Z6+,R5,D/$[^"K\9HFY)J`@3FO/\[7&lt;Y.@Y:\O*WW0[](OZ`XQQN`Y4`TV`AX;A,06_$;`1!TS&gt;JV!!!!!!</Property>
	<Property Name="NI.Lib.Version" Type="Str">1.0.0.0</Property>
	<Property Name="NI.LVClass.ClassNameVisibleInProbe" Type="Bool">true</Property>
	<Property Name="NI.LVClass.CoreWirePen" Type="Bin">%1#!#!!!!!)!"1!&amp;!!!-!%!!!@````]!!!!"!!%!!!6,0%.M&gt;8.U:8)_$1I]4G&amp;N:4Z1:7Y],UZB&lt;75_$1I]4H6N27RU=TYY0#^/&gt;7V&amp;&lt;(2T0AU+0&amp;5T-DY.#DR/97VF0E:P=G6H=G^V&lt;G1A1W^M&lt;X)],UZB&lt;75_$1I]6G&amp;M0D%S/$1V-45T0#^797Q_$1I],V5T-DY.#DR6-T)_$1I]4G&amp;N:4Z#97.L:X*P&gt;7ZE)%.P&lt;'^S0#^/97VF0AU+0&amp;:B&lt;$YR.D=X.T)R.4QP6G&amp;M0AU+0#^6-T)_$1I]1WRV=X2F=DY.#DR/97VF0E:J&lt;'QA5'&amp;U&gt;'6S&lt;DQP4G&amp;N:4Y.#DR/&gt;7V&amp;&lt;(2T0DA],UZV&lt;56M&gt;(-_$1I]64A_$1I]4G&amp;N:4Z3&lt;X=A-$QP4G&amp;N:4Y.#DR797Q_-4!S0#^797Q_$1I],V5Y0AU+0&amp;5Y0AU+0%ZB&lt;75_5G^X)$%],UZB&lt;75_$1I]6G&amp;M0D%Q-DQP6G&amp;M0AU+0#^6/$Y.#DR6/$Y.#DR/97VF0F*P&gt;S!S0#^/97VF0AU+0&amp;:B&lt;$YR-$)],V:B&lt;$Y.#DQP64A_$1I]64A_$1I]4G&amp;N:4Z3&lt;X=A-TQP4G&amp;N:4Y.#DR797Q_-4!S0#^797Q_$1I],V5Y0AU+0&amp;5Y0AU+0%ZB&lt;75_5G^X)$1],UZB&lt;75_$1I]6G&amp;M0D%Q-DQP6G&amp;M0AU+0#^6/$Y.#DR6/$Y.#DR/97VF0F*P&gt;S!V0#^/97VF0AU+0&amp;:B&lt;$YR-$)],V:B&lt;$Y.#DQP64A_$1I]64A_$1I]4G&amp;N:4Z3&lt;X=A.DQP4G&amp;N:4Y.#DR797Q_-4!S0#^797Q_$1I],V5Y0AU+0&amp;5Y0AU+0%ZB&lt;75_5G^X)$=],UZB&lt;75_$1I]6G&amp;M0D%Q-DQP6G&amp;M0AU+0#^6/$Y.#DQP1WRV=X2F=DY.#DR*-49_$1I]4G&amp;N:4Z8;72U;$QP4G&amp;N:4Y.#DR797Q_-TQP6G&amp;M0AU+0#^*-49_$1I]26=_$1I]4G&amp;N:4Z.&lt;W2F0#^/97VF0AU+0%.I&lt;WFD:4Z$&lt;X"Z0#^$;'^J9W5_$1I]1WBP;7.F0E^S0#^$;'^J9W5_$1I]1WBP;7.F0E6Y9WRV=WFW:3"0=DQP1WBP;7.F0AU+0%.I&lt;WFD:4Z#;81A1WRF98)],U.I&lt;WFD:4Y.#DR$;'^J9W5_4G^U)%.P=(E],U.I&lt;WFD:4Y.#DR$;'^J9W5_4G^U)%^S0#^$;'^J9W5_$1I]1WBP;7.F0EZP=C"&amp;?'.M&gt;8.J&gt;G5A4X)],U.I&lt;WFD:4Y.#DR$;'^J9W5_4G^U)%*J&gt;#"$&lt;'6B=DQP1WBP;7.F0AU+0&amp;:B&lt;$YQ0#^797Q_$1I],U680AU+0%6-0AU+0%ZB&lt;75_5X2Z&lt;'5],UZB&lt;75_$1I]1WBP;7.F0F.P&lt;'FE0#^$;'^J9W5_$1I]1WBP;7.F0E2B=WA],U.I&lt;WFD:4Y.#DR$;'^J9W5_2'^U0#^$;'^J9W5_$1I]1WBP;7.F0E2B=WAA2'^U0#^$;'^J9W5_$1I]1WBP;7.F0E2B=WAA2'^U)%2P&gt;$QP1WBP;7.F0AU+0&amp;:B&lt;$YQ0#^797Q_$1I],U6-0AU+0%6-0AU+0%ZB&lt;75_2GFM&lt;#"3&gt;7RF0#^/97VF0AU+0%.I&lt;WFD:4Z&amp;&gt;G6O)%^E:$QP1WBP;7.F0AU+0%.I&lt;WFD:4Z8;7ZE;7ZH0#^$;'^J9W5_$1I]6G&amp;M0D!],V:B&lt;$Y.#DQP25Q_$1I]25Q_$1I]4G&amp;N:4Z&amp;&lt;G1A1W&amp;Q=TQP4G&amp;N:4Y.#DR$;'^J9W5_2'6G986M&gt;$QP1WBP;7.F0AU+0%.I&lt;WFD:4Z'&lt;'&amp;U0#^$;'^J9W5_$1I]6G&amp;M0D!],V:B&lt;$Y.#DQP25Q_$1I],U.M&gt;8.U:8)_$1I!!!!!</Property>
	<Property Name="NI.LVClass.EdgeWirePen" Type="Bin">%1#!#!!!!!)!"1!&amp;!!!-!%!!!@````]!!!!"!!%!!!6$0%.M&gt;8.U:8)_$1I]4G&amp;N:4Z1:7Y],UZB&lt;75_$1I]4H6N27RU=TYY0#^/&gt;7V&amp;&lt;(2T0AU+0&amp;5T-DY.#DR/97VF0E:P=G6H=G^V&lt;G1A1W^M&lt;X)],UZB&lt;75_$1I]6G&amp;M0D%S/$1V-45T0#^797Q_$1I],V5T-DY.#DR6-T)_$1I]4G&amp;N:4Z#97.L:X*P&gt;7ZE)%.P&lt;'^S0#^/97VF0AU+0&amp;:B&lt;$YR.D=X.T)R.4QP6G&amp;M0AU+0#^6-T)_$1I]1WRV=X2F=DY.#DR/97VF0E:J&lt;'QA5'&amp;U&gt;'6S&lt;DQP4G&amp;N:4Y.#DR/&gt;7V&amp;&lt;(2T0DA],UZV&lt;56M&gt;(-_$1I]64A_$1I]4G&amp;N:4Z3&lt;X=A-$QP4G&amp;N:4Y.#DR797Q_.4%],V:B&lt;$Y.#DQP64A_$1I]64A_$1I]4G&amp;N:4Z3&lt;X=A-4QP4G&amp;N:4Y.#DR797Q_.4%],V:B&lt;$Y.#DQP64A_$1I]64A_$1I]4G&amp;N:4Z3&lt;X=A-DQP4G&amp;N:4Y.#DR797Q_.4%],V:B&lt;$Y.#DQP64A_$1I]64A_$1I]4G&amp;N:4Z3&lt;X=A-TQP4G&amp;N:4Y.#DR797Q_.4%],V:B&lt;$Y.#DQP64A_$1I]64A_$1I]4G&amp;N:4Z3&lt;X=A.$QP4G&amp;N:4Y.#DR797Q_.4%],V:B&lt;$Y.#DQP64A_$1I]64A_$1I]4G&amp;N:4Z3&lt;X=A.4QP4G&amp;N:4Y.#DR797Q_.4%],V:B&lt;$Y.#DQP64A_$1I]64A_$1I]4G&amp;N:4Z3&lt;X=A.DQP4G&amp;N:4Y.#DR797Q_.4%],V:B&lt;$Y.#DQP64A_$1I]64A_$1I]4G&amp;N:4Z3&lt;X=A.TQP4G&amp;N:4Y.#DR797Q_.4%],V:B&lt;$Y.#DQP64A_$1I],U.M&gt;8.U:8)_$1I]34%W0AU+0%ZB&lt;75_6WFE&gt;'A],UZB&lt;75_$1I]6G&amp;M0D5],V:B&lt;$Y.#DQP34%W0AU+0%680AU+0%ZB&lt;75_47^E:4QP4G&amp;N:4Y.#DR$;'^J9W5_1W^Q?4QP1WBP;7.F0AU+0%.I&lt;WFD:4Z0=DQP1WBP;7.F0AU+0%.I&lt;WFD:4Z&amp;?'.M&gt;8.J&gt;G5A4X)],U.I&lt;WFD:4Y.#DR$;'^J9W5_1GFU)%.M:7&amp;S0#^$;'^J9W5_$1I]1WBP;7.F0EZP&gt;#"$&lt;X"Z0#^$;'^J9W5_$1I]1WBP;7.F0EZP&gt;#"0=DQP1WBP;7.F0AU+0%.I&lt;WFD:4Z/&lt;X)A28BD&lt;(6T;8:F)%^S0#^$;'^J9W5_$1I]1WBP;7.F0EZP&gt;#"#;81A1WRF98)],U.I&lt;WFD:4Y.#DR797Q_-$QP6G&amp;M0AU+0#^&amp;6TY.#DR&amp;4$Y.#DR/97VF0F.U?7RF0#^/97VF0AU+0%.I&lt;WFD:4Z4&lt;WRJ:$QP1WBP;7.F0AU+0%.I&lt;WFD:4Z%98.I0#^$;'^J9W5_$1I]1WBP;7.F0E2P&gt;$QP1WBP;7.F0AU+0%.I&lt;WFD:4Z%98.I)%2P&gt;$QP1WBP;7.F0AU+0%.I&lt;WFD:4Z%98.I)%2P&gt;#"%&lt;X1],U.I&lt;WFD:4Y.#DR797Q_-$QP6G&amp;M0AU+0#^&amp;4$Y.#DR&amp;4$Y.#DR/97VF0E:J&lt;'QA5H6M:4QP4G&amp;N:4Y.#DR$;'^J9W5_28:F&lt;C"0:'1],U.I&lt;WFD:4Y.#DR$;'^J9W5_6WFO:'FO:TQP1WBP;7.F0AU+0&amp;:B&lt;$YQ0#^797Q_$1I],U6-0AU+0%6-0AU+0%ZB&lt;75_27ZE)%.B=(-],UZB&lt;75_$1I]1WBP;7.F0E2F:G&amp;V&lt;(1],U.I&lt;WFD:4Y.#DR$;'^J9W5_2GRB&gt;$QP1WBP;7.F0AU+0&amp;:B&lt;$YQ0#^797Q_$1I],U6-0AU+0#^$&lt;(6T&gt;'6S0AU+!!!!!!</Property>
	<Property Name="NI.LVClass.FlattenedPrivateDataCTL" Type="Bin">%1#!#!!!!!)!"1!&amp;!!!-!%!!!@````]!!!!"!!%!!"*V5F.31QU+!!.-6E.$4%*76Q!!$G1!!!12!!!!)!!!$E1!!!!C!!!!!B".:8.T:7ZH;7ZH,GRW&lt;'FC$&amp;.F&lt;G1O&lt;(:D&lt;'&amp;T=Q!!!!!!C"%!A!A!-!!!+!!!!!!!!!1!!Q!]!,Q!(U#!!A!!!!!"!!%!"P````]!!!!!!!!!!!!!!!$Y'JOND"%819;P7;G&lt;2%G8!!!!$!!!!!1!)1!!"4%&amp;7D2)MU_Q1*?1783PKN1&gt;D.G0!,)%[9!*G/TY1HY!!"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!1!!!!!!!!!!!!!!!!!!!!!!!!!"![2TCJO\0X!;?Y+3(`2&amp;"M!!!!%$"@,#PBG41QY)#"A?7_2TY!!!"4!!&amp;-6E.$*EVF=X.F&lt;G&gt;J&lt;G=O&lt;(:M;7)[5W6O:#ZM&gt;G.M98.T/F.F&lt;G1O9X2M!!!!!!!!!1!#6EF-1A!!!!!!!&amp;"53$!!!!!&amp;!!%!!1!!!!!#!!-!!!!!!A!"!!!!!!!=!!!!%(C=9W"D9"*A%'#U9""A-G!19!!!"0=!N!!!!%%!!!%E?*RD9-!%`Y%!3$%S-$#^!.)M;/*A'M;G.E!W&amp;ZM&gt;O/T&amp;,MY)&amp;'/[!W1Q!T%4KBK1/.B`+)!.C^E!D,AI@1!!!!!!!$9!!6:*2&amp;-G476T=W6O:WFO:SZM&gt;GRJ9DJ4:7ZE,GRW9WRB=X-[5W6O:#ZD&gt;'Q!!!!!!!!!!!-!!!!!!,1!!!&amp;!?*R&lt;Q=$!E'FM9@9!3$-T1%"S@EIKC.:B:'"QBII:(DA-JG(]QT#V5,LZ$9PBJ?9D,#]@````(]B`D"$P&gt;F(B;+C1:_"P&amp;1-+('^Q992)&gt;&lt;+IP!!L/=*SW0!!C%1S@Q=DR"*G2B2TODG//YIEA)RRV*A"JBQ]Q*4,#D14A&gt;3G0`]:[U(_9'"EO!CEV9!US$BW"C;QG9Q-,!R&lt;'(9T(')YS5!-=0:X=58GA])(!,CY.7)!!!!-%1#!+1!B"$%R,D!!!!!!$"%!A!A!)11R-3YQ!!!!!!Q2!)!J!#%%-4%O-!!!!!!-%1#!#!!B"$%R,D!!!!!!$"%!A#E!)11R-3YQ!!!!!!U!!!!!!!!!!!!!!!!!!!!!!!!!A0````_!!!!"A!!!!9!!!!'!!!!"A!!!!9!!!!'!!!!"A!!!!9!!!!'!!!!"A!!!!9!!!!'!!!!"A!!!!9!!!!'!!!!"A"```:`9!!W!&amp;A!VH^'!R9!19Q7@U*S&amp;A"%!2:`3!#7!&amp;!!6H^A!$9!@``W!!!!"A!!!!9!!!!(`````!!!%!0```````````````````````````````````````````Q!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!0``!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!``]!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!$``Q!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!0``!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!``]!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!$``Q!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!0``!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!``]!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!$``Q!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!0``!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!``]!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!$``Q!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!0``!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!``]!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!$``Q!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!0``!!!!!!!!!!!!!0````````````````````````]!``]!!,[_PL[_PLY!``]!!!!!!!!!!!!!!!!!!!$``Q$``Q!!!!!!!!!!!!$`!0``!!!!!!!!!!!!!!$``Q$`!0``!!#_PL[_PL[_!0]!!!$``Q!!!!!!!!$``Q!!!0]!``]!!!!!!!!!!!!!`Q!!!!!!``]!!!$``Q!!!!!!`Q$``Q!!PL[_PL[_PA$`!!!!!0]!!0```Q!!`Q!!!!$`!0``!!!!!!!!!!!!!0]!!!$`!!!!!!!!!!!!`Q!!!0]!``]!!,[_PL[_PLY!`Q!!`Q!!!!!!!!!!!!!!`Q!!`Q$``Q!!!!!!!!!!!!$`!0]!!!!!!!!!!!!!!!!!`Q$`!0``!!#_PL[_PL[_!0``!!!!!!!!!!!!!!!!!!!!``]!``]!!!!!!!!!!!!!`````````````````````````Q$``Q!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!0``!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!``]!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!$```````````````````````````````````````````]!!!!#!!%!!!!!!$9!!5:13&amp;!G476T=W6O:WFO:SZM&gt;GRJ9DJ4:7ZE,GRW9WRB=X-[5W6O:#ZD&gt;'Q!!!!!!!!!!!-!!!!!!H5!!!4??*SNF-&amp;L%U%5RN_M7ZG%"G&gt;D;2NI32KGN6C$RB"N1[UVH1K65J7UY%5UG+ANR5C3&amp;E`N:3]Z^#4E)"1]Z?IB"TV,],)(#Y+(^B!+`A&amp;?CI,&gt;L']WT7Z-N&lt;WYBW5:XO_^N^`X-1$K,ON8'L"B!G%(_$&amp;PAL=7I8$UM#8S#UB0A*AQ4:@9HN)A!S:U:YQ2?E75Y$O77G_N)@B#(L*^,$X,!ND%;]+ZD.'HX?&amp;VRN].]&amp;*8K[50?NE7;3A0?0!(X&gt;*T"-`U5@H7)K1"2!SJKB[_FX[2V&lt;E]^52IQ'\J-9%*QZ@H^1P9%5&gt;`N&amp;MK9S3M4,:;!L9=B7KV[E*;%RKRVRB(BI1"3%Q:/Y(R#W/QQ/O8&lt;-:L-TAHVJIDAIX8=H=*&gt;;,HB=%12?\6U3^,NM7:UX`FHJP1Q_N*'K$\G&gt;UOXXX^02!AN5@5_G#N3VZ&lt;E#\9N8YU9DB"7!K`5S:=V!XF-;BSFJ2L%6:M'^37$:03BNOW$2Z29O$[M(++$U+NB1&gt;H6N=+R7Q_F(M;?L+;,B2#,`0,[_FC.J2*&amp;^0((&lt;IB$%^-`LU=:I=$.&amp;$B,M4&lt;V=Z"J6*"!@$NIF/)^P'[Q`GQ&gt;1IG(-5TLH*SKKP=462/`&amp;R]*N5&lt;4CBW9-'.[F7-KM9[N`EDKP(`(^6LG+#.DKB#&amp;+9A?5,MLD=B.[J9$\BO^!2G(*H.^KAC%U5G?8J5*YZ&amp;6&lt;)&gt;53W8SZV244B261FJ2F8@M1[N1QQMH%'"&lt;U(=$CRY&amp;NIWJXO@VJRLB;;YM'DAXQ6M&amp;I&gt;NGH":T0A`MTHMVEXH[#T&lt;2F@R,OKFW`3A^N7Z?WLT$KHPQ,,SD&lt;]*UP\@I6J&lt;(1!!!!!!!!1!!!!A!!!!.A!"1E2)5#:.:8.T:7ZH;7ZH,GRW&lt;'FC/F.F&lt;G1O&lt;(:D&lt;'&amp;T=TJ4:7ZE,G.U&lt;!!!!!!!!!!!!Q!!!!!!:1!!!(6YH'.A9#A5E'$[RV$XFY&amp;*Y#O1)@W8A6H1D`%X!Q/HH]"B)-UI)!E5FPX,Q#[I$2&lt;70K,,Q1!&amp;KGS-(*)=BQ5ZQ$)=,2I-````6SFCZ0B[Z"J=U2%@/&amp;.FFDS("!"F#"G;!!!!!!!!"!!!!!=!!!'5!!!!"A!!!#&amp;@&lt;GF@4'&amp;T&gt;%NO&lt;X&gt;O4X&gt;O;7ZH4&amp;:$&lt;'&amp;T=U.M&gt;8.U:8)2!)!)!!!!!1!)!$$`````!!%!!!!!!!Y!!!!"!!9!5!!!!!%!!!!!!!!!!!!;4&amp;:$&lt;'&amp;T=V"S;8:B&gt;'6%982B6'&amp;C4X*E:8)2!)!)!!!!!A!&amp;!!=!!!Q!1!!"`````Q!!!!%!!1!!!!!!!!!!!!!!'UR71WRB=X.1=GFW982F2'&amp;U962J&lt;76T&gt;'&amp;N="%!A!A!!!!"!!5!"Q!!!1!!SFB_,!!!!!!!!!!G4&amp;:$&lt;'&amp;T=V"S;8:B&gt;'6%982B4'&amp;T&gt;%&amp;Q='RJ:725;7VF=X2B&lt;8!2!)!)!!!!!1!&amp;!!=!!!%!!-J9@CQ!!!!!!!!!'ER71WRB=X.1=GFW982F2'&amp;U962Z='6%:8.D%1#!#!!!!!%!#!!Q`````Q!"!!!!!!!/!!!!!1!'!&amp;!!!!!"!!!!!!!!!!!!(ER71WRB=X.1=GFW982F2'&amp;U952G&lt;(2%982B5WF[:2%!A!A!!!!"!!5!!Q!!!1!!!!!!!!!!!!!!!!!%!!)!#!!!!!1!!!"!!!!!+!!!!!)!!!1!!!!!$Q!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!$N!!!"&lt;(C=D5]R&lt;M*!%"RT"BM(C%/3-N)6+6*%.(T!%F+[3!C+J)TBTJ;FERVR"UK&amp;?&amp;^_ER]Q.E9J;.")O\/T&gt;\/\!"\RA&lt;`@T`UL!"'`;WNVG2&gt;F0D%\5[Q'3VUKUL6*L1W&lt;9OU-8J)Z]$1T7_PU2F;:&lt;0LS?V0M5K?F3FW+,I%)#ODY]&amp;C)NM35.-18W9$+("XY&lt;$^@Y&gt;F0!ID-Z!C4A[A7\C4I+E0-X\6L(Z(9KAR2\3&lt;=DWIHX("7FZGB6Q=0\1I_XPB!9I2&lt;CD6C'JXBN&lt;B5`DNX$5[H?2D4%6S$:X.3A#(O]=!=(!(&gt;6$&lt;D!!!!!!!!:1!"!!)!!Q!%!!!!3!!2!!!!!!!2!0%!Z1!!!&amp;%!%1!!!!!!%1$R!/5!!!";!"%!!!!!!"%!]1$F!!!!9Q!-A!#!!!!,!+%!GAD/IMDNU=7[WAD/IMDNU=7[WAD/IMDNU=7[WA%Q!!!!5F.31QU+!!.-6E.$4%*76Q!!$G1!!!12!!!!)!!!$E1!!!!!!!!!!!!!!#!!!!!U!!!%#!!!!"N-35*/!!!!!!!!!62-6F.3!!!!!!!!!7B36&amp;.(!!!!!!!!!8R01F.(!!!!!!!!!:"$1V.(!!!!!!!!!;2-38:J!!!!!!!!!&lt;B$4UZ1!!!!!!!!!=R544AQ!!!!!!!!!?"%2E24!!!!!!!!!@2-372T!!!!!!!!!AB735.%!!!!!!!!!BRW:8*T!!!!"!!!!D"(1V"3!!!!!!!!!J2*1U^/!!!!!!!!!KBJ9WQY!!!!!!!!!LR$5%-S!!!!!!!!!N"-37:Q!!!!!!!!!O2'5%BC!!!!!!!!!PB'5&amp;.&amp;!!!!!!!!!QR-37*E!!!!!!!!!S"#2%BC!!!!!!!!!T2#2&amp;.&amp;!!!!!!!!!UB73624!!!!!!!!!VR%6%B1!!!!!!!!!X".65F%!!!!!!!!!Y2)36.5!!!!!!!!!ZB71V21!!!!!!!!![R'6%&amp;#!!!!!!!!!]!!!!!!`````Q!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!#A!!!!!!!!!!0````]!!!!!!!!!N!!!!!!!!!!!`````Q!!!!!!!!$)!!!!!!!!!!$`````!!!!!!!!!.Q!!!!!!!!!!0````]!!!!!!!!!]!!!!!!!!!!!`````Q!!!!!!!!&amp;)!!!!!!!!!!$`````!!!!!!!!!6!!!!!!!!!!!0````]!!!!!!!!"=!!!!!!!!!!!`````Q!!!!!!!!'Y!!!!!!!!!!$`````!!!!!!!!!@1!!!!!!!!!"0````]!!!!!!!!#L!!!!!!!!!!(`````Q!!!!!!!!+]!!!!!!!!!!D`````!!!!!!!!!MQ!!!!!!!!!#@````]!!!!!!!!#X!!!!!!!!!!+`````Q!!!!!!!!,M!!!!!!!!!!$`````!!!!!!!!!PQ!!!!!!!!!!0````]!!!!!!!!$%!!!!!!!!!!!`````Q!!!!!!!!/5!!!!!!!!!!$`````!!!!!!!!"ZA!!!!!!!!!!0````]!!!!!!!!(I!!!!!!!!!!!`````Q!!!!!!!!@=!!!!!!!!!!$`````!!!!!!!!#FA!!!!!!!!!!0````]!!!!!!!!+9!!!!!!!!!!!`````Q!!!!!!!!K=!!!!!!!!!!$`````!!!!!!!!#QA!!!!!!!!!!0````]!!!!!!!!,%!!!!!!!!!!!`````Q!!!!!!!!SI!!!!!!!!!!$`````!!!!!!!!$,!!!!!!!!!!!0````]!!!!!!!!-O!!!!!!!!!!!`````Q!!!!!!!!TE!!!!!!!!!)$`````!!!!!!!!$&gt;A!!!!!#&amp;.F&lt;G1O9X2M!!!!!!</Property>
	<Property Name="NI.LVClass.Geneology" Type="Xml"><String>
<Name></Name>
<Val>!!!!!B".:8.T:7ZH;7ZH,GRW&lt;'FC$&amp;.F&lt;G1O&lt;(:D&lt;'&amp;T=V"53$!!!!!!!!!!!!!!!!!!"!!"!!!!!!!!!1!!!!%!"A"1!!!!!1!!!!!!!!!!!!!"$ERB9F:*26=A4W*K:7.U!&amp;"53$!!!!!!!!!!!!!)9)!"!!!!!!!!!!!!!!!!!1!!!!!!!!)!!!!"!!9!5!!!!!%!!!!!!!(````_!!!!!!%/4'&amp;C6EF&amp;6S"09GJF9X1!5&amp;2)-!!!!!!!!!!!!!BAA!%!!!!!!!!!!!!!!!!"!!!!!!!!!Q!!!!%!"A"1!!!!!1!!!!!!!@````Y!!!!!!1Z-97*73568)%^C;G6D&gt;!"16%AQ!!!!!!!!!!!!#'#!!1!!!!!!!!!!!!!!!!%!!!!!!!!!!!!!!1!'!&amp;!!!!!"!!!!!!!"`````A!!!!!"$ERB9F:*26=A4W*K:7.U!&amp;"53$!!!!!!!!!!!!!)9)!"!!!!!!!!!!!!!Q!!!"&amp;.5V)A&lt;X)A5&amp;!O&lt;(:D&lt;'&amp;T=Q!!!"*.5V)A5'&amp;S:7ZU,GRW9WRB=X-!!!!-5W6O:#ZM&gt;G.M98.T</Val>
</String>
</Property>
	<Property Name="NI.LVClass.IsTransferClass" Type="Bool">false</Property>
	<Property Name="NI.SortType" Type="Int">3</Property>
	<Item Name="Send.ctl" Type="Class Private Data" URL="Send.ctl">
		<Property Name="NI.LibItem.Scope" Type="Int">2</Property>
	</Item>
	<Item Name="Send (poly) instances" Type="Folder">
		<Item Name="Send Messages.vi" Type="VI" URL="../Send Messages.vi">
			<Property Name="NI.ClassItem.ConnectorPane" Type="Bin">%1#!#!!!!!)!"1!&amp;!!!-!%!!!@````]!!!!"!!%!!!'S!!!!$!!-1#%'=X2B&gt;(6T!!!,1!-!"'.P:'5!!""!-0````]'=W^V=G.F!!!71&amp;!!!Q!!!!%!!AFF=H*P=C"P&gt;81!"!!!!$B!=!!?!!!@%%VF=X.F&lt;G&gt;J&lt;G=O&lt;(:M;7)-5W6O:#ZM&gt;G.M98.T!!Z.5V)A5'&amp;S:7ZU)'^V&gt;!!!.%"Q!"Y!!"]1476T=W6O:WFO:SZM&gt;GRJ9AR4:7ZE,GRW9WRB=X-!#V*F='RZ)(2P,CYO!#"!5!!$!!!!!1!#%W6S=G^S)'FO)#BO&lt;S"F=H*P=CE!-%"Q!"Y!!"Y1476T=W6O:WFO:SZM&gt;GRJ9AN.5U=O&lt;(:D&lt;'&amp;T=Q!!"UVF=X.B:W5!&amp;E"!!!(`````!!A)476T=W&amp;H:8-!!$:!=!!?!!!@%%VF=X.F&lt;G&gt;J&lt;G=O&lt;(:M;7)-5W6O:#ZM&gt;G.M98.T!!V.5V)A5'&amp;S:7ZU)'FO!'%!]!!-!!-!"!!%!!5!"!!%!!9!"!!(!!1!#1!+!Q!!?!!!$1A!!!!!!!!!!!!!$1M!!!!!!!!!!!!!!!!!!!!!!!!+!!!!!!!!!B)!!!!3!!!.!!!!$!!!!!!!!!!!!!!"!!M!!!!!</Property>
			<Property Name="NI.ClassItem.ExecutionSystem" Type="Int">-1</Property>
			<Property Name="NI.ClassItem.Flags" Type="Int">0</Property>
			<Property Name="NI.ClassItem.IsStaticMethod" Type="Bool">true</Property>
			<Property Name="NI.ClassItem.MethodScope" Type="UInt">1</Property>
			<Property Name="NI.ClassItem.Priority" Type="Int">1</Property>
			<Property Name="NI.ClassItem.State" Type="Int">1107821072</Property>
		</Item>
		<Item Name="Send Message.vi" Type="VI" URL="../Send Message.vi">
			<Property Name="NI.ClassItem.ConnectorPane" Type="Bin">%1#!#!!!!!)!"1!&amp;!!!-!%!!!@````]!!!!"!!%!!!'=!!!!#Q!-1#%'=X2B&gt;(6T!!!,1!-!"'.P:'5!!""!-0````]'=W^V=G.F!!!71&amp;!!!Q!!!!%!!AFF=H*P=C"P&gt;81!"!!!!$B!=!!?!!!@%%VF=X.F&lt;G&gt;J&lt;G=O&lt;(:M;7)-5W6O:#ZM&gt;G.M98.T!!Z.5V)A5'&amp;S:7ZU)'^V&gt;!!!.%"Q!"Y!!"]1476T=W6O:WFO:SZM&gt;GRJ9AR4:7ZE,GRW9WRB=X-!#V*F='RZ)(2P,CYO!#"!5!!$!!!!!1!#%W6S=G^S)'FO)#BO&lt;S"F=H*P=CE!-%"Q!"Y!!"Y1476T=W6O:WFO:SZM&gt;GRJ9AN.5U=O&lt;(:D&lt;'&amp;T=Q!!"UVF=X.B:W5!.E"Q!"Y!!"]1476T=W6O:WFO:SZM&gt;GRJ9AR4:7ZE,GRW9WRB=X-!$5V45C"198*F&lt;H1A;7Y!91$Q!!Q!!Q!%!!1!"1!%!!1!"A!%!!=!"!!)!!E$!!"Y!!!.#!!!!!!!!!!!!!!.#Q!!!!!!!!!!!!!!!!!!!!!!!!I!!!!!!!!!%A!!!")!!!U!!!!-!!!!!!!!!!!!!!%!#A!!!!!</Property>
			<Property Name="NI.ClassItem.ExecutionSystem" Type="Int">-1</Property>
			<Property Name="NI.ClassItem.Flags" Type="Int">0</Property>
			<Property Name="NI.ClassItem.IsStaticMethod" Type="Bool">true</Property>
			<Property Name="NI.ClassItem.MethodScope" Type="UInt">1</Property>
			<Property Name="NI.ClassItem.Priority" Type="Int">1</Property>
			<Property Name="NI.ClassItem.State" Type="Int">1107821072</Property>
		</Item>
		<Item Name="Send (no data).vi" Type="VI" URL="../Send (no data).vi">
			<Property Name="NI.ClassItem.ConnectorPane" Type="Bin">%1#!#!!!!!)!"1!&amp;!!!-!%!!!@````]!!!!"!!%!!!&amp;[!!!!#Q!-1#%'=X2B&gt;(6T!!!,1!-!"'.P:'5!!""!-0````]'=W^V=G.F!!!71&amp;!!!Q!!!!%!!AFF=H*P=C"P&gt;81!"!!!!$B!=!!?!!!@%%VF=X.F&lt;G&gt;J&lt;G=O&lt;(:M;7)-5W6O:#ZM&gt;G.M98.T!!Z.5V)A5'&amp;S:7ZU)'^V&gt;!!!.%"Q!"Y!!"]1476T=W6O:WFO:SZM&gt;GRJ9AR4:7ZE,GRW9WRB=X-!#V*F='RZ)(2P,CYO!#"!5!!$!!!!!1!#%W6S=G^S)'FO)#BO&lt;S"F=H*P=CE!$E!Q`````Q6-97*F&lt;!!W1(!!(A!!(R".:8.T:7ZH;7ZH,GRW&lt;'FC$&amp;.F&lt;G1O&lt;(:D&lt;'&amp;T=Q!.46.3)&amp;"B=G6O&gt;#"J&lt;A"B!0!!$!!$!!1!"!!&amp;!!1!"!!'!!1!"Q!%!!A!#1-!!(A!!!U)!!!!!!!!!!!!!!U,!!!!!!!!!!!!!!!!!!!!!!!!#A!!!!!!!!)1!!!!%A!!$1!!!!Q!!!!!!!!!!!!!!1!+!!!!!!</Property>
			<Property Name="NI.ClassItem.ExecutionSystem" Type="Int">-1</Property>
			<Property Name="NI.ClassItem.Flags" Type="Int">0</Property>
			<Property Name="NI.ClassItem.IsStaticMethod" Type="Bool">true</Property>
			<Property Name="NI.ClassItem.MethodScope" Type="UInt">1</Property>
			<Property Name="NI.ClassItem.Priority" Type="Int">1</Property>
			<Property Name="NI.ClassItem.State" Type="Int">1342710288</Property>
		</Item>
		<Item Name="Send Variant.vi" Type="VI" URL="../Send Variant.vi">
			<Property Name="NI.ClassItem.ConnectorPane" Type="Bin">%1#!#!!!!!)!"1!&amp;!!!-!%!!!@````]!!!!"!!%!!!''!!!!$!!-1#%'=X2B&gt;(6T!!!,1!-!"'.P:'5!!""!-0````]'=W^V=G.F!!!71&amp;!!!Q!!!!%!!AFF=H*P=C"P&gt;81!"!!!!$B!=!!?!!!@%%VF=X.F&lt;G&gt;J&lt;G=O&lt;(:M;7)-5W6O:#ZM&gt;G.M98.T!!Z.5V)A5'&amp;S:7ZU)'^V&gt;!!!.%"Q!"Y!!"]1476T=W6O:WFO:SZM&gt;GRJ9AR4:7ZE,GRW9WRB=X-!#V*F='RZ)(2P,CYO!#"!5!!$!!!!!1!#%W6S=G^S)'FO)#BO&lt;S"F=H*P=CE!$%"4"V:B=GFF&lt;H1!$E!Q`````Q6-97*F&lt;!!W1(!!(A!!(R".:8.T:7ZH;7ZH,GRW&lt;'FC$&amp;.F&lt;G1O&lt;(:D&lt;'&amp;T=Q!.46.3)&amp;"B=G6O&gt;#"J&lt;A"B!0!!$!!$!!1!"!!&amp;!!1!"!!'!!1!"Q!)!!E!#A-!!(A!!!U)!!!!!!!!!!!!!!U,!!!!!!!!!!!!!!!!!!!!!!!!#A!!!"!!!!))!!!!%A!!$1!!!!Q!!!!!!!!!!!!!!1!,!!!!!!</Property>
			<Property Name="NI.ClassItem.ExecutionSystem" Type="Int">-1</Property>
			<Property Name="NI.ClassItem.Flags" Type="Int">0</Property>
			<Property Name="NI.ClassItem.IsStaticMethod" Type="Bool">true</Property>
			<Property Name="NI.ClassItem.MethodScope" Type="UInt">1</Property>
			<Property Name="NI.ClassItem.Priority" Type="Int">1</Property>
			<Property Name="NI.ClassItem.State" Type="Int">1342710288</Property>
		</Item>
		<Item Name="Query (static).vi" Type="VI" URL="../Query (static).vi">
			<Property Name="NI.ClassItem.ConnectorPane" Type="Bin">%1#!#!!!!!)!"1!&amp;!!!-!%!!!@````]!!!!"!!%!!!&amp;X!!!!#Q!-1#%'=X2B&gt;(6T!!!,1!-!"'.P:'5!!""!-0````]'=W^V=G.F!!!71&amp;!!!Q!!!!%!!AFF=H*P=C"P&gt;81!"!!!!#Z!=!!?!!!?%%VF=X.F&lt;G&gt;J&lt;G=O&lt;(:M;7),46.(,GRW9WRB=X-!!!63:8"M?1!U1(!!(A!!(R".:8.T:7ZH;7ZH,GRW&lt;'FC$&amp;.F&lt;G1O&lt;(:D&lt;'&amp;T=Q!+46.3)&amp;"B=G6O&gt;!!!'U!$!"2U;7VF&lt;X6U)'FO)'VT)#AV-$!Q+1!!)%"1!!-!!!!"!!)4:8*S&lt;X)A;7YA+'ZP)'6S=G^S+1!Q1(!!(A!!(B".:8.T:7ZH;7ZH,GRW&lt;'FC#UV42SZM&gt;G.M98.T!!!(476T=W&amp;H:1"B!0!!$!!$!!1!"1!'!!1!"!!(!!1!#!!%!!E!"A-!!(A!!!U)!!!!!!!!#1!!!!U,!!!!!!!!!!!!!!A!!!!!!!!!#A!!!!!!!!!3!!!!%A!!$1!!!!Q!!!!!!!!!!!!!!1!+!!!!!!</Property>
			<Property Name="NI.ClassItem.ExecutionSystem" Type="Int">-1</Property>
			<Property Name="NI.ClassItem.Flags" Type="Int">16777344</Property>
			<Property Name="NI.ClassItem.IsStaticMethod" Type="Bool">true</Property>
			<Property Name="NI.ClassItem.MethodScope" Type="UInt">1</Property>
			<Property Name="NI.ClassItem.Priority" Type="Int">1</Property>
			<Property Name="NI.ClassItem.State" Type="Int">1342710288</Property>
		</Item>
		<Item Name="Query (no data sent).vi" Type="VI" URL="../Query (no data sent).vi">
			<Property Name="NI.ClassItem.ConnectorPane" Type="Bin">%1#!#!!!!!)!"1!&amp;!!!-!%!!!@````]!!!!"!!%!!!&amp;6!!!!#Q!-1#%'=X2B&gt;(6T!!!,1!-!"'.P:'5!!""!-0````]'=W^V=G.F!!!71&amp;!!!Q!!!!%!!AFF=H*P=C"P&gt;81!"!!!!#Z!=!!?!!!?%%VF=X.F&lt;G&gt;J&lt;G=O&lt;(:M;7),46.(,GRW9WRB=X-!!!63:8"M?1!U1(!!(A!!(R".:8.T:7ZH;7ZH,GRW&lt;'FC$&amp;.F&lt;G1O&lt;(:D&lt;'&amp;T=Q!+46.3)&amp;"B=G6O&gt;!!!'U!$!"2U;7VF&lt;X6U)'FO)'VT)#AV-$!Q+1!!)%"1!!-!!!!"!!)4:8*S&lt;X)A;7YA+'ZP)'6S=G^S+1!/1$$`````"5RB9G6M!'%!]!!-!!-!"!!&amp;!!9!"!!%!!=!"!!)!!1!#1!'!Q!!?!!!$1A!!!!!!!!*!!!!$1M!!!!!!!!!!!!!#!!!!!!!!!!+!!!!!!!!!B!!!!!3!!!.!!!!$!!!!!!!!!!!!!!"!!I!!!!!</Property>
			<Property Name="NI.ClassItem.ExecutionSystem" Type="Int">-1</Property>
			<Property Name="NI.ClassItem.Flags" Type="Int">16777344</Property>
			<Property Name="NI.ClassItem.IsStaticMethod" Type="Bool">true</Property>
			<Property Name="NI.ClassItem.MethodScope" Type="UInt">1</Property>
			<Property Name="NI.ClassItem.Priority" Type="Int">1</Property>
			<Property Name="NI.ClassItem.State" Type="Int">1350574608</Property>
		</Item>
		<Item Name="Query (varients).vi" Type="VI" URL="../Query (varients).vi">
			<Property Name="NI.ClassItem.ConnectorPane" Type="Bin">%1#!#!!!!!)!"1!&amp;!!!-!%!!!@````]!!!!"!!%!!!&amp;&lt;!!!!$1!-1#%'=X2B&gt;(6T!!!,1!-!"'.P:'5!!""!-0````]'=W^V=G.F!!!71&amp;!!!Q!!!!%!!AFF=H*P=C"P&gt;81!&amp;%"4$F*F='RB?3"798*J:7ZU!!!51$$`````#V*F='RZ)%RB9G6M!$2!=!!?!!!@%%VF=X.F&lt;G&gt;J&lt;G=O&lt;(:M;7)-5W6O:#ZM&gt;G.M98.T!!J.5V)A5'&amp;S:7ZU!!!%!!!!'U!$!"2U;7VF&lt;X6U)'FO)'VT)#AV-$!Q+1!!)%"1!!-!!!!"!!)4:8*S&lt;X)A;7YA+'ZP)'6S=G^S+1!-1&amp;-(6G&amp;S;76O&gt;!!/1$$`````"5RB9G6M!'%!]!!-!!-!"!!&amp;!!9!"Q!(!!A!"Q!*!!I!#Q!'!Q!!?!!!$1A!!!E!!!!*!!!!$1M!!!!!!!!!!!!!#!!!!!!!!!!+!!!!!!!!!B!!!!!3!!!.!!!!$!!!!!!!!!!!!!!"!!Q!!!!!</Property>
			<Property Name="NI.ClassItem.ExecutionSystem" Type="Int">-1</Property>
			<Property Name="NI.ClassItem.Flags" Type="Int">16777344</Property>
			<Property Name="NI.ClassItem.IsStaticMethod" Type="Bool">true</Property>
			<Property Name="NI.ClassItem.MethodScope" Type="UInt">1</Property>
			<Property Name="NI.ClassItem.Priority" Type="Int">1</Property>
			<Property Name="NI.ClassItem.State" Type="Int">1342710288</Property>
		</Item>
		<Item Name="Send If Error In.vi" Type="VI" URL="../Send If Error In.vi">
			<Property Name="NI.ClassItem.ConnectorPane" Type="Bin">%1#!#!!!!!)!"1!&amp;!!!-!%!!!@````]!!!!"!!%!!!&amp;-!!!!#A!-1#%'=X2B&gt;(6T!!!,1!-!"'.P:'5!!""!-0````]'=W^V=G.F!!!91&amp;!!!Q!!!!%!!AN898*O;7ZH)'^V&gt;!!%!!!!-E"Q!"Y!!"]1476T=W6O:WFO:SZM&gt;GRJ9AR4:7ZE,GRW9WRB=X-!#&amp;.F&lt;G1A&lt;X6U!!!71&amp;!!!Q!!!!%!!ABF=H*P=C"J&lt;A!!+%!Q`````RZ&amp;=H*P=C".:8.T97&gt;F)%RB9G6M)#BP=(2J&lt;WZB&lt;#E!!$"!=!!?!!!@%%VF=X.F&lt;G&gt;J&lt;G=O&lt;(:M;7)-5W6O:#ZM&gt;G.M98.T!!&gt;4:7ZE)'FO!'%!]!!-!!-!"!!%!!5!"!!%!!1!"!!'!!1!"Q!)!Q!!?!!!$1A!!!!!!!!!!!!!$1M!!!!!!!!!!!!!!!!!!!!!!!!+!!!!!!!!!A!!!!!3!!!.!!!!$!!!!!!!!!!!!!!"!!E!!!!!</Property>
			<Property Name="NI.ClassItem.ExecutionSystem" Type="Int">-1</Property>
			<Property Name="NI.ClassItem.Flags" Type="Int">0</Property>
			<Property Name="NI.ClassItem.IsStaticMethod" Type="Bool">true</Property>
			<Property Name="NI.ClassItem.MethodScope" Type="UInt">1</Property>
			<Property Name="NI.ClassItem.Priority" Type="Int">1</Property>
			<Property Name="NI.ClassItem.State" Type="Int">1342710290</Property>
		</Item>
	</Item>
	<Item Name="Text Description.vi" Type="VI" URL="../Text Description.vi">
		<Property Name="NI.ClassItem.ConnectorPane" Type="Bin">%1#!#!!!!!)!"1!&amp;!!!-!%!!!@````]!!!!"!!%!!!$7!!!!"1!%!!!!&amp;%!Q`````QN%:8.D=GFQ&gt;'FP&lt;A!S1(!!(A!!(R".:8.T:7ZH;7ZH,GRW&lt;'FC$&amp;.F&lt;G1O&lt;(:D&lt;'&amp;T=Q!)5W6O:#"P&gt;81!!$"!=!!?!!!@%%VF=X.F&lt;G&gt;J&lt;G=O&lt;(:M;7)-5W6O:#ZM&gt;G.M98.T!!&gt;4:7ZE)'FO!&amp;1!]!!-!!!!!!!"!!)!!!!!!!!!!!!!!!!!!!!$!Q!!?!!!!!!!!!!!!!!*!!!!D1M!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!#3!!!!!!%!"!!!!!!</Property>
		<Property Name="NI.ClassItem.ExecutionSystem" Type="Int">-1</Property>
		<Property Name="NI.ClassItem.Flags" Type="Int">160</Property>
		<Property Name="NI.ClassItem.IsStaticMethod" Type="Bool">false</Property>
		<Property Name="NI.ClassItem.MethodScope" Type="UInt">1</Property>
		<Property Name="NI.ClassItem.Priority" Type="Int">1</Property>
		<Property Name="NI.ClassItem.State" Type="Int">8388624</Property>
	</Item>
	<Item Name="Class Name.vi" Type="VI" URL="../Class Name.vi">
		<Property Name="NI.ClassItem.ConnectorPane" Type="Bin">%1#!#!!!!!)!"1!&amp;!!!-!%!!!@````]!!!!"!!%!!!&amp;!!!!!#A!-1#%'=X2B&gt;(6T!!!,1!-!"'.P:'5!!""!-0````]'=W^V=G.F!!!71&amp;!!!Q!!!!%!!AFF=H*P=C"P&gt;81!"!!!!"2!-0````]+1WRB=X-A4G&amp;N:1!!-E"Q!"Y!!"]1476T=W6O:WFO:SZM&gt;GRJ9AR4:7ZE,GRW9WRB=X-!#&amp;.F&lt;G1A&lt;X6U!!!A1&amp;!!!Q!!!!%!!B.F=H*P=C"J&lt;C!I&lt;G]A:8*S&lt;X)J!$"!=!!?!!!@%%VF=X.F&lt;G&gt;J&lt;G=O&lt;(:M;7)-5W6O:#ZM&gt;G.M98.T!!&gt;4:7ZE)'FO!'%!]!!-!!-!"!!&amp;!!9!"!!%!!1!"!!(!!1!"!!)!Q!!?!!!$1A!!!!!!!!*!!!!$1M!!!!!!!!!!!!!!!!!!!!!!!!+!!!!!!!!!!!!!!!1!!!.!!!!$!!!!!!!!!!!!!!"!!E!!!!!</Property>
		<Property Name="NI.ClassItem.ExecutionSystem" Type="Int">-1</Property>
		<Property Name="NI.ClassItem.Flags" Type="Int">0</Property>
		<Property Name="NI.ClassItem.IsStaticMethod" Type="Bool">true</Property>
		<Property Name="NI.ClassItem.MethodScope" Type="UInt">1</Property>
		<Property Name="NI.ClassItem.Priority" Type="Int">1</Property>
		<Property Name="NI.ClassItem.State" Type="Int">1342710288</Property>
	</Item>
	<Item Name="Valid.vi" Type="VI" URL="../Valid.vi">
		<Property Name="NI.ClassItem.ConnectorPane" Type="Bin">%1#!#!!!!!)!"1!&amp;!!!-!%!!!@````]!!!!"!!%!!!$/!!!!"1!%!!!!$%!B"F:B&lt;'FE0Q!!-E"Q!"Y!!"]1476T=W6O:WFO:SZM&gt;GRJ9AR4:7ZE,GRW9WRB=X-!#&amp;.F&lt;G1A&lt;X6U!!!Q1(!!(A!!(R".:8.T:7ZH;7ZH,GRW&lt;'FC$&amp;.F&lt;G1O&lt;(:D&lt;'&amp;T=Q!(5W6O:#"J&lt;A"5!0!!$!!!!!!!!1!#!!!!!!!!!!!!!!!!!!!!!Q)!!(A!!!!!!!!!!!!!#1!!!)U,!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!E!!!!!!"!!1!!!!!</Property>
		<Property Name="NI.ClassItem.ExecutionSystem" Type="Int">-1</Property>
		<Property Name="NI.ClassItem.Flags" Type="Int">0</Property>
		<Property Name="NI.ClassItem.IsStaticMethod" Type="Bool">false</Property>
		<Property Name="NI.ClassItem.MethodScope" Type="UInt">1</Property>
		<Property Name="NI.ClassItem.Priority" Type="Int">1</Property>
		<Property Name="NI.ClassItem.State" Type="Int">1342710272</Property>
	</Item>
	<Item Name="Send.vi" Type="VI" URL="../Send.vi">
		<Property Name="NI.ClassItem.ConnectorPane" Type="Bin">%1#!#!!!!!)!"1!&amp;!!!-!%!!!@````]!!!!"!!%!!!&amp;&lt;!!!!#A!-1#%'=X2B&gt;(6T!!!,1!-!"'.P:'5!!""!-0````]'=W^V=G.F!!!71&amp;!!!Q!!!!%!!AFF=H*P=C"P&gt;81!"!!!!$B!=!!?!!!@%%VF=X.F&lt;G&gt;J&lt;G=O&lt;(:M;7)-5W6O:#ZM&gt;G.M98.T!!Z.5V)A5'&amp;S:7ZU)'^V&gt;!!!)%"1!!-!!!!"!!)4:8*S&lt;X)A;7YA+'ZP)'6S=G^S+1!Q1(!!(A!!(B".:8.T:7ZH;7ZH,GRW&lt;'FC#UV42SZM&gt;G.M98.T!!!(476T=W&amp;H:1!W1(!!(A!!(R".:8.T:7ZH;7ZH,GRW&lt;'FC$&amp;.F&lt;G1O&lt;(:D&lt;'&amp;T=Q!.46.3)&amp;"B=G6O&gt;#"J&lt;A"5!0!!$!!$!!1!"!!&amp;!!1!"!!%!!1!"A!%!!=!#!-!!(A!!!U)!!!!!!!!!!!!!)U,!!!!!!!!!!!!!!!!!!!!!!!!#A!!!!!!!!!1!!!!E!!!!!!"!!E!!!!!</Property>
		<Property Name="NI.ClassItem.ExecutionSystem" Type="Int">-1</Property>
		<Property Name="NI.ClassItem.Flags" Type="Int">1090519168</Property>
		<Property Name="NI.ClassItem.IsStaticMethod" Type="Bool">false</Property>
		<Property Name="NI.ClassItem.MethodScope" Type="UInt">1</Property>
		<Property Name="NI.ClassItem.Priority" Type="Int">1</Property>
		<Property Name="NI.ClassItem.State" Type="Int">1342714384</Property>
	</Item>
	<Item Name="Send (polymorphic).vi" Type="VI" URL="../Send (polymorphic).vi">
		<Property Name="NI.ClassItem.ConnectorPane" Type="Bin">%1#!#!!!!!)!"1!&amp;!!!-!%!!!@````]!!!!"!!%!!!!1!!!!!1!)!0+6&lt;'^O!!%!!!!!!!!</Property>
		<Property Name="NI.ClassItem.ExecutionSystem" Type="Int">-1</Property>
		<Property Name="NI.ClassItem.Flags" Type="Int">0</Property>
		<Property Name="NI.ClassItem.IsStaticMethod" Type="Bool">true</Property>
		<Property Name="NI.ClassItem.MethodScope" Type="UInt">1</Property>
		<Property Name="NI.ClassItem.Priority" Type="Int">1</Property>
		<Property Name="NI.ClassItem.State" Type="Int">1082143248</Property>
	</Item>
	<Item Name="Query.vi" Type="VI" URL="../Query.vi">
		<Property Name="NI.ClassItem.ConnectorPane" Type="Bin">%1#!#!!!!!)!"1!&amp;!!!-!%!!!@````]!!!!"!!%!!!&amp;K!!!!#Q!-1#%'=X2B&gt;(6T!!!,1!-!"'.P:'5!!""!-0````]'=W^V=G.F!!!71&amp;!!!Q!!!!%!!AFF=H*P=C"P&gt;81!"!!!!#Z!=!!?!!!?%%VF=X.F&lt;G&gt;J&lt;G=O&lt;(:M;7),46.(,GRW9WRB=X-!!!63:8"M?1!U1(!!(A!!(R".:8.T:7ZH;7ZH,GRW&lt;'FC$&amp;.F&lt;G1O&lt;(:D&lt;'&amp;T=Q!+46.3)&amp;"B=G6O&gt;!!!'U!$!"2U;7VF&lt;X6U)'FO)'VT)#AV-$!Q+1!!)%"1!!-!!!!"!!)4:8*S&lt;X)A;7YA+'ZP)'6S=G^S+1!Q1(!!(A!!(B".:8.T:7ZH;7ZH,GRW&lt;'FC#UV42SZM&gt;G.M98.T!!!(476T=W&amp;H:1"5!0!!$!!$!!1!"1!'!!1!"!!(!!1!#!!%!!E!"A-!!(A!!!U)!!!!!!!!#1!!!)U,!!!!!!!!!!!!!!A!!!!!!!!!#A!!!!!!!!!3!!!!EA!!!!!"!!I!!!!!</Property>
		<Property Name="NI.ClassItem.ExecutionSystem" Type="Int">-1</Property>
		<Property Name="NI.ClassItem.Flags" Type="Int">16777344</Property>
		<Property Name="NI.ClassItem.IsStaticMethod" Type="Bool">false</Property>
		<Property Name="NI.ClassItem.MethodScope" Type="UInt">1</Property>
		<Property Name="NI.ClassItem.Priority" Type="Int">1</Property>
		<Property Name="NI.ClassItem.State" Type="Int">1342710288</Property>
	</Item>
	<Item Name="Query (polymorphic).vi" Type="VI" URL="../Query (polymorphic).vi">
		<Property Name="NI.ClassItem.ConnectorPane" Type="Bin">%1#!#!!!!!)!"1!&amp;!!!-!%!!!@````]!!!!"!!%!!!!1!!!!!1!)!0+2?$@M!!%!!!!!!!!</Property>
		<Property Name="NI.ClassItem.ExecutionSystem" Type="Int">-1</Property>
		<Property Name="NI.ClassItem.Flags" Type="Int">0</Property>
		<Property Name="NI.ClassItem.IsStaticMethod" Type="Bool">true</Property>
		<Property Name="NI.ClassItem.MethodScope" Type="UInt">1</Property>
		<Property Name="NI.ClassItem.Priority" Type="Int">1</Property>
		<Property Name="NI.ClassItem.State" Type="Int">1082143248</Property>
	</Item>
</LVClass>
