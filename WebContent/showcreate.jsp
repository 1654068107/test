<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link type="text/css" rel="stylesheet" href="css/mycss.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>创建</title>
</head>
<body>
    <img src="image/1.jpg" width="100%" height="100%" style="z-index:-100;position:absolute;left:0;top:0">
    <form action="create" method="get">
        
		<input name="father" type="text" style="position:absolute; left:450px; top:200px; font-family:courier; font-size: 30px; font-weight: bold; border:5px solid red width:50px; height:30px;" placeholder="请输入师傅的名字" size="22"required />
		<input name="son" type="text" style="position:absolute; left:450px; top:250px; font-family:courier; font-size: 30px; font-weight: bold; border:5px solid red width:50px; height:30px;" placeholder="请输入弟子的名字" size="22"required />
		<input name="time" type="text" style="position:absolute; left:450px; top:300px; font-family:courier; font-size: 30px; font-weight: bold; border:5px solid red width:50px; height:30px;" placeholder="请输入师徒关系产生的时间" size="22"required />
				
		<input type="submit" style="position:absolute;left:900px;top:300px" class="button black rarrow" value="继续" />		
	</form>
	
	<a href=main><button type="button" style="position:absolute;left:500px;top:350px" class="button black">确认</button></a>
	
	<input type="submit" value="返回" onclick="javascript :history.back(-1);" style="position:absolute;left:700px;top:350px" class="button black rarrow">
</body>
</html>