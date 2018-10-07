<%--
  User: Starry
  Date: 2018/9/28
  Time: 18:00
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="inquire" tagdir="/WEB-INF/tags/6" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="random.jsp" method="post">
        输入数据库名：<input type="text" name="databaseName" size="6">
        <br>输入表的名字：<input type="text" name="tableName" size="15">
        <br>输入用户名：<input type="text" name="user" size="6">（默认是root）
        <br>输入密码：<input type="password" name="password" size="3">(默认是空)
        <br>输入查询的记录数：<input type="text" name="count" value="3">
        <br><input type="submit" value="提交" name="g">
    </form>
</body>
</html>
