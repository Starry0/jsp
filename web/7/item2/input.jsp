<%--
  User: Starry
  Date: 2018/10/10
  Time: 20:16
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="tom.jiafei.Car" %>
<jsp:useBean id="car" class="tom.jiafei.Car" scope="session" />
<html>
<head>
    <title>Title</title>
</head>
<body>
    <font size="2">
        <form action="" method="post">
            汽车牌号：<input type="text" name="number">
            <br>汽车名称：<input type="text" name="name">
            <br>汽车生产日期：<input type="text" name="madeTime">
            <input type="submit" value="提交">
        </form>
        <jsp:setProperty name="car" property="*" />
        <a href="show.jsp">访问show.jsp，查看有关信息。</a>
    </font>
</body>
</html>
