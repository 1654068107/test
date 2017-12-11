<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link type="text/css" rel="stylesheet" href="css/style.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>更改</title>
</head>
<body>
     <img src="image/1.jpg" width="100%" height="100%" style="z-index:-100;position:absolute;left:0;top:0">
     <a href=update><button type="button" style="position:absolute;left:500px;top:100px" class="button red">更新学术师承树内容</button></a>
     <input type="button" onclick="window.location='showdelete.jsp'" style="position:absolute;left:500px;top:180px" class="button red rarrow" value="删除学术师承树内容">
     <input type="button" onclick="window.location='showadd.jsp'" style="position:absolute;left:500px;top:260px" class="button red rarrow" value="添加学术师承树内容">
     <input type="button" onclick="window.location='showmerge.jsp'" style="position:absolute;left:500px;top:340px" class="button red rarrow" value="合并学术师承树">
     

     <input type="submit" value="返回" onclick="javascript :history.back(-1);" style="position:absolute;left:500px;top:420px" class="button black rarrow">
</body>
</html>