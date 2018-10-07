<%--
  User: Starry
  Date: 2018/9/26
  Time: 21:36
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="file" tagdir="/WEB-INF/tags/5" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="write.jsp" method="post" name="form">
        输入文件的内容：
        <br><textarea name="ok" rows="8" cols="26"></textarea>
        <br><input type="submit" value="加密内容写入到文件">
    </form>
<a href="read.jsp">读取文件</a>
</body>
</html>
