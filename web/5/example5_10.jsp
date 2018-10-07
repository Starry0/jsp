<%--
  User: Starry
  Date: 2018/9/26
  Time: 20:07
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="ok" tagdir="/WEB-INF/tags/5" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>选择要上传的文件：</p>
<form action="acceptFile.jsp" method="post" ENCTYPE="multipart/form-data">
    <input type="file" name="boy" size="45">
    <br><input type="submit" name="g" value="提交">
</form>
</body>
</html>
