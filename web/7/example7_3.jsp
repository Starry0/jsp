<%--
  User: Starry
  Date: 2018/10/6
  Time: 20:31
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="tom.jiafei.*" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="girl" class="tom.jiafei.Circle" scope="application" />
    圆的半径是：<%=girl.getRadus()%>
<%girl.setRadus(1000);%>
<br>修改后圆的半径是：<%=girl.getRadus()%>
</body>
</html>
