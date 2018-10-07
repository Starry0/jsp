<%--
  User: Starry
  Date: 2018/9/22
  Time: 19:48
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <p>我正在学习response对象的</p>
    <br>setContentType方法
    <p>将当前页面保存为word文档吗？</p>
    <form action="" method="get" name="form">
        <input type="submit" value="yes" name="submit">
    </form>
<%
    String str = request.getParameter("submit");
    if(str == null) str = "";
    if(str.equals("yes")) response.setContentType("application/msword;charset=UTF-8");
%>
</body>
</html>
