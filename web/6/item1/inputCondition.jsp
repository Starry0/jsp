<%--
  User: Starry
  Date: 2018/10/5
  Time: 20:28
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="byNumber.jsp" method="post">
        根据学号查询：
        <br>输入学号:<input type="text" name="number">
        <input type="submit" name="submit" value="提交">
    </form>
    <form action="byName.jsp" method="post">
        根据姓名（模糊）查询：
        <br>输入学号:<input type="text" name="name">
        <input type="submit" name="submit" value="提交">
    </form>
</body>
</html>
