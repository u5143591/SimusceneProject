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
	Object name = session.getAttribute("uname");
	String name1 = request.getParameter("usn1");
	String privilege1 = request.getParameter("privilege1");
	String psw1 = request.getParameter("psw1");
	String cmp1 = request.getParameter("company1");
	String date1 = request.getParameter("date1");
	String vdbbase1 = request.getParameter("vdbbase1");
	String vdbdetail1 = request.getParameter("vdbdetail1");
	String download1 = request.getParameter("download1");
	String sim1 = request.getParameter("simulator1");
	String admin1 = request.getParameter("admin1");
	String className="com.microsoft.sqlserver.jdbc.SQLServerDriver";
	String url="jdbc:sqlserver://localhost:1433;DatabaseName=Simscene";
	String user="sa";
	String password="comet143";
	Connection conn; 
	Statement st;
	Class.forName(className);
	conn = DriverManager.getConnection(url,user,password);
	st = conn.createStatement();
	String sql = "update tab_user_previllage set Name='"+name1+"',Privilege_name='"+privilege1+"',Password='"+psw1+"',Company='"+cmp1+"',Validity='"+date1+"',Admit_vdb_base='"+vdbbase1+"',Admit_vdb_detail='"+vdbdetail1+"',Admin_download='"+download1+"',Admit_sim='"+sim1+"',Admin='"+admin1+"' where Name='"+name+"'";
	st.executeUpdate(sql);
	request.getRequestDispatcher("Administrator.jsp").forward(request,response);

%>
</body>
</html>