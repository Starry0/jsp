<%--
  User: Starry
  Date: 2018/10/6
  Time: 21:13
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="tom.jiafei.Triangle" %>
<jsp:useBean id="triangle" scope="page" class="tom.jiafei.Triangle" />
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="" method="post">
    <p>输入三角形的边A:<input type="text" name="sideA" value="0"></p>
    <p>输入三角形的边B:<input type="text" name="sideB" value="0"></p>
    <p>输入三角形的边C:<input type="text" name="sideC" value="0"></p>
    <input type="submit" value="提交">
</form>
<p>你给出三角形的三边是：</p>
<jsp:setProperty name="triangle" property="*" />
<br>边A是：<jsp:getProperty name="triangle" property="sideA" />
<br>边B是：<jsp:getProperty name="triangle" property="sideB" />
<br>边C是：<jsp:getProperty name="triangle" property="sideC" />
<p>这三个边能构成一个三角形吗？<jsp:getProperty name="triangle" property="triangle" /></p>
<p>面积是：<jsp:getProperty name="triangle" property="area" /></p>
</body>
</html>
