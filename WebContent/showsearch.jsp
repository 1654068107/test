<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/mycss.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>搜索</title>
</head>
<body>
    <img src="image/1.jpg" width="100%" height="100%" style="z-index:-100;position:absolute;left:0;top:0">
   <form action="search" method="get">
		<input name="name" type="text" style="position:absolute; left:450px; top:220px; font-family:courier; font-size: 30px; font-weight: bold; border:5px solid red width:50px; height:30px;" placeholder="输入你要搜索的用户" size="22"required />
				
		<input type="submit" style="position:absolute;left:500px;top:300px" class="button black rarrow" value="确认" />		
	</form>
	
   <input type="submit" style="position:absolute;left:700px;top:300px" class="button black rarrow" value="返回" onclick="javascript :history.back(-1);">
</body>
</html>