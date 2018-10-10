<%--
  User: Starry
  Date: 2018/10/10
  Time: 15:17
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="tom.jiafei.QueryBean" %>
<jsp:useBean id="base" class="tom.jiafei.QueryBean" scope="page" />
<html>
<head>
    <title>Title</title>
</head>
<body>
    <jsp:setProperty name="base" property="databaseName" value="book" />
    <jsp:setProperty name="base" property="tableName" value="booklist" />
    <jsp:setProperty name="base" property="user" value="root" />
    <jsp:setProperty name="base" property="password" value="123456789" />
在<jsp:getProperty name="base" property="tableName" />表查询到记录：
<br><jsp:getProperty name="base" property="queryResult" />
</body>
</html>
