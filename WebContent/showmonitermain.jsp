<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>管理员</title>
</head>
<body>
     <img src="image/1.jpg" width="100%" height="100%" style="z-index:-100;position:absolute;left:0;top:0">
     <input type="button" onclick="window.location='showcreate.jsp'" style="position:absolute;left:500px;top:80px" class="button red rarrow" value="创建学术师承树">
     <a href=change><button type="button" style="position:absolute;left:500px;top:150px" class="button red">更改学术师承树</button></a>
     <input type="button" onclick="window.location='showsearch.jsp'" style="position:absolute;left:500px;top:220px" class="button red rarrow" value="搜索学术师承树"> 
     <!--  <a href=cancel><button type="button" >注销用户</button></a>-->
     <input type="button" onclick="window.location='showcancel.jsp'" style="position:absolute;left:500px;top:290px" class="button red rarrow" value="注销用户"> 
     <a href=users><button type="button" style="position:absolute;left:500px;top:360px" class="button red">显示用户</button></a>
     <input type="button" onclick="window.location='shownouseradd.jsp'" style="position:absolute;left:500px;top:430px" class="button red rarrow" value="添加可以注册的用户">

     <input type="submit" value="返回" onclick="javascript :history.back(-1);" style="position:absolute;left:500px;top:500px" class="button black rarrow">
</body>
</html>