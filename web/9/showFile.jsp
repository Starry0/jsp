<%--
  User: Starry
  Date: 2018/10/13
  Time: 16:08
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="mybean.data.FileMessage" %>
<jsp:useBean id="file" type="mybean.data.FileMessage" scope="request" />
<html>
<head>
    <title>Title</title>
</head>
<body>
文件的位置:<jsp:getProperty name="file" property="filePath"/>,
文件的名字:<jsp:getProperty name="file" property="fileName"/>,
文件的长度:<jsp:getProperty name="file" property="fileLength"/>,
<br>文件的内容：
<br><textarea rows="6" cols="60">
    <jsp:getProperty name="file" property="fileContent" />
</textarea>
</body>
</html>
