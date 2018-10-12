<%--
  User: Starry
  Date: 2018/10/12
  Time: 21:53
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="/lookArea" method="post">
        三角形：<br>
        输入边A:<input type="text" name="a" size="4">
        输入边B:<input type="text" name="b" size="4">
        输入边C:<input type="text" name="c" size="4">
        <input type="submit" value="提交">
    </form>
    <form action="/lookArea" method="get">
        梯形：<br>
        输入上底:<input type="text" name="a" size="4">
        输入下底:<input type="text" name="b" size="4">
        输入高:<input type="text" name="c" size="4">
        <input type="submit" value="提交">
    </form>
</body>
</html>
