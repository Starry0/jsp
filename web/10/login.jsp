<%--
  User: Starry
  Date: 2018/10/14
  Time: 16:28
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="loginBean" class="mybean.mobiledata.Login" scope="session"/>
<html>
<head>
    <%@include file="head.txt"%>
    <title>登录</title>
</head>
<body style="background-color: pink">
<div align="center" style="margin-top: 40px;">
    <form action="/loginServlet" method="post">
        <table border="2">
            <tr><td>登录</td></tr>
            <tr><td>登录名称：<input type="text" name="logname"></td></tr>
            <tr><td>登录密码：<input type="password" name="password"></td></tr>
        </table>
        <input type="submit" value="提交">
    </form>
</div>
<div align="center">
    登录反馈信息：<br>
    <jsp:getProperty name="loginBean" property="backNews" />
    <br>登录名称：<jsp:getProperty name="loginBean" property="logname"/>
</div>
</body>
</html>
