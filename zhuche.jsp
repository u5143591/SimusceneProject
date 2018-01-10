<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>用户注册</title>
	<link rel="stylesheet" type="text/css" href="jquery-easyui-1.5.4/themes/cupertino/easyui.css">
	<link rel="stylesheet" type="text/css" href="jquery-easyui-1.5.4/themes/icon.css">
	<script type="text/javascript" src="jquery-easyui-1.5.4/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="jquery-easyui-1.5.4/jquery.min.js"></script>
	<script type="text/javascript" src="jquery-easyui-1.5.4/jquery.easyui.min.js"></script>
</head>
<body>
<center>
	<div class="easyui-panel"  title="用户注册" style="width:100%;max-width:500px;padding:30px 60px;">
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
				<select class="easyui-combobox" name="qx" label="权限:" style="width:100%"><option value="admin">admin</option><option value="user">user</option><option value="guset">guest</option></select>
			</div>
			<div style="margin-bottom:10px">
				<select class="easyui-combobox" name="vdb_base" label="VDB基本信息:" style="width:100%"><option value="Y">Y</option><option value="N">N</option></select>
			</div>
			<div style="margin-bottom:10px">
				<select class="easyui-combobox" name="vdb_detail" label="VDB详细信息:" style="width:100%"><option value="Y">Y</option><option value="N">N</option></select>
			</div>
			<div style="margin-bottom:10px">
				<select class="easyui-combobox" name="mnj" label="模拟机信息:" style="width:100%"><option value="Y">Y</option><option value="N">N</option></select>
			</div>
			<div style="margin-bottom:10px">
				<select class="easyui-combobox" name="gly" label="管理员权限:" style="width:100%"><option value="Y">Y</option><option value="N">N</option></select>
			</div>
			<div style="margin-bottom:10px">
				<select class="easyui-combobox" name="xz" label="下载权限:" style="width:100%"><option value="Y">Y</option><option value="N">N</option></select>
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
		<script>
		function submitForm(){
			$('#zc').form('submit',{
				onSubmit:function(){
					return $(this).form('enableValidation').form('validate');
				}
			});
		}
		function clearForm(){
			$('#zc').form('clear');
		}
	</script>
</center>
</body>

</html>