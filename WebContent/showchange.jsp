<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>更改</title>
</head>
<body>
     <a href=update><button type="button">更新学术师承树内容</button></a>
     <input type="button" onclick="window.location='showdelete.jsp'" value="删除学术师承树内容">
     <input type="button" onclick="window.location='showadd.jsp'" value="添加学术师承树内容">
     <input type="button" onclick="window.location='showmerge.jsp'" value="合并学术师承树">
     

     <input type="submit" value="返回" onclick="javascript :history.back(-1);">
</body>
</html>