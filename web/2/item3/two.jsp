<%--
  User: Starry
  Date: 2018/9/7
  Time: 20:54
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="head.jsp"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>This is two.jsp page.</p>
<%
    String s = request.getParameter("number");
    out.print("<br>传递过来的值是"+s);
%>
<br><img src="a.jpg" width="<%=s%>" height="<%=s%>" />
</body>
</html>
