<%--
  User: Starry
  Date: 2018/9/28
  Time: 22:50
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="ok" tagdir="/WEB-INF/tags/6" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");
        String number = request.getParameter("number");
        String name = request.getParameter("name");
        String madeTime = request.getParameter("madeTime");
        String price = request.getParameter("price");
    %>
    <ok:PrepareInser number="<%=number%>" name="<%=name%>" madeTime="<%=madeTime%>" price="<%=price%>" />
<br>product表添加新记录后的记录是：
<ok:PrepareTag dataBaseName="warehouse" tableName="product" user="root" password="123456789" />
<br><%=queryResult%>
</body>
</html>
