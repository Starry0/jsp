<%--
  User: Starry
  Date: 2018/10/12
  Time: 21:53
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="mybean.data.Area" %>
<jsp:useBean id="data" type="mybean.data.Area" scope="request" />
<html>
<head>
    <title>Title</title>
</head>
<body>
    <jsp:getProperty name="data" property="mess"/>
    <jsp:getProperty name="data" property="area" />
</body>
</html>
