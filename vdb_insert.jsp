<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>数据库写入测试</title>
</head>
<body>
<body> 
<%
String xm=request.getParameter("xm");
String mm=request.getParameter("mm");
String qx=request.getParameter("qx");
String gs=request.getParameter("gs");
String yxq=request.getParameter("yxq");
String vdb_base=request.getParameter("vdb_base");
String vdb_detail=request.getParameter("vdb_detail");
String mnj=request.getParameter("mnj");
String xz=request.getParameter("xz");
String gly=request.getParameter("gly");
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
String url="jdbc:sqlserver://172.18.26.38:1433;DatabaseName=Simscene"; 
String user="sa"; 
String password="comet143";
Connection conn= DriverManager.getConnection(url,user,password);
Statement stmt = conn.createStatement();
String sql="insert into tab_user_previllage(Name,Password,Privilege_name,Company,Validity,Admit_vdb_base,Admit_vdb_detail,Admit_sim,Admin_download,Admin) values('"+xm+"','"+mm+"','"+qx+"','"+gs+"','"+yxq+"','"+vdb_base+"','"+vdb_detail+"','"+mnj+"','"+xz+"','"+gly+"')"; 
stmt.executeUpdate(sql);
stmt.close();
conn.close();
out.println( "姓名   = "+xm   );
out.println( "姓名   = "+mm   );  
out.println( "姓名   = "+qx   ); 
out.println( "姓名   = "+gs   );
out.println( "姓名   = "+yxq   );  
out.println( "姓名   = "+vdb_base   );
out.println( "姓名   = "+vdb_detail   ); 
out.println( "姓名   = "+mnj   );
out.println( "姓名   = "+xz   );  
out.println( "姓名   = "+gly   );
%>

</body>
</html>