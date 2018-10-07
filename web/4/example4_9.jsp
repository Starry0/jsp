<%--
  User: Starry
  Date: 2018/9/22
  Time: 19:36
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="show.jsp" method="post" name="form">
        <br>选择一副图像：<select name="image">
        <option value="a.jpg">a.jpg</option>
        <option value="b.jpeg">b.jpeg</option>
    </select>
        <br>选择视频或音乐：
        <select name="video">
            <option value="">111</option>
            <option value="">222</option>
            <option value="">333</option>
        </select>
        <br><input type="submit" value="提交你的选择" name="submit">
    </form>
</body>
</html>
