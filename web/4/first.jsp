<%--
  User: Starry
  Date: 2018/9/22
  Time: 20:12
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
我是first.jsp页面，输入你的姓名链接到second.jsp
<%
    String id = session.getId();
    out.print("<br>你的session对象的ID是：<br>"+id);
%>
<form action="two/second.jsp" method="post" name="form">
    <input type="text" name="boy">
    <input type="submit" value="送出" name="submit">
</form>
</body>
</html>
