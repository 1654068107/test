<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户主界面</title>
</head>
<body>
    <img src="image/1.jpg" width="100%" height="100%" style="z-index:-100;position:absolute;left:0;top:0">
  <div class="demo_con">
 
	<button type="button" onclick="window.location='showcreate.jsp'" style="position:absolute;left:500px;top:50px" class="button red rarrow">创建学术师承树</button>
	
	<button type="button" onclick="window.location='showsearch.jsp'" style="position:absolute;left:500px;top:150px" class="button black rarrow">搜索学术师承树</button>
	<button type="button" onclick="window.location='showbrother.jsp'" style="position:absolute;left:500px;top:250px" class="button black rarrow">搜索用户的同学</button>

	<a href=change><button type="button" style="position:absolute;left:500px;top:350px" class="button black rarrow">更改学术师承树</button></a>

	<button type="submit" onclick="javascript :history.back(-1);" style="position:absolute;left:500px;top:450px" class="button black larrow">返回</button>

</div>
     
 
</body>
</html>