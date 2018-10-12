<%--
  User: Starry
  Date: 2018/10/12
  Time: 20:28
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>选择一个文件：</p>
<form action="/helpRead" method="post">
    <select name="fileName">
        <option value="D:/1000/A.java">A.java</option>
        <option value="D:/1000/Hello.java">Hello.java</option>
        <option value="D:/1000/E.java">E.java</option>
    </select>
    <input type="submit" value="提交">
</form>
</body>
</html>
