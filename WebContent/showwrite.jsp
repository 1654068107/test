<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户注册</title>
</head>
<body>
     <h1>用户注册</h1>
     <form action="write" method="get">
		<h2></h2>
		<input name="ID" type="text" placeholder="账号" size="22"required />
		<input name="password" type="text" placeholder="密码" size="22"required />
				
		<input type="submit" value="确认" />		
		</form>
		
	<input type="submit" value="返回" onclick="javascript :history.back(-1);">	
</body>
</html>