<%--
  User: Starry
  Date: 2018/10/14
  Time: 16:28
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="userBean" class="mybean.mobiledata.Register" scope="request" />
<html>
<head>
    <%@include file="head.txt" %>
    <title>注册</title>
</head>
<body style="background-color: pink">
    <div align="center">
        <form action="/registerServlet" method="post">
            <table>
                用户名由字母、数字、下划线构成，*注释的项必须填写。
                <tr><td>*用户名称：<td><input type="text" name="logname"></td></td>
                <td>*用户密码：<td><input type="password" name="password"></td></td>
                </tr>
                <tr><td>*重复密码：<td><input type="password" name="again_password"></td></td>
                    <td>联系电话：<td><input type="text" name="phone"></td></td>
                </tr>
                <tr><td>邮寄地址：<td><input type="text" name="address"></td></td>
                    <td>真实姓名：<td><input type="text" name="realname"></td></td>
                    <td><input type="submit" value="提交"></td>
                </tr>
            </table>
        </form>
        <div align="center">
            <p>注册反馈：<jsp:getProperty name="userBean" property="backNews" /></p>
            <table border="3">
                <tr><td>会员名称：</td>
                <td><jsp:getProperty name="userBean" property="logname" /></td></tr>
                <tr><td>姓名：</td>
                    <td><jsp:getProperty name="userBean" property="realname" /></td></tr>
                <tr><td>地址：</td>
                    <td><jsp:getProperty name="userBean" property="address" /></td></tr>
                <tr><td>电话：</td>
                    <td><jsp:getProperty name="userBean" property="phone" /></td></tr>
            </table>
        </div>
    </div>
</body>
</html>
