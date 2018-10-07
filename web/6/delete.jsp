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
    <%
        request.setCharacterEncoding("UTF-8");
        String number = request.getParameter("number");
        if(number == null) number = "";
    %>
    <inquire:DelRecord number="<%=number%>" />
    <br>product表删除记录后的记录是：
    <inquire:QueryTag dataBaseName="warehouse" tableName="product" user="root" password="123456789" />
    <br><%=queryResult%>
</body>
</html>
