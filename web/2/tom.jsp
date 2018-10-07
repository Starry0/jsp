<%--
  User: Starry
  Date: 2018/9/7
  Time: 20:22
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String str = request.getParameter("computer");
        int n = Integer.parseInt(str);
        int sum = 0;
        for(int i = 1; i <= n; i ++) sum += i;
    %>
<p>从1到<%=n%>的连续和是:<%=sum%></p>
</body>
</html>
