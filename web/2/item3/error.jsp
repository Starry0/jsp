<%--
  User: Starry
  Date: 2018/9/7
  Time: 20:54
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="head.jsp"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>This is error.jsp page.</p>
<%
    String s = request.getParameter("mess");
    out.print("<br>传递过来的错误信息"+s);
%>
<br><img src="c.jpg" width="120" height="120" />
</body>
</html>

