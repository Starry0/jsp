<%@ page import="java.io.File" %><%--
  User: Starry
  Date: 2018/9/24
  Time: 16:05
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    File f = new File("D:\\code\\java\\jsp\\web\\5","dele.txt");
    File dir = new File("D:\\code\\java\\jsp\\web\\5","Students");
    boolean b1 = f.delete();
    boolean b2 = dir.delete();
%>
<p>文件<%=f.getName()%>成功删除了吗？<%=b1%></p>
<p>目录<%=dir.getName()%>成功删除了吗？<%=b2%></p>
</body>
</html>
