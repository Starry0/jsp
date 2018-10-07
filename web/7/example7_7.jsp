<%--
  User: Starry
  Date: 2018/10/6
  Time: 21:05
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="tom.jiafei.ListFile" %>
<jsp:useBean id="file" class="tom.jiafei.ListFile" scope="request" />
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="" method="post">
    输入文件的扩展名：<input type="text" name="extendsName">
    <input type="submit" value="提交">
</form>
<jsp:setProperty name="file" property="*" />
当前JSP页面所在目录中，扩展名是：<jsp:getProperty name="file" property="extendsName" />的文件有:
<br><jsp:getProperty name="file" property="allFileName" />
</body>
</html>
