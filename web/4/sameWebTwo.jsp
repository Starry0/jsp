<%--
  User: Starry
  Date: 2018/9/22
  Time: 17:20
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String mess = request.getHeader("referer");
        if(mess ==null) {
            mess = "";
            response.setStatus(404);
        }
        if(!(mess.startsWith("http://127.0.0.1:8080/4"))) {
            response.setStatus(404);
        }
    %>
<p>欢迎访问本页面！</p>
你来自：<%=mess%>
</body>
</html>
