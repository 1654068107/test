<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>合并</title>
</head>
<body>
     <form action="merge" method="get">
		<h2></h2>
		<input name="father" type="text" placeholder="输入合并开始的节点" size="22"required />
		<input name="name" type="text" placeholder="输入你想要和谁合并" size="22"required />
		<!--  <input name="ID" type="text" placeholder="输入用户名" size="22"required />	-->	
		<input type="submit" value="确认" />		
		</form>
		
		
	 <input type="submit" value="返回" onclick="javascript :history.back(-1);">

</body>
</html>