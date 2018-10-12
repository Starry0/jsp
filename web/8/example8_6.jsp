<%--
  User: Starry
  Date: 2018/10/12
  Time: 17:41
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        session.setAttribute("message","请你猜数字");
        int randomNumber = (int)(Math.random()*100)+1;
        session.setAttribute("savedNumber",new Integer(randomNumber));
    %>
访问或刷新该页面可以随机得到一个1至100之间的数。
<br>单击超链接去猜出这个数：<a href="inputNumber.jsp">去猜这个数</a>
</body>
</html>
