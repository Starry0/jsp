<%--
  User: Starry
  Date: 2018/9/26
  Time: 21:36
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="file" tagdir="/WEB-INF/tags/5" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");
        String str = request.getParameter("ok");
        if(str.length() > 0) {
            %><file:SecretWrite content="<%=str%>"/>
    <%
            out.print("<br>"+message);
        }
    %>
<a href="read.jsp">读取文件</a>
</body>
</html>
