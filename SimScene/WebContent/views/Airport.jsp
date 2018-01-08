<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page language="java" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" charset = "utf-8">   
      	function pageLoaded()  
        {   
            var canvas = document.getElementById('tCanvas');    
            var context = canvas.getContext('2d'); 
        }  
</script>  
<title>Airport</title>
<style type="text/css">
</style>
<link href="Airport.css" rel="stylesheet" type="text/css">
<div class="a_wrap">
	<a href="#"><%=session.getAttribute("name") %></a>
</div>
<div class="b_wrap">
	<a href= "Simuscene.jsp">登出</a>
</div>
</head>
<body onload="pageLoaded();">
<%
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
String url="jdbc:sqlserver://localhost:1433;DatabaseName=Simscene";
String user="sa";
String password="comet143";
String ICAO = null;
String IATA = null;
String Airport_name = null;
String Location_name=null;
String ICAO_sub = null;
String ICAO_parent = null;
String Vdb_type = null;
String Vdb_version = null;
String Publish_date = null;
String AIP_version = null;
String Vdb_level=null;
String Runway = null;
String Intro_picture_path = null;
String Intro_video_path = null;
String Longitude = null;
String Latitude=null;
String Altitude = null;
String Airport_feature = null;
String Version_description = null;
Connection conn = DriverManager.getConnection(url,user,password);
Statement stmt = conn.createStatement(java.sql.ResultSet.TYPE_SCROLL_INSENSITIVE,java.sql.ResultSet.CONCUR_READ_ONLY);
ResultSet rs = stmt.executeQuery("select * from tab_vdb_base");
ArrayList<String> name1 = new ArrayList<String>();
while(rs.next()){
	ICAO = rs.getString("ICAO");
	IATA = rs.getString("IATA");
	Airport_name = rs.getString("Airport_name");
	Location_name = rs.getString("Location_name");
	ICAO_sub = rs.getString("ICAO_sub");
	ICAO_parent = rs.getString("ICAO_parent");
	Vdb_type = rs.getString("Vdb_type");
	Vdb_version = rs.getString("Vdb_version");
	Publish_date = rs.getString("Publish_date");
	AIP_version = rs.getString("AIP_version");
	Vdb_level = rs.getString("Vdb_level");
	Runway = rs.getString("Runway");
	Intro_picture_path = rs.getString("Intro_picture_path");
	Intro_video_path = rs.getString("Intro_video_path");
	Longitude = rs.getString("Longitude");
	Latitude = rs.getString("Latitude");
	Altitude = rs.getString("Altitude");
	Airport_feature = rs.getString("Airport_feature");
	Version_description = rs.getString("Version_description");
}%>

<div class="information">
	<strong><font size="+1" color="black" style="line-height: 150%">机场代码:<%=ICAO%>/<%=IATA %></font></strong><br>
	<hr style="height:1px;border-width:0;color:gray;background-color:gray; width:350px;"/>
	<strong><font size="+1" color="black" style="line-height: 190%">机场名称:<%=Airport_name %></font></strong><br>
	<hr style="height:1px;border-width:0;color:gray;background-color:gray; width:350px;"/>
	<strong><font size="+1" color="black" style="line-height: 190%">机场地点:<%=Location_name%></font></strong><br>
	<hr style="height:1px;border-width:0;color:gray;background-color:gray; width:350px;"/>
	<font size="3" color="black" style="line-height: 190%">纬度:<%=Longitude %></font><br>
	<font size="3" color="black" style="line-height: 190%">经度:<%=Latitude %></font><br>
	<hr style="height:1px;border-width:0;color:gray;background-color:gray; width:350px;"/>
</div>
<div class="base-information">
	<strong><font size="1" color="black" >Vdb包含的其它机场代码: <%=ICAO_sub%></font></strong><br>
	<strong><font size="1" color="black" >合装主机场名称:<%=ICAO_parent %></font></strong><br>
	<strong><font size="1" color="black" >Vdb数据库类型:<%=Vdb_type %></font></strong><br>
	<strong><font size="1" color="black" >Vdb版本:<%=Vdb_version %></font></strong><br>
	<strong><font size="1" color="black" >发布日期:<%=Publish_date %></font></strong><br>
	<strong><font size="1" color="black" >AIP或者Jeppson版本:<%=AIP_version %></font></strong><br>
	<strong><font size="1" color="black" >Vdb等级:<%=Vdb_level %></font></strong><br>
	<strong><font size="1" color="black" >跑道号信息:<%=Runway %></font></strong><br>
	<strong><font size="1" color="black" >数据库图片路径:<%=Intro_picture_path%></font></strong><br>
	<strong><font size="1" color="black" >数据库视频路径:<%=Intro_video_path %></font></strong><br>
</div>
<canvas width = "450" height = "200" class = "tCanvas" style = "border:black 1px solid;">
</canvas>
<img src="../views/img/timg2.jpeg" class="titlepic" style="height: 350px;width: 1110px;" alt="">
<div>
    <ul class="menu">
    <li><a href="#" class="selected">我们的产品</a></li>
    <li>
        <a href="#">我们的服务</a>
        <ul>
            <li><a href="#">目录1</a></li>
            <li><a href="#">目录2</a></li>
            <li><a href="#">目录3</a></li>
            <li><a href="#">目录4</a></li>
        </ul>
    </li>
    <li>
        <a href="#">机场</a>
        <ul>
            <li><a href="#">目录1</a></li>
            <li><a href="#">目录2</a></li>
            <li><a href="#">目录3</a></li>
            <li><a href="#">目录4</a></li>
        </ul>
    </li>
    <li><a href="#">关于我们</a></li>
</ul>
</div>
<footer class="footer">Content for  class "footer" Goes Here</footer>
</body>
</html>