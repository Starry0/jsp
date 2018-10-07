<%--
  User: Starry
  Date: 2018/9/22
  Time: 19:39
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String s1 = request.getParameter("image");
        String s2 = request.getParameter("video");
    %>
<img src="<%=s1%>" width="200" height="160">图像
<embed src="<%=s2%>" width="300" height="180">视频
</body>
</html>
