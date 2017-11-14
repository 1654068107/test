<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>搜索</title>
</head>
<body>
   <form action="search" method="get">
		<input name="name" type="text" placeholder="输入你要搜索的用户" size="22"required />
				
		<input type="submit" value="确认" />		
	</form>
	
   <input type="submit" value="返回" onclick="javascript :history.back(-1);">
</body>
</html>