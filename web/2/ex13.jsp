<%--
  User: Starry
  Date: 2018/9/7
  Time: 20:24
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<% double i = Math.random();%>
<jsp:forward page="come.jsp">
    <jsp:param name="number" value="<%=i%>" />
</jsp:forward>
</body>
</html>