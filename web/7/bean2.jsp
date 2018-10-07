<%--
  User: Starry
  Date: 2018/10/5
  Time: 22:12
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="tom.jiafei.*" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <jsp:useBean id="girl" class="tom.jiafei.Circle" scope="session" />
<p>圆的半径是：</p>
<%=girl.getRadus()%>
<% girl.setRadus(600);%>
<p>修改后的圆的半径是：</p>
<%=girl.getRadus()%>
    <a href="bean1.jsp"><br>bean1.jsp</a>
</body>
</html>
