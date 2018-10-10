<%--
  User: Starry
  Date: 2018/10/10
  Time: 20:21
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="tom.jiafei.MessBoard" %>
<jsp:useBean id="board" class="tom.jiafei.MessBoard" scope="application" />
<html>
<head>
    <title>Title</title>
</head>
<body>
    <jsp:getProperty name="board" property="allMessage" />
<a href="inputMess.jsp">我要留言</a>
</body>
</html>
