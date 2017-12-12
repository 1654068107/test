<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


<style type="text/css">
.btn{
    width:100px;
    height:38px;
    text-align:center;
}
*{margin:0;padding:0;list-style-type:none;}
a,img{border:0;}
body{font-size:28px;font-family:"楷体";background:#d2a000;}
.demo_con{width: 1960px;margin:140px 0 0 480px;}
</style>
<link type="text/css" rel="stylesheet" href="css/mycss.css"/>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8">



<title>开始登录页面</title>
</head>
<body>
<div class="demo_con" >
     <h1>欢迎来到学术师承树</h1>
      <img src="image/1.jpg" width="100%" height="100%" style="z-index:-100;position:absolute;left:0;top:0">
     <form action="search" method="get">
		<input name="name" type="text"  style="position:absolute; left:450px; top:230px; font-family:courier; font-size: 30px; font-weight: bold; border:5px solid red width:50px; height:30px;"  placeholder="输入你要搜索的用户" size="22"required />
				
		<input type="submit" value="确认" style="position:absolute;left:890px;top:225px;width:100px;height:48px;text-align:center;" class="button black" />		
	</form>
     <input type="button" onclick="window.location='showwrite.jsp'" style="position:absolute;left:450px;top:300px;width:100px;height:38px" class="button black" value="用户注册">
     <input type="button" onclick="window.location='showsign.jsp'" style="position:absolute;left:600px;top:300px;width:100px;height:38px" class="button black" value="用户登录">
     <input type="button" onclick="window.location='showmoniter.jsp'" style="position:absolute;left:750px;top:300px;width:100px;height:38px" class="button black" value="管理员登录">
     <!--<a href=search><button type="button">免登陆</button></a>-->
</div>
</body>
</html>