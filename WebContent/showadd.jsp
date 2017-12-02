<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加</title>
</head>
<body>
     <form action="add" method="get">
		<h2></h2>
		<input name="name" type="text" placeholder="输入要更改用户的名字" size="22"required />
		<input name="treename" type="text" placeholder="输入学术师承树名称" size="22"required />
		
		<input name="father" type="text" placeholder="输入老师" size="22"required />
		<input name="son" type="text" placeholder="输入学生" size="22"required />
		<input name="time" type="text" placeholder="输入产生师生关系的时间" size="22"required />	
		
		<input type="submit" value="继续" />		
	</form>
		
	<a href=change><button type="button">确认</button></a>
		
	 <input type="submit" value="返回" onclick="javascript :history.back(-1);">
</body>
</html>