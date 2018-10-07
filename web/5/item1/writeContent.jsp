<%--
  User: Starry
  Date: 2018/9/26
  Time: 20:57
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="file" tagdir="/WEB-INF/tags/5" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
String fileDir = request.getParameter("fileDir");
String fileName = request.getParameter("fileName");
String fileContent = request.getParameter("fileContent");
byte c[] = fileContent.getBytes("iso-8859-1");
fileContent = new String(c);
%>
<file:Write fileContent="<%=fileContent%>" fileDir="<%=fileDir%>" fileName="<%=fileName%>" />
</body>
</html>
