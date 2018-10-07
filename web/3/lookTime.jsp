<%--
  User: Starry
  Date: 2018/9/14
  Time: 18:00
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.text.*" %>
<%@ taglib prefix="showTime" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body bgcolor="#00ffff">
    <showTime:GiveTag />
    <h3>当前时间：</h3>
    <%= time%>
</body>
</html>
