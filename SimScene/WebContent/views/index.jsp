<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>
	<title>Simuscene系统查询</title>
	<link rel="stylesheet" type="text/css" href="jquery-easyui-1.5.4/themes/cupertino/easyui.css">
	<link rel="stylesheet" type="text/css" href="jquery-easyui-1.5.4/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="jquery-easyui-1.5.4/themes/color.css">
	<script type="text/javascript" src="jquery-easyui-1.5.4/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="jquery-easyui-1.5.4/jquery.min.js"></script>
	<script type="text/javascript" src="jquery-easyui-1.5.4/jquery.easyui.min.js"></script>
</head>
<body>
<center>
<div style="width:900px;" >
<div style="position:absolute;float:left;padding:5px 30px 10px 0;width:300px;height:70px;" align="left">
<img src="img/xy_logo.jpg" alt="">
</div>
<div style="position:absolute;float:right;padding:50px 10px 0 0;width:500px;height:40px;" align="right">
    	<a href="#" class="easyui-linkbutton c5" style="width:120px">登陆</a>
		<a href="#" class="easyui-linkbutton c8" style="width:120px">联系我们</a>
</div>
</div>

<div class="easyui-layout" style="width:900px;height:300px;">
<img src="img/banner.jpg"  style="height: 275px;width: 900px;" alt="">
</div>
<div style="margin:10px 0 20px 0;"></div>
<div class="easyui-layout" style="width:900px;height:auto;">
<table>
<tr>
<td>
<div style="margin:20px 0;"></div>
	<div class="easyui-panel" style="width:100%;max-width:250px;padding:30px 30px;">
		<input class="easyui-searchbox" data-options="prompt:'ICAO查询',searcher:doSearch" style="width:100%">
	</div>
	<script>
		function doSearch(value){
			alert('You input: ' + value);
		}
	</script>
</td>
<td>
<div class="easyui-panel"  title="机场" style="width:650px;padding:10px 10px 10px 10px;" >
<img src="img/timg.jpeg" class="pic2" style="height: 200px;width: 200px;" alt="">
<img src="img/timg.jpeg" class="pic3" style="height: 200px;width: 200px;" alt="">
<img src="img/timg.jpeg" class="pic4" style="height: 200px;width: 200px;" alt="">
<img src="img/timg.jpeg" class="pic2" style="height: 200px;width: 200px;" alt="">
<img src="img/timg.jpeg" class="pic3" style="height: 200px;width: 200px;" alt="">
<img src="img/timg.jpeg" class="pic4" style="height: 200px;width: 200px;" alt="">
<img src="img/timg.jpeg" class="pic2" style="height: 200px;width: 200px;" alt="">
<img src="img/timg.jpeg" class="pic3" style="height: 200px;width: 200px;" alt="">
<img src="img/timg.jpeg" class="pic4" style="height: 200px;width: 200px;" alt="">
</div>
</td>
</tr>
</table>


</div>


<div id="p" class="easyui-panel"  style="width:900px;height:300px;padding:10px;">   
         
<ul >
    
            <li >
                <span>Products &amp; Services</span>
                
                        <div class="secondary-sub-nav">
                    
                        <a href='/Products-and-Services/True-Airport/Overview/' class='' target='_self'><span>
                            True Airport</span></a>
                    
                        </div>
                    
            </li>
        
            <li >
                <span>My CAE Visual</span>
                
                        <div >
                    
                        <a href='/My-CAE-Visual/' class='' target='_self'><span>
                            My Visual Dashboard</span></a>
                    
                        <a href='/My-CAE-Visual/My-Alerts/' class='' target='_self'><span>
                            My Alerts</span></a>
                    
                        <a href='/My-CAE-Visual/My-Favorites/' class='' target='_self'><span>
                            My Favorites</span></a>
                    
                        <a href='/My-CAE-Visual/My-Downloads/' class='' target='_self'><span>
                            My Downloads</span></a>
                    
                        <a href='/My-CAE-Visual/Account-Information/' class='' target='_self'><span>
                            Account Information</span></a>
                    
                        </div>
                    
            </li>
        
            <li >
                <span>Downloads</span>
                
                        <div >
                    
                        <a href='/Downloads/True-Airport/' class='' target='_self'><span>
                            Airports</span></a>
                    
                        </div>
                    
            </li>
        
</ul>

                        
<span>Copyright © 2016 CAE. All rights reserved. Copyright policy</span>
<img src="/images/site/cae-logo-small.png" width="65" height="32" alt="CAE" />

<ul class='legal'>
    
            <li class='first'>
                <a href='http://www.cae.com/note-legale/?LangType=1033' class='' target='_self'><span>Legal Notice</span></a>
                
            </li>
        
            <li class='last'>
                <a href='http://www.cae.com/note-legale/?LangType=1033' class='' target='_self'><span>CAE Privacy Policy</span></a>
                
            </li>
        
</ul>         
</div>
</center>
</body>
</html>