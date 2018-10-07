<%--
  User: Starry
  Date: 2018/9/28
  Time: 22:38
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="inquire" tagdir="/WEB-INF/tags/6" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <inquire:PrepareTag dataBaseName="warehouse" tableName="product" user="root" password="123456789" />
    在<%=biao%>表查询到记录：
    <br><%=queryResult%>
</body>
</html>
