<%--
  User: Starry
  Date: 2018/9/27
  Time: 18:36
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="file" tagdir="/WEB-INF/tags/5" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String dir = request.getParameter("dir");
        String fileName = request.getParameter("fileName");
    %>
<file:Read fileDir="<%=dir%>" fileName="<%=fileName%>" />
</body>
</html>
