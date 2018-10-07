<%--
  User: Starry
  Date: 2018/9/22
  Time: 20:01
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>现在的时间是：<br></p>
<%
    out.println(""+new Date());
    response.setHeader("Refresh","5");
%>
</body>
</html>
