<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>更新名字</title>
</head>
<body>
     <form action="updatename" method="get">
		<h2></h2>
		<input name="name" type="text" placeholder="输入要更改用户的名字" size="22"required />
		<input name="treename" type="text" placeholder="输入学术师承树名称" size="22"required />
		<input name="oldname" type="text" placeholder="输入原来师承树节点的名字" size="22"required />
		<input name="newname" type="text" placeholder="输入新的师承树节点的名字" size="22"required />
				
		<input type="submit" value="确认" />		
		</form>
		
	<input type="submit" value="返回" onclick="javascript :history.back(-1);">
</body>
</html>