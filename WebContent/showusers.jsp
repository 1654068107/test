<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.io.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>显示用户</title>
</head>
<body>
     <h1>已注册用户</h1>
	<table width="50%" border="1" align="center">
		<tr bgcolor="#949494">
			<th>账号</th>
			<th>昵称</th>
			<th>密码</th>
			<th>网址</th>

		</tr>

		<%
			ArrayList<Map<String, String>> list1 = (ArrayList<Map<String, String>>) session.getAttribute("list1");
			if (list1.size() > 0) {
				for (int i = 0; i < list1.size(); ++i) {
					out.println("<tr align=\"center\" ><td>" + list1.get(i).get("ID") + "</td>\n");
					out.println("<td>" + list1.get(i).get("name") + "</td>\n");
					out.println("<td>" + list1.get(i).get("password") + "</td>\n");
					out.println("<td>" + list1.get(i).get("net") + "</td>\n");
					            
				}
			} else {
				out.print("<tr><td>" + "false" + "</td></tr>\n");
			}
		%>

	</table>
	
	<br />
	

     <input type="submit" value="返回" onclick="javascript :history.back(-1);">
</body>
</html>