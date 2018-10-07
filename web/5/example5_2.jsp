<%@ page import="java.io.File" %><%--
  User: Starry
  Date: 2018/9/24
  Time: 15:52
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    File dir = new File("D:\\code\\java\\jsp\\web\\5","Students");
%>
<br>在5下创建一个新的目录：Students,<br>成功创建了吗？
<%=dir.mkdir()%>
<br>Students是目录吗？<%=dir.isDirectory()%>
</body>
</html>
