<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>更新时间</title>
</head>
<body>
    <form action="updatetime" method="get">
		<h2></h2>
		<input name="treename" type="text" placeholder="输入学术师承树名称" size="22"required />
		<input name="name" type="text" placeholder="输入用户名称" size="22"required />
		<input name="father" type="text" placeholder="输入要更改关系中师傅的名字" size="22"required />
		<input name="son" type="text" placeholder="输入要更改关系中徒弟的名字" size="22"required />
		<input name="time" type="text" placeholder="输入新的时间" size="22"required />
				
		<input type="submit" value="确认" />		
		</form>
		
	<input type="submit" value="返回" onclick="javascript :history.back(-1);">

</body>
</html>