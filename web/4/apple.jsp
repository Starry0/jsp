<%--
  User: Starry
  Date: 2018/9/20
  Time: 22:18
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");
        String textContent = request.getParameter("boy");
    %>
<%=textContent%>
<br>按钮的名字：
<%
    String buttonName = request.getParameter("submit");
%>
<%=buttonName%>
</body>
</html>
