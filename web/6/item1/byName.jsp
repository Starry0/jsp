<%--
  User: Starry
  Date: 2018/10/5
  Time: 20:28
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="look" tagdir="/WEB-INF/tags/6" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");%>
    <look:NameCondtion name="<%=name%>" />
    姓名含有<%=name%>的记录：
    <br><%=QueryResult%>
</body>
</html>
