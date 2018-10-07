<%--
  User: Starry
  Date: 2018/10/5
  Time: 22:05
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="tom.jiafei.*" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <jsp:useBean id="girl" class="tom.jiafei.Circle" scope="page" />
<%
    girl.setRadus(100);
%>
圆的半径是：<%=girl.getRadus()%>
<br>圆的周长是：<%=girl.circleLength()%>
<br>圆的面积是：<%=girl.circleArea()%>
</body>
</html>
