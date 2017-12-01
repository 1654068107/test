<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>管理员</title>
</head>
<body>
     <input type="button" onclick="window.location='showcreate.jsp'" value="创建学术师承树">
     <a href=change><button type="button">更改学术师承树</button></a>
     <input type="button" onclick="window.location='showsearch.jsp'" value="搜索学术师承树"> 
     <!--  <a href=cancel><button type="button">注销用户</button></a>-->
     <input type="button" onclick="window.location='showcancel.jsp'" value="注销用户"> 
     <a href=users><button type="button">显示用户</button></a>
     <input type="button" onclick="window.location='shownouseradd.jsp'" value="添加可以注册的用户">

     <input type="submit" value="返回" onclick="javascript :history.back(-1);">
</body>
</html>