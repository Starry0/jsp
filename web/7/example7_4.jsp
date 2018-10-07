<%--
  User: Starry
  Date: 2018/10/6
  Time: 20:37
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="tom.jiafei.Circle2" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <jsp:useBean id="apple" class="tom.jiafei.Circle2" scope="page" />
    圆的半径是：<jsp:getProperty name="apple" property="radius" />
<br>圆的面积是：<jsp:getProperty name="apple" property="circleArea" />
<br>圆的周长是：<jsp:getProperty name="apple" property="circleLength" />
</body>
</html>
