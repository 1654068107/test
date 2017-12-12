<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
     <h1>已注册用户</h1>
	<table width="50%" border="1" align="center">
		<tr bgcolor="#949494">
			<th>账号</th>
			<th>密码</th>

		</tr>

		<%
				for (int i = 0; i < 2; ++i) {
					out.println("<tr align=\"center\" ><td>" + "<a href = \"https://www.linkedin.com/in/%E9%82%B5%E7%94%9C-%E6%9D%8E-844745155/\">" + "miao" + "</td>\n");
					out.println("<td>" + "a" + "</td>\n");            
				}
			
		%>

	</table>
     
     
</body>
</html>