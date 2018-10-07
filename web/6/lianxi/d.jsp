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
        <tr><td>输入要删除的number：</td><td><input type="text" name="number"></td></tr>
    </table>
    <input type="submit" value="提交">
</form>
修改前的数据：
<inquire:PrepareTag dataBaseName="warehouse" tableName="product" user="root" password="123456789" />
<br><%=queryResult%>
<%
    String number = request.getParameter("number");
    if(number != null) {
%>
<inquire:DelRecord number="<%=number%>" />
<inquire:PrepareTag dataBaseName="warehouse" tableName="product" user="root" password="123456789" />
添加后的数据：<br><%=queryResult%>
<%
    }
%>
</body>
</html>
