<%--
  User: Starry
  Date: 2018/10/13
  Time: 12:40
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="mybean.data.Login" %>
<jsp:useBean id="loginBean" class="mybean.data.Login" scope="session" />
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <table>
        <td><a href="register.jsp">用户注册</a></td>
        <td><a href="login.jsp">用户登录</a></td>
    </table>
<%
    if(loginBean == null) {
        response.sendRedirect("9/login.jsp");
    } else {
        boolean b = loginBean.getLogname() == null || loginBean.getLogname().length() == 0;
        if(b) {
            response.sendRedirect("login.jsp");
        } else {
            out.print("欢迎："+loginBean.getLogname());
        }
    }
%>
<img src="image/a.jpg" width="200" height="200">
</body>
</html>
