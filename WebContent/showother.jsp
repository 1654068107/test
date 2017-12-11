<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>更新他人</title>
</head>
<body>
     <img src="image/1.jpg" width="100%" height="100%" style="z-index:-100;position:absolute;left:0;top:0"> 
   <div class="demo_con">
    <input type="button" onclick="window.location='showtime.jsp'" style="position:absolute;left:500px;top:90px" class="button red larrow" value="更改师生关系产生时间">
     <input type="button" onclick="window.location='showname.jsp'" style="position:absolute;left:500px;top:170px" class="button red rarrow" value="更改节点名称">
     <input type="button" onclick="window.location='showrelation.jsp'" style="position:absolute;left:500px;top:250px" class="button red rarrow" value="更改错误关系">      
     <input type="button" onclick="window.location='showadd.jsp'" style="position:absolute;left:500px;top:330px" class="button red rarrow" value="添加学术师承树内容">    
     

     <input type="submit" value="返回" onclick="javascript :history.back(-1);" style="position:absolute;left:500px;top:410px" class="button black larrow">
</div>
</body>
</html>