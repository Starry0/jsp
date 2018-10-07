<%--
  User: Starry
  Date: 2018/9/7
  Time: 18:55
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%!
        int count = 0;
        synchronized void setCount() {
            count ++;
        }
    %>
    <%
        setCount();
        out.print("你是第"+count+"个访问本站的用户。");
    %>
</body>
</html>
