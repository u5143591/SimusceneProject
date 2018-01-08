<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">  
table {  
    position:absolute;
    margin-top:100px;
    margin-left:400px;
    border: 2px #CCCCCC solid;  
    width: 660px;
    z-index:1;'
}  
  
td,th {  
    height: 30px;  
    border: #CCCCCC 1px solid;  
}
#div1{
	display: none;
	position: absolute;
	width:700px;;
	height:450px;
	margin-left:380px;
	margin-top:200px;
	text-align: center;
	z-index:2;
	background-color:#00ccff;
}
#div2{
	display: none;
	position: absolute;
	width:700px;;
	height:450px;
	margin-left:380px;
	margin-top:200px;
	text-align: center;
	z-index:2;
	background-color:#00ccff;
}
#insidetable{
	position:relative;
	margin-left:20px;
	margin-top:30px;
}
#close{
	position:relative;
	margin-left:300px;
	margin-top:40px;
}
#submit{
	position:absolute;
	margin-top:40px;
	margin-left:200px;
}
</style>  
<script>
function OpenDiv(){
document.getElementById("div1").style.display="block";
document.getElementById("open").style.display="none";
}
function CloseDiv(){
document.getElementById("div1").style.display="none";
document.getElementById("open").style.display="block";
}
function OpenDiv2(){
	document.getElementById("div2").style.display="block";
	document.getElementById("open").style.display="none";
}
function deleteRow(r)
{
var i=r.parentNode.parentNode.rowIndex;
document.getElementById('table').deleteRow(i);
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="Administrator.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
</head>
<body>
  <%  
  Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
  String url="jdbc:sqlserver://localhost:1433;DatabaseName=Simscene";
  String user="sa";
  String password="comet143";
  String name = null;
  String psw  = null;
  Connection conn = DriverManager.getConnection(url,user,password);
  Statement stmt = conn.createStatement(java.sql.ResultSet.TYPE_SCROLL_INSENSITIVE,java.sql.ResultSet.CONCUR_READ_ONLY);
  ResultSet rs = stmt.executeQuery("select * from tab_user_previllage");
  %>
  <table id="table" align="center">  
  <tr>  
      <th>  
          <%  
              out.print("姓名");  
          %>  
      </th>  
      <th>  
          <%  
              out.print("密码");  
          %>  
      </th>  
      <th>  
          <%  
              out.print("权限");  
          %>  
      </th> 
       <th>  
          <%  
              out.print("公司");  
          %>  
      </th>  
       <th>  
          <%  
              out.print("有效期");  
          %>  
      </th>   
      <th>  
          <%  
              out.print("能否读取Vdb基础表");  
          %>  
      </th>
       <th>  
          <%  
              out.print("能否读取Vdb细节表");  
          %>  
      </th>
      <th>  
          <%  
              out.print("能否读取模拟机表");  
          %>  
      </th> 
      <th>  
          <%  
              out.print("能否下载");  
          %>  
      </th>
      <th>  
          <%  
              out.print("管理员读写");  
          %>  
      </th> 
  </tr>  
<%
  while(rs.next()){
%>
       <tr>  
            <td>  
                <%  
                    out.print(rs.getString(1));  
                %>  
            </td>  
            <td>  
                <%  
                    out.print(rs.getString(2));   
               %>  
            </td>
            <td>  
                <%  
                    out.print(rs.getString(3));  
                %>  
            </td>  
            <td>  
                <%  
                    out.print(rs.getString(4));  
                %>  
            </td>  
            <td>  
                <%  
                    out.print(rs.getString(5));  
                %>  
            </td>
             <td>  
                <%  
                    out.print(rs.getString(6));  
                %>  
            </td>  
             <td>  
                <%  
                    out.print(rs.getString(7));  
                %>  
            </td>    
             <td>  
                <%  
                    out.print(rs.getString(8));  
                %>  
            </td>
             <td>  
                <%  
                    out.print(rs.getString(9));  
                %>  
            </td>            
              <td>  
                <%  
                    out.print(rs.getString(10));  
                %>  
            </td>                        
            <%
            	out.println("<td>"+"<a href='delete.jsp?Name="+rs.getString("Name")+"'>删除</a></td>");
            %>
            <%
            	out.println("<td>"+"<a href='javascript:OpenDiv2()'>编辑</a>"+"</td>");
            %>
        </tr> 
<% } %>
</table>
<div id="div1">
<form action="save.jsp" method="post">
	<table background="white" id="insidetable">
	<tr><td>姓名</td><td><input name="usn" type="text"></td></tr>
	<tr><td>密码</td><td><input name="psw" type="text"></td></tr>
	<tr><td>权限</td><td><input name="privilege" type="text"></td></tr>
	<tr><td>公司</td><td><input name="company" type="text"></td></tr>
	<tr><td>有效期</td><td><input name="date" type="text"></td></tr>
	<tr><td>能否读取Vdb基础表</td><td><input name="vdbbase" type="text"></td></tr>
	<tr><td>能否读取Vdb细节表</td><td><input name="vdbdetail" type="text"></td></tr>
	<tr><td>能否读取模拟机表</td><td><input name="simulator" type="text"></td></tr>
	<tr><td>能否下载</td><td><input name="download" type="text"></td></tr>
	<tr><td>管理员读写</td><td><input name="admin" type="text"></td></tr>
	</table>
		<input type="submit" name="submit" value="保存" style="width:100px; height:50px;">
		<button type="button" id="close" style="width:100px; height:50px;" onclick="CloseDiv()" id="open">关闭</button>
		</form>
</div>
<div id="div2">
<%while (rs.next()){
%>
}
<form action="save.jsp" method="post">
	<table background="white" id="insidetable">
		<tr><td>姓名</td><td><input name="usn" type="text" value=<%=rs.getString("Name")%>></td></tr>
		<tr><td>密码</td><td><input name="psw" type="text" value=<%=rs.getString("Password")%>></td></tr>
		<tr><td>权限</td><td><input name="privilege" type="text" value=<%=rs.getString("Privilege_name")%>></td></tr>
		<tr><td>公司</td><td><input name="company" type="text" value=<%=rs.getString("Company")%>></td></tr>
		<tr><td>有效期</td><td><input name="date" type="text" value=<%=rs.getString("Validity")%>></td></tr>
		<tr><td>能否读取Vdb基础表</td><td><input name="vdbbase" type="text" value=<%=rs.getString("Admit_vdb_base")%>></td></tr>
		<tr><td>能否读取Vdb细节表</td><td><input name="vdbdetail" type="text" value=<%=rs.getString("Admit_vdb_detail")%>></td></tr>
		<tr><td>能否读取模拟机表</td><td><input name="simulator" type="text" value=<%=rs.getString("Admit_sim")%>></td></tr>
		<tr><td>能否下载</td><td><input name="download" type="text" value=<%=rs.getString("Admin_download")%>></td></tr>
		<tr><td>管理员读写</td><td><input name="admin" type="text" value=<%=rs.getString("Admin")%>></td></tr>
		</table>
			<input type="submit" name="submit" value="保存" style="width:100px; height:50px;">
			<button type="button" id="close" style="width:100px; height:50px;" onclick="CloseDiv()" id="open">关闭</button>
		</form>
<%} %>
</div>
<button type="button" class="addbutton" style="width:60px;" onclick="javascript:OpenDiv();" id="open">新增</button>
</body>
</html>