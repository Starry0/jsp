<%--
  User: Starry
  Date: 2018/10/13
  Time: 16:22
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="/lookSum" method="post">
        等差数列求和：<br>
        输入首项：<input type="text" name="firstItem" size="4">
        输入公差：<input type="text" name="var" size="4">
        求和项数：<input type="text" name="number" size="4">
        <input type="submit" value="提交">
    </form>
    <form action="/lookSum" method="get">
        等比数列求和：<br>
        输入首项：<input type="text" name="firstItem" size="4">
        输入公比：<input type="text" name="var" size="4">
        求和项数：<input type="text" name="number" size="4">
        <input type="submit" value="提交">
    </form>
</body>
</html>
