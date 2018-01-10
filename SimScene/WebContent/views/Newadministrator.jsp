<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>DataGrid Complex Toolbar - jQuery EasyUI Demo</title>
	<link rel="stylesheet" type="text/css" href="../easyUI/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="../easyUI/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="../easyUI/demo/demo.css">
	<link rel="stylesheet" type="text/css" href="../easyUI/themes/cupertino/easyui.css">
	<script type="text/javascript" src="../easyUI/jquery.min.js"></script>
	<script type="text/javascript" src="../easyUI/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="../easyUI/locale/easyui-lang-zh_CN.js"></script>
</head>
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
	<div style="margin:20px 0;"></div>
	<table id="admintable" class="easyui-datagrid" title="管理员表" style="width:1090px;height:250px" data-options="rownumbers:true,singleSelect:true,url:'datagrid_data1.json',method:'get',toolbar:'#ft'">
		<thead>
			<tr>
				<th data-options="field:'itemid',width:80">姓名</th>
				<th data-options="field:'productid',width:80">密码</th>
				<th data-options="field:'listprice',width:50,align:'left'">权限</th>
				<th data-options="field:'unitcost',width:80,align:'left'">公司</th>
				<th data-options="field:'attr1',width:120">数据库下载有效期</th>
				<th data-options="field:'status',width:140,align:'left'">读取vdb基础表权限</th>
				<th data-options="field:'status',width:60,align:'left'">读取vdb细节表权限</th>
				<th data-options="field:'status',width:60,align:'left'">读取模拟机表权限</th>	
				<th data-options="field:'status',width:20,align:'left'">下载权限</th>
				<th data-options="field:'status',width:60,align:'left'">管理员读写</th>
			</tr>
			<%while (rs.next()){ %>
			<tr>
				<th data-options="field:'itemid',width:40"><%=rs.getString(1)%></th>
				<th data-options="field:'productid',width:40"><%=rs.getString(2)%></th>
				<th data-options="field:'listprice',width:40,align:'left'"><%=rs.getString(3)%></th>
				<th data-options="field:'unitcost',width:80,align:'left'"><%=rs.getString(4)%></th>
				<th data-options="field:'attr1',width:120"><%=rs.getString(5)%></th>
				<th data-options="field:'status',width:140,align:'left'"><%=rs.getString(6)%></th>
				<th data-options="field:'status',width:60,align:'left'"><%=rs.getString(7)%></th>
				<th data-options="field:'status',width:60,align:'left'"><%=rs.getString(8)%></th>	
				<th data-options="field:'status',width:20,align:'left'"><%=rs.getString(9)%></th>
				<th data-options="field:'status',width:60,align:'left'"><%=rs.getString(10)%></th>
			<%} %>
		</thead>
	</table>
	<div id="ft" style="padding:2px 5px;">
		<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="javascript:OpenDiv()" id="open"></a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true"></a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-save" plain="true"></a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-cut" plain="true"></a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true"></a>
	</div>
	<div id="div1" style="width:100%;max-width:500px;display">
	<div class="easyui-panel"  title="用户注册" style="width:100%;max-width:500px;padding:40px 60px;">
		<form id="zc" class="easyui-form" method="post" action="vdb_insert.jsp" data-options="novalidate:true">
			<div style="margin-bottom:10px">
				<input class="easyui-textbox" name="xm" style="width:100%" data-options="label:'姓名:',required:true">
			</div>
			<div style="margin-bottom:10px">
				<input id="pass" class="easyui-passwordbox" name="mm" style="width:100%" data-options="label:'密码:',required:true">
			</div>
			<div style="margin-bottom:10px">
				<input class="easyui-textbox" name="gs" style="width:100%" data-options="label:'公司:',required:true">
			</div>
			<div style="margin-bottom:10px">
				<select class="easyui-combobox" name="qx" label="权限:" style="width:100%" data-options="editable:false"><option value="admin">admin</option><option value="user">user</option><option value="guset">guest</option></select>
			</div>
			<div style="margin-bottom:10px">
				<select class="easyui-combobox" name="vdb_base" label="VDB基本信息:" style="width:100%" data-options="editable:false"><option value="Y">Y</option><option value="N">N</option></select>
			</div>
			<div style="margin-bottom:10px">
				<select class="easyui-combobox" name="vdb_detail" label="VDB详细信息:" style="width:100%" data-options="editable:false"><option value="Y">Y</option><option value="N">N</option></select>
			</div>
			<div style="margin-bottom:10px">
				<select class="easyui-combobox" name="mnj" label="模拟机信息:" style="width:100%" data-options="editable:false"><option value=""></option><option value="Y">Y</option><option value="N">N</option></select>
			</div>
			<div style="margin-bottom:10px">
				<select class="easyui-combobox" name="gly" label="管理员权限:" style="width:100%" data-options="editable:false"><option value="Y">Y</option><option value="N">N</option></select>
			</div>
			<div style="margin-bottom:10px">
				<select class="easyui-combobox" name="xz" label="下载权限:" style="width:100%" data-options="editable:false"><option value="Y">Y</option><option value="N">N</option></select>
			</div>
		    <div style="margin-bottom:20px">
			    <input class="easyui-datebox" name="yxq " label="有效期:" labelPosition="left" style="width:100%;">
		    </div>
		</form>
	</div>
	<br>
	<div style="text-align:center;padding:5px 0">
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()" style="width:80px">注册</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()" style="width:80px">复位</a>
	</div>
	</div>
</body>
</html>