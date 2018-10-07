<%--
  User: Starry
  Date: 2018/9/28
  Time: 22:15
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="inquire" tagdir="/WEB-INF/tags/6" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="newRecord.jsp" method="post">
        添加新记录：
        <table border="1">
            <tr>
                <td>产品号：</td>
                <td><input type="text" name="number"></td>
            </tr>
            <tr>
                <td>名称：</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>生产日期(****-**-**):</td>
                <td><input type="text" name="madeTime"></td>
            </tr>
            <tr>
                <td>价格：</td>
                <td><input type="text" name="price"></td>
            </tr>
        </table>
        <input type="submit" name="b" value="提交">
        <br>product表添加新记录前的记录是：
        <inquire:QueryTag dataBaseName="warehouse" tableName="product" user="root" password="123456789" />
        <br><%=queryResult%>
    </form>
</body>
</html>
