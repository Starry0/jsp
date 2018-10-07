<%--
  User: Starry
  Date: 2018/10/5
  Time: 21:20
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="look" tagdir="/WEB-INF/tags/6" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="" method="post">
        输入数据库：<input type="text" name="dataBase">
        <br>输入表名：<input type="text" name="tableName">
        <br><input type="submit" value="查询">
    </form>
<%
    String dataBase = request.getParameter("dataBase");
    String tableName = request.getParameter("tableName");
    if(dataBase != null && tableName != null) {
        %>
    <look:GetRecord dataBase="<%=dataBase%>" tableName="<%=tableName%>" />
    查询后的结果是：<br><%=queryResult%>
    <%
    }
%>

</body>
</html>
