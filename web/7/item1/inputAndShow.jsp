<%--
  User: Starry
  Date: 2018/10/10
  Time: 20:06
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="tom.jiafei.Car" %>
<jsp:useBean id="car" class="tom.jiafei.Car" scope="request" />
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="" method="post">
        汽车牌号：<input type="text" name="number">
        <br>汽车名称：<input type="text" name="name">
        <br>汽车生产时间：<input type="text" name="madeTime">
        <input type="submit" value="提交">
    </form>
    <jsp:setProperty name="car" property="*" />
<table border="1">
    <tr><th>汽车牌号</th>
        <th>汽车名称</th>
        <th>汽车生产日期</th>
    </tr>
    <tr>
        <th><jsp:getProperty name="car" property="number" /></th>
        <th><jsp:getProperty name="car" property="name" /></th>
        <th><jsp:getProperty name="car" property="madeTime" /></th>
    </tr>
</table>
</body>
</html>
