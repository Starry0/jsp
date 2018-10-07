<%--
  User: Starry
  Date: 2018/9/28
  Time: 18:01
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="inquire" tagdir="/WEB-INF/tags/6" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
    String dName = request.getParameter("databaseName");
    String tName = request.getParameter("tableName");
    String id = request.getParameter("user");
    String secret = request.getParameter("password");
    String n = request.getParameter("count");
    %>
<inquire:RandomQurty databaseName="<%=dName%>" tableName="<%=tName%>" user="<%=id%>" count="<%=n%>" password="<%=secret%>" />
在<%=biao%>表随机查询到<%=randomCount%>条记录：
<br><%=quertResult%>
</body>
</html>
