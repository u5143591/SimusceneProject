<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page language="java" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<% 
	String name = request.getParameter("usn");
	String privilege = request.getParameter("privilege");
	String psw = request.getParameter("psw");
	String cmp = request.getParameter("company");
	String date = request.getParameter("date");
	String vdbbase = request.getParameter("vdbbase");
	String vdbdetail = request.getParameter("vdbdetail");
	String download = request.getParameter("download");
	String sim = request.getParameter("simulator");
	String admin = request.getParameter("admin");
	String className="com.microsoft.sqlserver.jdbc.SQLServerDriver";
	String url="jdbc:sqlserver://localhost:1433;DatabaseName=Simscene";
	String user="sa";
	String password="comet143";
	Connection conn; 
    Statement st;
    Class.forName(className);
	conn = DriverManager.getConnection(url,user,password);
	st = conn.createStatement();
	String sql="insert into tab_user_previllage(Name,Privilege_name,Password,Company,Validity,Admit_vdb_base,Admit_vdb_detail,Admit_sim,Admin_download,Admin) VALUES('"+name+"','"+privilege+"','"+psw+"','"+cmp+"','"+date+"','"+vdbbase+"','"+vdbdetail+"','"+download+"','"+sim+"','"+admin+"')";
	st.executeUpdate(sql);
	request.getRequestDispatcher("Administrator.jsp").forward(request,response);
	st.close();
	conn.close();
%>
</body>
</html>