<%@ page language="java"
 pageEncoding="GB2312"
 contentType="text/html; charset=GB2312"
 import="java.awt.*,
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
   show.EchartsController"
%>

<html>
<head>
<title>ÎÒµÄÍ¼»­</title>
</head>
<body>
<%
EchartsController y=new EchartsController();
y.togetlist("users");
%>
</body>
</html>