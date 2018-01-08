<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page language="java" pageEncoding="GB2312" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
String url="jdbc:sqlserver://localhost:1433;DatabaseName=Simscene";
String user="sa";
String password="comet143";
String vdbid = null;
String name2 = null;
String psw = null;
Connection conn = DriverManager.getConnection(url,user,password);
Statement stmt = conn.createStatement(java.sql.ResultSet.TYPE_SCROLL_INSENSITIVE,java.sql.ResultSet.CONCUR_READ_ONLY);
ResultSet rs = stmt.executeQuery("select * from tab_user");
ArrayList<String> name1 = new ArrayList<String>();
ArrayList<String> psw1 = new ArrayList<String>();
while(rs.next()){
	name2 = rs.getString("Name");
	name1.add(name2);
	psw = rs.getString("Password");
	psw1.add(psw);
}%>
<%=name2%>
<%=psw1.size() %>
<%out.print("数据库操作成功，恭喜你");%> 
</body>
</html>