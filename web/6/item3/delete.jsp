<%--
  User: Starry
  Date: 2018/10/5
  Time: 21:09
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="dele" tagdir="/WEB-INF/tags/6" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
    String number = request.getParameter("number");
    %>
<dele:DeleRecord number="<%=number%>"/>
message表删除记录后的记录是：
<dele:NameCondtion name="" />
<br><%=QueryResult%>
</body>
</html>
