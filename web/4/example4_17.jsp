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
    <% session.setAttribute("customer","顾客"); %>
<P>输入你的名字链接到第一百货：</P>
<form action="shop.jsp" method="post" name="form">
    <input type="text" name="boy">
    <input type="submit" value="送出" name="submit">
</form>
</body>
</html>
