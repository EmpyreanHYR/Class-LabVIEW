<?xml version='1.0'?>
<Project Type="Project" LVVersion="8208000">
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
      <Item Name="sub_VIs" Type="Folder">
         <Item Name="Weather Simulator.vi" Type="VI" URL="subVIs/Weather Simulator.vi"/>
         <Item Name="Weather History Analysis.vi" Type="VI" URL="subVIs/Weather History Analysis.vi"/>
         <Item Name="datasocket_read.vi" Type="VI" URL="subVIs/datasocket_read.vi"/>
         <Item Name="set_chart_scale.vi" Type="VI" URL="subVIs/set_chart_scale.vi"/>
         <Item Name="weather array.vi" Type="VI" URL="subVIs/weather array.vi"/>
         <Item Name="DataSocket Server Control.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/dataskt.llb/DataSocket Server Control.vi"/>
      </Item>
      <Item Name="data_files" Type="Folder">
         <Item Name="Auto_save_data2007-9-2" Type="Document" URL="data_files/Auto_save_data2007-9-2"/>
         <Item Name="Auto_save_data2007-9-3" Type="Document" URL="data_files/Auto_save_data2007-9-3"/>
         <Item Name="Auto_save_data2007-9-4" Type="Document" URL="data_files/Auto_save_data2007-9-4"/>
         <Item Name="Auto_save_data2007-9-5" Type="Document" URL="data_files/Auto_save_data2007-9-5"/>
         <Item Name="Auto_save_data2007-9-6" Type="Document" URL="data_files/Auto_save_data2007-9-6"/>
         <Item Name="Auto_save_data2007-9-7" Type="Document" URL="data_files/Auto_save_data2007-9-7"/>
         <Item Name="Auto_save_data2007-9-8" Type="Document" URL="data_files/Auto_save_data2007-9-8"/>
         <Item Name="Auto_save_data2007-9-9" Type="Document" URL="data_files/Auto_save_data2007-9-9"/>
         <Item Name="Auto_save_data2007-9-10" Type="Document" URL="data_files/Auto_save_data2007-9-10"/>
      </Item>
      <Item Name="report" Type="Folder">
         <Item Name="visio_figures" Type="Folder">
            <Item Name="system_block.vsd" Type="Document" URL="report/visio_figures/system_block.vsd"/>
         </Item>
      </Item>
      <Item Name="ctl" Type="Folder">
         <Item Name="dayu.ctl" Type="VI" URL="controls/dayu.ctl"/>
         <Item Name="duoyun.ctl" Type="VI" URL="controls/duoyun.ctl"/>
         <Item Name="sunshine.ctl" Type="VI" URL="controls/sunshine.ctl"/>
      </Item>
      <Item Name="variable" Type="Folder">
         <Item Name="weatherdata.vi" Type="VI" URL="variable/weatherdata.vi"/>
         <Item Name="stop.vi" Type="VI" URL="variable/stop.vi"/>
      </Item>
      <Item Name="Weather_station_main.vi" Type="VI" URL="Weather_station_main.vi"/>
      <Item Name="Weather Data.vi" Type="VI" URL="Weather Data.vi"/>
      <Item Name="Weather history.vi" Type="VI" URL="Weather history.vi"/>
      <Item Name="上海市自动气象站系统--Help.doc" Type="Document" URL="上海市自动气象站系统--Help.doc"/>
      <Item Name="依赖关系" Type="Dependencies"/>
      <Item Name="程序生成规范" Type="Build"/>
   </Item>
</Project>
