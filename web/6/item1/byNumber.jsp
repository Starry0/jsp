<%--
  User: Starry
  Date: 2018/10/5
  Time: 20:28
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="look" tagdir="/WEB-INF/tags/6" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%String number = request.getParameter("number");%>
    <look:NumberCodtion number="<%=number%>" />
    根据学号<%=number%>查询到的记录：
    <br><%=QueryResult%>
</body>
</html>
