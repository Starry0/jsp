<%--
  User: Starry
  Date: 2018/10/5
  Time: 20:50
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="inquire" tagdir="/WEB-INF/tags/6" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="newResult.jsp" method="post">
        <table border="1">
            <tr><td>输入要更新的学生的学号：</td><td><input type="text" name="number"></td></tr>
            <tr><td>输入新的姓名：</td><td><input type="text" name="name"></td></tr>
            <tr><td>输入新的出生日期：</td><td><input type="text" name="birthday"></td></tr>
            <tr><td>输入新的email：</td><td><input type="text" name="email"></td></tr>
        </table>
        <input type="submit" value="提交更新">
    </form>
    <br>message表更新前的数据记录是：
    <inquire:NameCondtion name="" />
    <br><%=QueryResult%>
</body>
</html>
