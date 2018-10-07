<%--
  User: Starry
  Date: 2018/9/26
  Time: 20:57
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="giveContent.jsp">我要写文件</a>
<a href="lookContent.jsp">我要读文件</a>
<form action="readContent.jsp" method="post" name="form">
    输入文件的路径（如： d:/100）:<input type="text" name="fileDir">
    <br>输入文件的名字（如：Hello.java）:<input type="text" name="fileName">
    <br><input type="submit" value="读取">
</form>
</body>
</html>
