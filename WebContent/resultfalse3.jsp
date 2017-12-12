<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.awt.*,
   java.awt.image.*,
   javax.swing.*,
   com.sun.image.codec.jpeg.*,
   javax.imageio.*,
   java.awt.*,
   java.awt.event.*,
   javax.swing.JButton,
   javax.swing.JFrame,
   javax.swing.JPanel,
   javax.swing.border.EmptyBorder,
   show.EchartsController,
   database.connect"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>没老师没学生</title>
</head>
<body>
     <h1>用户所创建的树</h1>
	<table width="50%" border="1" align="center">
		<tr bgcolor="#949494">
			<th>老师</th>
			<th>学生</th>
			<th>时间（年份）</th>
			<th>时间（月份）</th>
			<th>时间（日期）</th>

		</tr>

		<%
			ArrayList<Map<String, String>> list1 = (ArrayList<Map<String, String>>) session.getAttribute("list1");
			if (list1.size() > 0) {
				for (int i = 0; i < list1.size(); ++i) {
					
					out.println("<tr align=\"center\" ><td>" + "<a href =" + list1.get(i).get("netf") + ">" + list1.get(i).get("father") + "</td>\n");
					
					out.println("<td>" + "<a href =" + list1.get(i).get("nets") + ">" + list1.get(i).get("son") + "</td>\n");
					out.println("<td>" + list1.get(i).get("year") + "</td>\n");
					out.println("<td>" + list1.get(i).get("month") + "</td>\n");
					out.println("<td>" + list1.get(i).get("day") + "</td>\n");
					            
				}
			} else {
				out.print("<tr><td>" + "false" + "</td></tr>\n");
			}
		%>

	</table>
	
	<br />
</body>
</html>