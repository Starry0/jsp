<%--
  User: Starry
  Date: 2018/10/12
  Time: 22:35
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="mybean.data.Login" %>
<jsp:useBean id="loginBean" class="mybean.data.Login" scope="session" />
<html>
<head>
    <title>Title</title>
</head>
<body>
    <div align="center">
        <table border="2">
            <tr><th>登录：</th></tr>
            <form action="/helpLogin" method="post">
                <tr><td>登录名称：<input type="text" name="logname"></td></tr>
                <tr><td>登录密码：<input type="password" name="password"></td></tr>
                <tr><input type="submit" value="提交"></tr>
            </form>
        </table>

    </div>
<div align="center">
    登录反馈信息：<br>
    <jsp:getProperty name="loginBean" property="backNews" />
    <br>登录名称：<br><jsp:getProperty name="loginBean" property="logname" />
</div>
</body>
</html>
