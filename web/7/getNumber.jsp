<%--
  User: Starry
  Date: 2018/10/6
  Time: 21:23
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="tom.jiafei.GuessNumber" %>
<jsp:useBean id="guess" class="tom.jiafei.GuessNumber" scope="session" />
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
int n = (int)(Math.random()*100)+1;
String str = response.encodeRedirectURL("guess.jsp");
%>
<jsp:setProperty name="guess" property="answer" value="<%=n%>" />
随机给你一个1到100之间的数，请猜猜这个数是多少？
<form action="<%=str%>" method="post">
    请输入你的猜测：<input type="text" name="guessNumber">
    <input type="submit" value="提交">
</form>
</body>
</html>
