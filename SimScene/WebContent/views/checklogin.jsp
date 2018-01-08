<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page language="java" import="java.util.*"%>
<head>
<%
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
String url="jdbc:sqlserver://localhost:1433;DatabaseName=Simscene";
String user="sa";
String password="comet143";
String name2 = null;
String psw1  = null;
ArrayList<String> name1 = new ArrayList<String>();
ArrayList<String> psw2 = new ArrayList<String>();
Map<String,String> userpsw = new HashMap<String,String>();
Connection conn = DriverManager.getConnection(url,user,password);
Statement stmt = conn.createStatement(java.sql.ResultSet.TYPE_SCROLL_INSENSITIVE,java.sql.ResultSet.CONCUR_READ_ONLY);
ResultSet rs = stmt.executeQuery("select * from tab_user_previllage");
while(rs.next()){
	name2 = rs.getString("Name");
	psw1 = (rs.getString("Password")).trim();
	name1.add(name2);
	psw2.add(psw1);
}
for (int i=0;i<name1.size();i++){
	userpsw.put(name1.get(i), psw2.get(i));
}
String username = request.getParameter("username");
String psw = request.getParameter("password");
if ((username!=null && name1.contains(username)) && (psw!=null && (userpsw.get(username).equals(psw)))){
	session.setAttribute("name", username);		
	request.getRequestDispatcher("loginsuccess.jsp").forward(request,response);  
}else {
    response.sendRedirect("loginfail.jsp");
}
%> 
