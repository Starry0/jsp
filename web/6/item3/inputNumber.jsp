<%--
  User: Starry
  Date: 2018/10/5
  Time: 21:09
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="inquire" tagdir="/WEB-INF/tags/6" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="delete.jsp" method="post">
    删除记录：
    <br>输入被输出的记录的学号：<input type="text" name="number">
    <input type="submit" value="提交">

    <br>message表删除记录前的记录是：
<inquire:NameCondtion name="" />
<br><%=QueryResult%>
</form>
</body>
</html>
