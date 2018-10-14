<%--
  User: Starry
  Date: 2018/10/13
  Time: 16:08
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="/helpReadFile" method="post">
        输入文件的路径（如：d:/2000）:
        <input type="text" name="filePath" size="12">
        <br>输入文件的名字（如：Hello.java）:
        <input type="text" name="fileName" size="9">
        <br><input type="submit" value="读取">
    </form>
</body>
</html>
