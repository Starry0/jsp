<%--
  User: Starry
  Date: 2018/9/22
  Time: 20:22
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<% String str = response.encodeURL("../jiafei.jsp"); %>
我是jerry.jsp页面
<%
    String id = session.getId();
    out.print("你的session对象的ID是：<br>"+id);
%>
<br>单击超链接，链接到jiafei.jsp的页面。
<br><a href="<%=str%>">欢迎去jiafei.jsp页面！</a>
</body>
</html>
