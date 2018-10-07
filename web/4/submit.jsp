<%--
  User: Starry
  Date: 2018/9/22
  Time: 21:44
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="messagePane.jsp" method="post" name="form">
        <p>输入你的名字：</p>
        <input type="text" name="peopleName">
        <br><p>输入你的留言标题：</p>
        <input type="text" name="Title">
        <br><p>输入你的留言：</p>
        <textarea name="messages" rows="10" cols="36" wrap="physical"></textarea>
        <br>
        <input type="submit" value="提交信息" name="sumbit">
    </form>
<form action="showMessage.jsp" method="post" name="form1">
    <input type="submit" value="查看留言板" name="look">
</form>
</body>
</html>
