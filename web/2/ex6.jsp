<%--
  User: Starry
  Date: 2018/9/7
  Time: 19:39
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--jsp注释前台不显示--%>
<!--html注释前台显示--!>
<% double x = 0.9, y = 3; %>
<p>Sin(<%=x%>)除以<%=y%>等于<%=Math.sin(x)/y%></p>
<p><%=y%>的平方是：<%=Math.pow(y,2)%></p>
<% x = 19; y = 32; %>
<p><%=x%>乘以<%=y%>等于<%=x*y%></p>
<P><%=y%>的平方根等于<%=Math.sqrt(y)%></P>
<p><%=y%>大于<%=x%>吗？ 回答：<%=y>x%></p>
</body>
</html>
