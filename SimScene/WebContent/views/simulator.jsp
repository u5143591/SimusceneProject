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
    margin-left:300px;
    border: 2px #CCCCCC solid;  
    width: 1260px;
    z-index:1;'
}  
  
td,th {  
    height: 30px;  
    border: #CCCCCC 1px solid;  
}
#div1{
	display: none;
	position: absolute;
	width:1000px;;
	height:650px;
	margin-left:270px;
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
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="Simulator.css" rel="stylesheet" type="text/css">
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
  ResultSet rs = stmt.executeQuery("select * from tab_simulator");
  %>
  <table id="table" align="center">  
  <tr>  
      <th>  
          <%  
              out.print("模拟机名称");  
          %>  
      </th>  
      <th>  
          <%  
              out.print("模拟机代码");  
          %>  
      </th>  
      <th>  
          <%  
              out.print("安装日期");  
          %>  
      </th> 
      <th>  
          <%  
              out.print("系统");  
          %>  
      </th>
       <th>  
          <%  
              out.print("视景系统");  
          %>  
      </th>  
       <th>  
          <%  
              out.print("Baseline版本");  
          %>  
      </th>   
      <th>  
          <%  
              out.print("是否安装Bds");  
          %>  
      </th>
       <th>  
          <%  
              out.print("是否安装摄像机");  
          %>  
      </th>
      <th>  
          <%  
              out.print("Bds纪录");  
          %>  
      </th> 
      <th>  
          <%  
              out.print("Bds重放");  
          %>  
      </th>
      <th>  
          <%  
              out.print("Bds安装日期");  
          %>  
      </th>
      <th>  
          <%  
              out.print("是否安装Simpas");  
          %>  
      </th>
      <th>  
          <%  
              out.print("飞机类型");  
          %>  
      </th>
      <th>  
          <%  
              out.print("模拟机制造商");  
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
             <td>  
                <%  
                    out.print(rs.getString(11));  
                %>  
            </td>        
             <td>  
                <%  
                    out.print(rs.getString(12));  
                %>  
            </td>        
             <td>  
                <%  
                    out.print(rs.getString(13));  
                %>  
            </td>        
             <td>  
                <%  
                    out.print(rs.getString(14));  
                %>  
            </td>                                
            <%
            	out.println("<td>"+"<a href='delete.jsp?Name="+rs.getString("Name")+"'>删除</a></td>");
            %>
            <%
        	    out.println("<td>"+"<a href='edit.jsp?Name="+rs.getString("Name")+"&Password="+rs.getString("Password")+"&Pname="+rs.getString("Privilege_name")+"&Company="+rs.getString("Company")+"&Validity="+rs.getString("Validity")+"&Admit_vdb_base="+rs.getString("Admit_vdb_base")+"&Admit_vdb_detail="+rs.getString("Admit_vdb_detail")+"&Admit_sim="+rs.getString("Admit_sim")+"&Admin_download="+rs.getString("Admin_download")+"&Admin="+rs.getString("Admin")+",'>编辑</a></td>");
            %>
        </tr> 
<% } %>
</table>
<div id="div1">
<form action="save.jsp" method="post">
	<table background="white" id="insidetable">
	<tr><td>模拟机名称</td><td><input name="Sname" type="text"></td></tr>
	<tr><td>模拟机代码</td><td><input name="Mnem" type="text"></td></tr>
	<tr><td>安装日期</td><td><input name="Rftdate" type="text"></td></tr>
	<tr><td>系统</td><td><input name="Series" type="text"></td></tr>
	<tr><td>视景系统</td><td><input name="IG" type="text"></td></tr>
	<tr><td>Baseline版本</td><td><input name="Baseline" type="text"></td></tr>
	<tr><td>是否安装Bds</td><td><input name="Bds" type="text"></td></tr>
	<tr><td>是否安装摄像机</td><td><input name="Bdscam" type="text"></td></tr>
	<tr><td>Bds纪录</td><td><input name="Bdsrecord" type="text"></td></tr>
	<tr><td>Bds重放</td><td><input name="Bdsplayback" type="text"></td></tr>
	<tr><td>Bds安装日期</td><td><input name="Bdsdate" type="text"></td></tr>
	<tr><td>是否安装Simpas</td><td><input name="Simpas" type="text"></td></tr>
	<tr><td>飞机类型</td><td><input name="Aircrafttype" type="text"></td></tr>
	<tr><td>模拟机制造商</td><td><input name="Manufacturer" type="text"></td></tr>
	</table>
		<input type="submit" name="submit" value="保存" style="width:100px; height:50px;">
		<button type="button" id="close" style="width:100px; height:50px;" onclick="CloseDiv()" id="open">关闭</button>
		</form>
</div>
<button type="button" class="addbutton" style="width:60px;" onclick="javascript:OpenDiv();" id="open">新增</button>
</body>
</html>