<%--
  User: Starry
  Date: 2018/10/6
  Time: 20:42
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="tom.jiafei.Student" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="zhang" class="tom.jiafei.Student" scope="page" />
<jsp:setProperty name="zhang" property="name" value="张小三" />
名字是：<jsp:getProperty name="zhang" property="name" />
<jsp:setProperty name="zhang" property="number" value="1999001" />
<br>学号是：<jsp:getProperty name="zhang" property="number" />
<jsp:setProperty name="zhang" property="height" value="1.78" />
<br>身高是：<jsp:getProperty name="zhang" property="height"/>
<jsp:setProperty name="zhang" property="weight" value="67.65" />
<br>体重是：<jsp:getProperty name="zhang" property="weight"/>公斤

</body>
</html>
