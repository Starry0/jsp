<%--
  User: Starry
  Date: 2018/10/13
  Time: 13:43
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="/helpReadRecord" method="post">
        数据库的名字：<br><input type="text" name="databaseName">
        <br>表的名字：<br><input type="text" name="tableName">
        <br>每页显示记录数：
        <input type="text" value="2" name="pageSize" size="6">
        <input type="submit" value="提交">
    </form>
</body>
</html>
