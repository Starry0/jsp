<%--
  User: Starry
  Date: 2018/9/28
  Time: 21:07
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="inquire" tagdir="/WEB-INF/tags/6" %>
<%@ taglib prefix="renew" tagdir="/WEB-INF/tags/6" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");
        String nu = request.getParameter("number");
        String na = request.getParameter("name");
        String mT = request.getParameter("madeTime");
        String pr = request.getParameter("price");
    %>
    <renew:NewRecord number="<%=nu%>" name="<%=na%>" madeTime="<%=mT%>" price="<%=pr%>" />
    <br>product 表更新后的数据记录是：
    <inquire:QueryTag dataBaseName="warehouse" tableName="product" user="root" password="123456789" />
    <br><%=queryResult%>
</body>
</html>
