<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link type="text/css" rel="stylesheet" href="css/mycss.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>更改关系</title>
</head>
<body>
      <img src="image/1.jpg" width="100%" height="100%" style="z-index:-100;position:absolute;left:0;top:0">
      <form action="updaterelation" method="get">
		<h2></h2>
		<input name="name" type="text" style="position:absolute; left:450px; top:160px; font-family:courier; font-size: 30px; font-weight: bold; border:5px solid red width:50px; height:30px;" placeholder="输入要更改用户的名字" size="22"required />
		<input name="father" type="text" style="position:absolute; left:450px; top:210px; font-family:courier; font-size: 30px; font-weight: bold; border:5px solid red width:50px; height:30px;" placeholder="输入要更改关系中师傅的名字" size="22"required />
		<input name="son" type="text" style="position:absolute; left:450px; top:260px; font-family:courier; font-size: 30px; font-weight: bold; border:5px solid red width:50px; height:30px;" placeholder="输入要更改关系中徒弟的名字" size="22"required />
		<input name="newfather" type="text" style="position:absolute; left:450px; top:310px; font-family:courier; font-size: 30px; font-weight: bold; border:5px solid red width:50px; height:30px;" placeholder="输入更改后师傅的名字" size="22"required />
		<input name="newson" type="text" style="position:absolute; left:450px; top:360px; font-family:courier; font-size: 30px; font-weight: bold; border:5px solid red width:50px; height:30px;" placeholder="输入更改后徒弟的名字" size="22"required />
				
		<input type="submit" style="position:absolute;left:500px;top:410px" class="button black rarrow" value="确认" />		
		</form>
		
	<input type="submit" style="position:absolute;left:650px;top:410px" class="button black rarrow" value="返回" onclick="javascript :history.back(-1);">
</body>
</html>