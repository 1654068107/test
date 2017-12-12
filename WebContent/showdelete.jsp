<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link type="text/css" rel="stylesheet" href="css/mycss.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>删除</title>
</head>
<body>
    
    <img src="image/1.jpg" width="100%" height="100%" style="z-index:-100;position:absolute;left:0;top:0">
    <form action="delete" method="get">
		<h2></h2>
		<input name="name" type="text" style="position:absolute; left:450px; top:140px; font-family:courier; font-size: 30px; font-weight: bold; border:5px solid red width:50px; height:30px;" placeholder="输入你的昵称" size="22"required />
		<!--  <input name="name" type="text" placeholder="输入用户名称" size="22"required />-->
		<input name="father" type="text" style="position:absolute; left:450px; top:200px; font-family:courier; font-size: 30px; font-weight: bold; border:5px solid red width:50px; height:30px;" placeholder="输入待删除关系中老师的名字" size="22"required />
		<input name="son" type="text" style="position:absolute; left:450px; top:260px; font-family:courier; font-size: 30px; font-weight: bold; border:5px solid red width:50px; height:30px;" placeholder="输入待删除关系中徒弟的名字" size="22"required />
				
		<input type="submit" style="position:absolute;left:900px;top:230px" class="button black rarrow" value="继续" />		
		</form>
		
	<a href=main><button type="button" style="position:absolute;left:500px;top:350px" class="button black">确定</button></a>
		
	 <input type="submit" value="返回" onclick="javascript :history.back(-1);" style="position:absolute;left:700px;top:350px" class="button black rarrow">

</body>
</html>