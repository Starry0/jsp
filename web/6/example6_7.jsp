<%--
  User: Starry
  Date: 2018/9/28
  Time: 21:07
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
            <tr>
                <td>输入要更新的产品的产品号：</td>
                <td><input type="text" name="number"></td>
            </tr>
            <tr>
                <td>输入新的名称：</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>输入新的生产日期：</td>
                <td><input type="text" name="madeTime"></td>
            </tr>
            <tr>
                <td>输入新的价格：</td>
                <td><input type="text" name="price"></td>
            </tr>
        </table>
        <input type="submit" name="b" value="提交更新">
    </form>
    <br>product表更新前的数据记录是：
    <inquire:QueryTag dataBaseName="warehouse" tableName="product" user="root" password="123456789" />
    <br><%=queryResult%>
</body>
</html>
