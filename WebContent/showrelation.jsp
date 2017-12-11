<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>更改关系</title>
</head>
<body>
      <form action="updaterelation" method="get">
		<h2></h2>
		<input name="name" type="text" placeholder="输入要更改用户的名字" size="22"required />
		<input name="father" type="text" placeholder="输入要更改关系中师傅的名字" size="22"required />
		<input name="son" type="text" placeholder="输入要更改关系中徒弟的名字" size="22"required />
		<input name="newfather" type="text" placeholder="输入更改后师傅的名字" size="22"required />
		<input name="newson" type="text" placeholder="输入更改后徒弟的名字" size="22"required />
				
		<input type="submit" value="确认" />		
		</form>
		
	<input type="submit" value="返回" onclick="javascript :history.back(-1);">
</body>
</html>