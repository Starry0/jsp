<%--
  User: Starry
  Date: 2018/9/28
  Time: 18:24
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="inquire" tagdir="/WEB-INF/tags/6" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");
        String number = request.getParameter("number");
    %>
<inquire:NumberCondition number="<%=number%>" />
根据产品号<%=number%>查询到的记录：
<br><%=queryResultByNumber%>
</body>
</html>
