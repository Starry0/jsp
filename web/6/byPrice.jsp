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
String min = request.getParameter("priceMin");
String max = request.getParameter("priceMax");
%>
<inquire:PriceCondition priceMax="<%=max%>" priceMin="<%=min%>" />
价格在<%=min%>至<%=max%>之间的记录：
<br><%=queryResultByPrice%>
</body>
</html>
