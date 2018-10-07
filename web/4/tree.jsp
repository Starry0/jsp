<%--
  User: Starry
  Date: 2018/9/20
  Time: 21:08
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    获取文本框提交的信息：
    <%
        request.setCharacterEncoding("UTF-8");
        String textContent = request.getParameter("boy");
    %>
    <%=textContent%>
    <br>获取按钮的名字：
    <%
        String buttonName = request.getParameter("submit");
    %>
    <%=buttonName%>
</body>
</html>
