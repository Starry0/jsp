<%--
  User: Starry
  Date: 2018/10/10
  Time: 22:51
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="/show" method="post">
        输入字符串，提交给servlet(Post方式)：
        <br><input type="text" name="str">
        <input type="submit" value="提交">
    </form>
    <form action="/show" method="get">
        输入字符串，提交给servlet(Get方式)：
        <br><input type="text" name="str">
        <input type="submit" value="提交">
    </form>
</body>
</html>
