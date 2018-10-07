<%--
  User: Starry
  Date: 2018/10/5
  Time: 22:10
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="tom.jiafei.*" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <jsp:useBean id="girl" class="tom.jiafei.Circle" scope="session" />
<p>圈的半径是：</p>
<%= girl.getRadus()%>
<a href="bean2.jsp"><br>bean2.jsp</a>
</body>
</html>
