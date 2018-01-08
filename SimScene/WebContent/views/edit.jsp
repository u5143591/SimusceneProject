<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<style type="text/css">
#div1{
	display: block;
	position: absolute;
	width:700px;;
	height:450px;
	margin-left:380px;
	margin-top:200px;
	text-align: center;
	z-index:2;
	background-color:#00ccff;
}
</style>
<body>
<% 
	String name = request.getParameter("Name");
	String privilege = request.getParameter("Pname");
	String psw = request.getParameter("Password");
	String cmp = request.getParameter("Company");
	String date = request.getParameter("Validity");
	String vdbbase = request.getParameter("Admit_vdb_base");
	String vdbdetail = request.getParameter("Admit_vdb_detail");
	String download = request.getParameter("Admin_download");
	String sim = request.getParameter("Admit_sim");
	String admin = request.getParameter("Admin");
%>
<div id="div1">
<form action="save.jsp" method="post">
	<table background="white" id="insidetable">
	<tr><td>姓名</td><td><input name="usn" type="text" value=<%=name%>></td></tr>
	<tr><td>密码</td><td><input name="psw" type="text" value=<%=psw%>></td></tr>
	<tr><td>权限</td><td><input name="privilege" type="text" value=<%=privilege%>></td></tr>
	<tr><td>公司</td><td><input name="company" type="text" value=<%=cmp%>></td></tr>
	<tr><td>有效期</td><td><input name="date" type="text" value=<%=date%>></td></tr>
	<tr><td>能否读取Vdb基础表</td><td><input name="vdbbase" type="text" value=<%=vdbbase%>></td></tr>
	<tr><td>能否读取Vdb细节表</td><td><input name="vdbdetail" type="text" value=<%=vdbdetail%>></td></tr>
	<tr><td>能否读取模拟机表</td><td><input name="simulator" type="text" value=<%=sim%>></td></tr>
	<tr><td>能否下载</td><td><input name="download" type="text" value=<%=download%>></td></tr>
	<tr><td>管理员读写</td><td><input name="admin" type="text" value=<%=admin%>></td></tr>
	</table>
		<input type="submit" name="submit" value="保存" style="width:100px; height:50px;">
		<button type="button" id="close" style="width:100px; height:50px;" onclick="CloseDiv()" id="open">关闭</button>
		</form>
</div>
</body>
</html>