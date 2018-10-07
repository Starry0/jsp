<%--
  User: Starry
  Date: 2018/9/28
  Time: 17:39
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="inquire" tagdir="/WEB-INF/tags/6" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
    String database = request.getParameter("dataBaseName");
    String tableName = request.getParameter("tableName");
    String user = request.getParameter("user");
    String password = request.getParameter("password");
    %>
<inquire:QueryTag dataBaseName="<%=database%>" tableName="<%=tableName%>" user="<%=user%>" password="<%=password%>" />
在<%=biao%>表查询到记录：
<br><%=queryResult%>
</body>
</html>
