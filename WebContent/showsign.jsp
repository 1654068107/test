<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<style type="text/css">
*{margin:0;padding:0;list-style-type:none;}
a,img{border:0;}
body{font-size:28px;font-family:"楷体";background:#b42323;}
.demo_con{width: 1960px;margin:130px 0 0 550px;}
</style>
<link type="text/css" rel="stylesheet" href="css/mycss.css"/>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户登录</title>
</head>
<body>
<div class="demo_con">
	 <img src="image/1.jpg" width="100%" height="100%" style="z-index:-100;position:absolute;left:0;top:0">
     <h1>用户登录</h1>
     <br>
        
     <form action="sign" method="get">
		<h2></h2>
		<input name="ID" type="text" style="position:absolute; left:450px; top:200px; font-family:courier; font-size: 30px; font-weight: bold; border:5px solid red width:50px; height:30px;" placeholder="账号" size="22"required />
		<input name="password" type="text" style="position:absolute; left:450px; top:250px; font-family:courier; font-size: 30px; font-weight: bold; border:5px solid red width:50px; height:30px;" placeholder="密码" size="22"required />
				
		<input type="submit" style="position:absolute;left:500px;top:300px" class="button black rarrow" value="确认"/>		
		</form>
		
	<input type="submit" style="position:absolute;left:700px;top:300px" class="button black rarrow" value="返回" onclick="javascript :history.back(-1);">
</div>
</body>
</html>