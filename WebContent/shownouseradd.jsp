<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/mycss.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加管理员</title>
</head>
<body>
    <img src="image/1.jpg" width="100%" height="100%" style="z-index:-100;position:absolute;left:0;top:0">
     <form action="nouseradd" method="get">
        <input name="ID" type="text" style="position:absolute; left:450px; top:180px; font-family:courier; font-size: 30px; font-weight: bold; border:5px solid red width:50px; height:30px;" placeholder="输入你要添加的用户的账号" size="22"required />
		<input name="name" type="text" style="position:absolute; left:450px; top:220px; font-family:courier; font-size: 30px; font-weight: bold; border:5px solid red width:50px; height:30px;" placeholder="输入你要添加的用户的昵称" size="22"required />
		<input name="password" type="text" style="position:absolute; left:450px; top:260px; font-family:courier; font-size: 30px; font-weight: bold; border:5px solid red width:50px; height:30px;" placeholder="输入你要添加的用户的密码" size="22"required />		
		<input type="submit" style="position:absolute;left:500px;top:300px" class="button black rarrow" value="确认" />		
	</form>
	
   <input type="submit" value="返回" onclick="javascript :history.back(-1);" style="position:absolute;left:700px;top:300px" class="button black rarrow">
</body>
</html>