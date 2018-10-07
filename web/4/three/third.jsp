<%--
  User: Starry
  Date: 2018/9/22
  Time: 20:13
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
我是third.jsp页面
<%
    String id = session.getId();
    out.print("你的session对象的ID是：<br>"+id);
%>
<br>单击超链接，链接到firt.jsp的页面。
<br><a href="../first.jsp">欢迎去third.jsp页面</a>
</body>
</html>
