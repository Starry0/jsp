<%--
  User: Starry
  Date: 2018/10/8
  Time: 16:08
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="tom.jiafei.UpFile" %>
<jsp:useBean id="upFIle" class="tom.jiafei.UpFile" scope="session" />
<html>
<head>
    <title>Title</title>
</head>
<body>
    <br>选择要上传的文件：<br>
    <form action="" method="post" ENCTYPE="multipart/form-data">
        <input type="file" name="boy" size="30">
        <br><input type="submit" name="g" value="提交">
    </form>
<%
        upFIle.setRequest(request);
        upFIle.setSession(session);
%>
<jsp:getProperty name="upFIle" property="upFileMessage" />
<br><img src=image/<jsp:getProperty name="upFIle" property="showImage"/>  width="80" height="80"/>
</body>
</html>
