<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page language="java" import="java.util.*"%>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Simuscene</title>
<div class="a_wrap">
	<a href="#"><%=session.getAttribute("name") %></a>
</div>
<div class="b_wrap">
	<a href="Simuscene.jsp">登出</a>
</div>
<link href="Simuscene.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
<script src="../Downloads/jquery-3.2.1/jquery-3.2.1.js"></script>
<body>
<button type="button" class="btn btn-sm1  btn1">最近更新</button>
<button type="button" class="btn btn-sm1  btn2">最受欢迎</button>
<button type="button" class="btn btn-sm1  btn3">所有机场<br>
</button>
<form class="news_fm">
	<span><input type="text" class="form-control" style="height: 30px;width: 250px;" placeholder="请输入查找的机场"></span>
	<span><input type="submit" value="提交" class="btn-control" style="height: 30px;width: 50px;"></span>
</form>
<img src="../views/img/timg2.jpeg" class="titlepic" style="height: 250px;width: 910px;" alt="">
<a href="../views/Airport.jsp"><img src="../views/img/timg.jpeg" class="pic1" style="height: 200px;width: 150px;" alt=""></a>
<img src="../views/img/timg.jpeg" class="pic2" style="height: 200px;width: 150px;" alt="">
<img src="../views/img/timg.jpeg" class="pic3" style="height: 200px;width: 150px;" alt="">
<img src="../views/img/timg.jpeg" class="pic4" style="height: 200px;width: 150px;" alt="">
<img src="../views/img/timg.jpeg" class="pic5" style="height: 200px;width: 150px;" alt="">
<img src="../views/img/timg.jpeg" class="pic6" style="height: 200px;width: 150px;" alt="">
<img src="../views/img/timg.jpeg" class="pic7" style="height: 200px;width: 150px;" alt="">
<img src="../views/img/timg.jpeg" class="pic8" style="height: 200px;width: 150px;" alt="">
<img src="../views/img/timg.jpeg" class="pic9" style="height: 200px;width: 150px;" alt="">
<img src="../views/img/timg.jpeg" class="pic10" style="height: 200px;width: 150px;" alt="">
<img src="../views/img/timg.jpeg" class="pic11" style="height: 200px;width: 150px;" alt="">
<img src="../views/img/timg.jpeg" class="pic12" style="height: 200px;width: 150px;" alt="">
<div>
    <ul class="menu">
    <li><a href="#" class="selected">我们的产品</a></li>
    <li>
        <a href="#">我们的服务</a>
        <ul>
             <li><a href="#">目录1</a></li>
            <li><a href="#">目录2</a></li>
            <li><a href="#">目录3</a></li>
            <li><a href="#">目录4</a></li>
        </ul>
    </li>
    <li>
        <a href="#">机场</a>
        <ul>
            <li><a href="#">目录1</a></li>
            <li><a href="#">目录2</a></li>
            <li><a href="#">目录3</a></li>
            <li><a href="#">目录4</a></li>
        </ul>
    </li>
    <li><a href="#">关于我们</a></li>
</ul>

</div>
<div class="page">
	<span>上一页</span>
	<a href="#">1</a>
	<a href="#">2</a>
	<a href="#">3</a>
	<a href="#">4</a>
	<a href="#">5</a>
	<span>下一页</span>
</div>
<script>
function ale(){
	alert("注册功能暂没开启请联系管理员")
}
</script>
<footer class="footer">Content for  class "footer" Goes Here</footer>
</body>
</head>
</html>
