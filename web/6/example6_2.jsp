<%--
  User: Starry
  Date: 2018/9/28
  Time: 17:36
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="inquire.jsp" method="post">
        输入数据库名：<input type="text" name="dataBaseName" size="8">
        输入表的名字：<input type="text" name="tableName" size="8">
        <br>输入用户名：<input type="text" name="user" size="6">(默认是root)
        输入密码：<input type="text" name="password" size="6">(默认是空)
        <br><input type="submit" name="g" value="提交">
    </form>
</body>
</html>
