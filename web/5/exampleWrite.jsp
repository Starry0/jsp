<%--
  User: Starry
  Date: 2018/9/24
  Time: 16:19
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="file" tagdir="/WEB-INF/tags/5" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="" method="post">
    输入文件的内容：
    <br><textarea name="write" ROWS="6" COLS="20"></textarea>
    <input type="submit" value="提交">
</form>
<%
    request.setCharacterEncoding("UTF-8");
String str = request.getParameter("write");
if(str == null) str = "";
%>
<file:WirteTag dir="d:/2000" fileName="hello.txt" content="<%=str%>" />
<a href="exampleRead.jsp">查看写入的内容</a>
</body>
</html>
