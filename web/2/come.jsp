<%--
  User: Starry
  Date: 2018/9/7
  Time: 20:24
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String str = request.getParameter("number");
        double n = Double.parseDouble(str);
    %>
<p>你传过来的数值是：</p>
<%=n%>
</body>
</html>
