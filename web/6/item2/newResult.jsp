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
    <%request.setCharacterEncoding("UTF-8");
        String number = request.getParameter("number");
        String name = request.getParameter("name");
        String birthday = request.getParameter("birthday");
        String email = request.getParameter("email");
    %>
    <inquire:NewRecor number="<%=number%>" email="<%=email%>" name="<%=name%>" birthday="<%=birthday%>" />
    <inquire:NameCondtion name="" />
    message表更新后的数据记录是：
    <br><%=QueryResult%>
</body>
</html>
