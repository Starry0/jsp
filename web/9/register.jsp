<%--
  User: Starry
  Date: 2018/10/12
  Time: 22:05
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="mybean.data.Register" %>
<jsp:useBean id="userBean" class="mybean.data.Register" scope="request" />
<html>
<head>
    <title>注册页面</title>
</head>
<body>
<div align="center">
    <form action="/helpRegister" method="post">
        <table>
            用户名由字母、数字、下划线构成，*注释的项必须填写。
            <tr><td>*用户名称：</td><td><input type="text" name="logname"></td>
            <td>*用户密码：</td><td><input type="password" name="password"></td>
            </tr>
            <tr><td>*重复密码：</td><td><input type="password" name="again_password"></td>
            <td>email:</td><td><input type="text" name="email"></td>
            </tr>
            <tr><td><input type="submit" value="提交"></td></tr>
        </table>
    </form>
    <div align="center">
        <p>注册反馈：<jsp:getProperty name="userBean" property="backNews" /></p>
        <table border="3">
            <tr><td>会员名称：</td><td><jsp:getProperty name="userBean" property="logname" /></td></tr>
            <tr><td>email地址：</td><td><jsp:getProperty name="userBean" property="email"/></td></tr>
        </table>
    </div>
</div>
</body>
</html>
