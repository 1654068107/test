<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>更新他人</title>
</head>
<body>
      <textarea rows="10" cols="30" id="cont">请输入学术师承树名称</textarea>
     
      <a href=updatetime><button type="button">更改师承树节点时间</button></a>
     <a href=updatename><button type="button">更改师承树节点名称</button></a>
     <a href=updaterelation><button type="button">更改错误关系</button></a>
      <a href=add><button type="button">添加师承树节点</button></a>
     

     <input type="submit" value="返回" onclick="javascript :history.back(-1);">
</body>
</html>