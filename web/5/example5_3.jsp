<%@ page import="java.io.File" %><%--
  User: Starry
  Date: 2018/9/24
  Time: 15:55
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        File dir = new File("D:\\code\\java\\jsp\\web\\5");
        File file[] = dir.listFiles();
    %>
<br>目录有：
<%
for(int i = 0; i < file.length; i ++) {
    if(file[i].isDirectory()) {
        out.print("<br>"+file[i].toString());
    }
}
%>
<br>文件名字：
<%
for(int i = 0; i < file.length; i ++) {
    if(file[i].isFile()) {
        out.print("<br>"+file[i].toString());
    }
}
%>
</body>
</html>
