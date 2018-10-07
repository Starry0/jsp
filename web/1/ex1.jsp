<%--
  User: Starry
  Date: 2018/9/7
  Time: 18:10
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <p>这是一个简单的jsp页面</p>
    <%
        int i, sum = 0;
        for(i = 1; i <= 100; i ++) sum += i;
    %>
    <p>1到100的连续和是:<%= sum%></p>
</body>
</html>
