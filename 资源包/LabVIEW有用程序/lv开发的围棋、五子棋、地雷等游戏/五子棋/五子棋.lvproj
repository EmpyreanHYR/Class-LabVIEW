<?xml version='1.0'?>
<Project Type="Project" LVVersion="8008005">
   <Item Name="My Computer" Type="My Computer">
      <Property Name="CCSymbols" Type="Str">OS,Win;CPU,x86;</Property>
      <Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
      <Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
      <Property Name="server.tcp.enabled" Type="Bool">false</Property>
      <Property Name="server.tcp.port" Type="Int">0</Property>
      <Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
      <Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
      <Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
      <Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
      <Property Name="specify.custom.address" Type="Bool">false</Property>
      <Item Name="五子棋" Type="Folder">
         <Item Name="控件" Type="Folder">
            <Item Name="白子.bmp" Type="Document" URL="控件/白子.bmp"/>
            <Item Name="黑子.bmp" Type="Document" URL="控件/黑子.bmp"/>
            <Item Name="无子.bmp" Type="Document" URL="控件/无子.bmp"/>
            <Item Name="中间层指示按钮.ctl" Type="VI" URL="控件/中间层指示按钮.ctl"/>
            <Item Name="最底层棋子.ctl" Type="VI" URL="控件/最底层棋子.ctl"/>
            <Item Name="最上层控制按钮.ctl" Type="VI" URL="控件/最上层控制按钮.ctl"/>
         </Item>
         <Item Name="子程序" Type="Folder">
            <Item Name="WhichClicked.vi" Type="VI" URL="子程序/WhichClicked.vi"/>
            <Item Name="白下黑下.vi" Type="VI" URL="子程序/白下黑下.vi"/>
            <Item Name="白子权值.vi" Type="VI" URL="子程序/白子权值.vi"/>
            <Item Name="初始化程序.vi" Type="VI" URL="子程序/初始化程序.vi"/>
            <Item Name="单点权值.vi" Type="VI" URL="子程序/单点权值.vi"/>
            <Item Name="多步计算.vi" Type="VI" URL="子程序/多步计算.vi"/>
            <Item Name="黑白权值.vi" Type="VI" URL="子程序/黑白权值.vi"/>
            <Item Name="黑子权值.vi" Type="VI" URL="子程序/黑子权值.vi"/>
            <Item Name="判定胜负.vi" Type="VI" URL="子程序/判定胜负.vi"/>
            <Item Name="权值初始.vi" Type="VI" URL="子程序/权值初始.vi"/>
            <Item Name="权值计算.vi" Type="VI" URL="子程序/权值计算.vi"/>
            <Item Name="胜负对话.vi" Type="VI" URL="子程序/胜负对话.vi"/>
            <Item Name="是否可下.vi" Type="VI" URL="子程序/是否可下.vi"/>
            <Item Name="四点权值_白子.vi" Type="VI" URL="子程序/四点权值_白子.vi"/>
            <Item Name="四点权值_黑子.vi" Type="VI" URL="子程序/四点权值_黑子.vi"/>
            <Item Name="显示统计.vi" Type="VI" URL="子程序/显示统计.vi"/>
            <Item Name="行列加减.vi" Type="VI" URL="子程序/行列加减.vi"/>
            <Item Name="用户下子.vi" Type="VI" URL="子程序/用户下子.vi"/>
            <Item Name="执行下子.vi" Type="VI" URL="子程序/执行下子.vi"/>
            <Item Name="最大权值.vi" Type="VI" URL="子程序/最大权值.vi"/>
         </Item>
         <Item Name="五子棋.vi" Type="VI" URL="五子棋.vi"/>
         <Item Name="五子棋权值分布表.xls" Type="Document" URL="五子棋权值分布表.xls"/>
         <Item Name="五子棋使用说明.txt" Type="Document" URL="五子棋使用说明.txt"/>
      </Item>
      <Item Name="Dependencies" Type="Dependencies"/>
      <Item Name="Build Specifications" Type="Build"/>
   </Item>
</Project>
