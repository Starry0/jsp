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
<form action="" method="post" name="form">
    读取文件：<input type="radio" name="R" value="secret">读取加密的文件
    <input type="radio" name="R" value="unsecret">读取解密的文件
    <input type="submit" value="提交" name="submit">
</form>
<%
String condition =request.getParameter("R");
if(condition != null) {
    %><file:SecretRead method="<%=condition%>"/>
    <TEXTAREA rows="6" cols="20"><%=content%></TEXTAREA>
<%
}
%>
</body>
</html>
