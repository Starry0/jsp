<%--
  User: Starry
  Date: 2018/10/6
  Time: 20:52
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="tom.jiafei.StudentTwo" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="zhang" class="tom.jiafei.StudentTwo" scope="page"/>
<form action="" method="post">
    输入姓名：<input type="text" name="name">
    <br>输入学号：<input type="text" name="number">
    <br>输入身高：<input type="text" name="height">
    <br>输入体重：<input type="text" name="weight">
    <input type="submit" value="提交">
</form>
<jsp:setProperty name="zhang" property="name" param="name" />
<jsp:setProperty name="zhang" property="number" param="number" />
<jsp:setProperty name="zhang" property="height" param="height" />
<jsp:setProperty name="zhang" property="weight" param="weight" />

姓名是：<jsp:getProperty name="zhang" property="name" />
<br>学号是：<jsp:getProperty name="zhang" property="number" />
<br>身高是：<jsp:getProperty name="zhang" property="height" />
<br>体重是：<jsp:getProperty name="zhang" property="weight" />

</body>
</html>
