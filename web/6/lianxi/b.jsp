<%--
  User: Starry
  Date: 2018/10/5
  Time: 21:27
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="inquire" tagdir="/WEB-INF/tags/6" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="" method="post">
    <table border="1">
        <tr><td>输入新的number：</td><td><input type="text" name="number"></td></tr>
        <tr><td>输入新的名字：</td><td><input type="text" name="name"></td></tr>
        <tr><td>输入新的生产日期：</td><td><input type="text" name="madeTime"></td></tr>
        <tr><td>输入新的价格：</td><td><input type="text" name="price"></td></tr>
    </table>
    <input type="submit" value="提交">
</form>
修改前的数据：
<inquire:PrepareTag dataBaseName="warehouse" tableName="product" user="root" password="123456789" />
<br><%=queryResult%>
<%
    request.setCharacterEncoding("UTF-8");
    String number = request.getParameter("number");
    String name = request.getParameter("name");
    String madeTime = request.getParameter("madeTime");
    String price = request.getParameter("price");
    if(number != null && name != null && madeTime != null && price != null) {
        %>
    <inquire:AddRecord number="<%=number%>" name="<%=name%>" madeTime="<%=madeTime%>" price="<%=price%>" />
<inquire:PrepareTag dataBaseName="warehouse" tableName="product" user="root" password="123456789" />
    添加后的数据：<br><%=queryResult%>
<%
    }
%>
</body>
</html>
