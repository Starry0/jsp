<%--
  User: Starry
  Date: 2018/9/28
  Time: 21:46
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="inquire" tagdir="/WEB-INF/tags/6" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="delete.jsp" method="post">
        删除记录：<br>输入被删除的记录的产品号：
        <input type="text" name="number">
        <input type="submit" name="b" value="提交">
    </form>
    <br>product表删除记录前的记录是：
    <inquire:QueryTag dataBaseName="warehouse" tableName="product" user="root" password="123456789" />
    <br><%=queryResult%>
</body>
</html>
