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
	String sname = request.getParameter("Sname");
	String mnem = request.getParameter("Mnem");
	String rftdate = request.getParameter("Rftdate");
	String series = request.getParameter("Series");
	String ig = request.getParameter("IG");
	String baseline = request.getParameter("Baseline");
	String bds = request.getParameter("Bds");
	String bdscam = request.getParameter("Bdscam");
	String bdsrecord = request.getParameter("Bdsrecord");
	String bdsplayback = request.getParameter("Bdsplayback");
	String bdsdate = request.getParameter("Bdsdate");
	String simpas = request.getParameter("Simpas");
	String aircrafttype = request.getParameter("Aircrafttype");
	String manufacturer = request.getParameter("Manufacturer");
	
	String className="com.microsoft.sqlserver.jdbc.SQLServerDriver";
	String url="jdbc:sqlserver://localhost:1433;DatabaseName=Simscene";
	String user="sa";
	String password="comet143";
	Connection conn; 
    Statement st;
    Class.forName(className);
	conn = DriverManager.getConnection(url,user,password);
	st = conn.createStatement();
	String sql="insert into tab_simulator(Sim_name,Mnem,Rft_date,Series,IG,Baseline,Bds,Bds_cam,Bds_record,Bds_playback,Bds_date,Simpas,Aircraft_type,Manufacturer) VALUES('"+sname+"','"+mnem+"','"+rftdate+"','"+series+"','"+ig+"','"+baseline+"','"+bds+"','"+bdscam+"','"+bdsrecord+"','"+bdsplayback+"','"+bdsdate+"','"+simpas+"','"+aircrafttype+"','"+manufacturer+"')";
	st.executeUpdate(sql);
	request.getRequestDispatcher("Administrator.jsp").forward(request,response);
	st.close();
	conn.close();
%>
</body>
</html>