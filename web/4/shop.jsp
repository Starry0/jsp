<%--
  User: Starry
  Date: 2018/9/22
  Time: 18:29
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");
        String s = request.getParameter("boy");
        session.setAttribute("name",s);
    %>
这里是第一百货，<br>输入你想购买的商品链接到结账：account.jsp
<form action="account.jsp" method="post" name="form">
    <input type="text" name="buy">
    <input type="submit" name="submit" value="送出">
</form>
</body>
</html>
