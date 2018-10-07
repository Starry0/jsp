<%--
  User: Starry
  Date: 2018/9/24
  Time: 16:19
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="file" tagdir="/WEB-INF/tags/5" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<file:ReadTag dir="d:/2000" fileName="hello.txt" />
从文件中读取的内容：
<br><textarea name="read" cols="20" rows="6"><%=result%></textarea>
</body>
</html>
