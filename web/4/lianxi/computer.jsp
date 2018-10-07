<%--
  User: Starry
  Date: 2018/9/24
  Time: 14:56
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");
        String str = request.getParameter("boy");
    %>
输入的字符串为:<%=str%>
<br>字符串长度为：<%=str.length()%>
</body>
</html>
