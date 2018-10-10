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
    <table border="1">
        <tr><th>汽车牌号</th>
            <th>汽车名称</th>
            <th>汽车生产日期</th>
        </tr>
        <tr>
            <td><jsp:getProperty name="car" property="number" /></td>
            <td><jsp:getProperty name="car" property="name" /></td>
            <td><jsp:getProperty name="car" property="madeTime" /></td>
        </tr>
    </table>
</body>
</html>
