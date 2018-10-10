<%--
  User: Starry
  Date: 2018/10/10
  Time: 20:39
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="tom.jiafei.lianxi7" %>
<jsp:useBean id="triangle" class="tom.jiafei.lianxi7" scope="session" />
<jsp:setProperty name="triangle" property="*" />
<html>
<head>
    <title>Title</title>
</head>
<body>
边1：<jsp:getProperty name="triangle" property="numberA" />
<br>边2：<jsp:getProperty name="triangle" property="numberB" />
<br>面积是：<jsp:getProperty name="triangle" property="area" />
</body>
</html>
