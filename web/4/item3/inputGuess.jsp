<%--
  User: Starry
  Date: 2018/9/24
  Time: 14:30
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        int number = (int)(Math.random()*100)+1;
        session.setAttribute("count",new Integer(0));
        session.setAttribute("save",new Integer(number));
    %>
<form action="result.jsp" method="post" name="form">
    输入你的猜测：<input type="text" name="boy">
    <input type="submit" name="submit" value="提交">
</form>
</body>
</html>
