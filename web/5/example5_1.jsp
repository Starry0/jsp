<%@ page import="java.io.*" %><%--
  User: Starry
  Date: 2018/9/24
  Time: 15:47
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
File f1 = new File("D:\\code\\java\\jsp\\web\\5","example5_1.jsp");
File f2 = new File("jasper.sh");
%>
<br>文件<%=f1.getName()%>是可读的吗？<%=f1.canRead()%>
<br>文件<%=f1.getName()%>的长度：<%=f1.length()%>字节
<br>jasper.sh是目录吗？<%=f2.isDirectory()%>
<br><%=f1.getName()%>的父目录是：<%=f1.getParent()%>
<br><%=f2.getName()%>的绝对路径是：<%=f2.getAbsolutePath()%>
</body>
</html>
