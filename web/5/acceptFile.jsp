<%--
  User: Starry
  Date: 2018/9/26
  Time: 20:08
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="upload" tagdir="/WEB-INF/tags/5" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <upload:UpFile subdir="5/image" />
<%=message%><%=fileName%>
<br><%=fileName%>
<br><img src="image/<%=fileName%>" width="160" height="100"/>
</body>
</html>
