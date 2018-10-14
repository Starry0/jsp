<%--
  User: Starry
  Date: 2018/10/14
  Time: 21:54
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="head.txt"%>
    <title>查询手机</title>
</head>
<body>
<div align="center">
    <br>查询时可以输入手机的版本号或手机名称及价格。<br>
    手机名称支持模糊查询。
    <br>输入价格是在两个值之间的价格，格式是：价格1-价格2<br>
    例如3987-8976
    <form action="/searchByConditionServlet" method="post">
        <br>输入查询详细：<input type="text" name="searchMess"><br>
        <input type="radio" name="radio" value="mobile_version"> 手机版本号
        <input type="radio" name="radio" value="mobile_name"> 手机名称
        <input type="radio" name="radio" value="mobile_price"> 手机价格
        <br><input type="submit" value="提交">
    </form>
</div>
</body>
</html>
