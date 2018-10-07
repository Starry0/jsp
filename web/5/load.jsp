<%--
  User: Starry
  Date: 2018/9/26
  Time: 20:42
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="download" tagdir="/WEB-INF/tags/5" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%String path = request.getParameter("finePath");%>
    <download:LoadFile filePath="<%=path%>" />
</body>
</html>
