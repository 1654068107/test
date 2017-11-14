<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>创建</title>
</head>
<body>
    <form action="create" method="get">
        <input name="treename" type="text" placeholder="请输入树的名字" size="22"required />
		<input name="father" type="text" placeholder="请输入师傅的名字" size="22"required />
		<input name="son" type="text" placeholder="请输入弟子的名字" size="22"required />
		<input name="time" type="text" placeholder="请输入师徒关系产生的时间" size="22"required />
				
		<input type="submit" value="继续" />		
	</form>
	
	<a href=main><button type="button">确认</button></a>
	
	<input type="submit" value="返回" onclick="javascript :history.back(-1);">
</body>
</html>