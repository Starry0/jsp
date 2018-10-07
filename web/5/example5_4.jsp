<%@ page import="java.io.FilenameFilter" %>
<%@ page import="java.io.File" %><%--
  User: Starry
  Date: 2018/9/24
  Time: 15:58
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    class FileJSP implements FilenameFilter{
        String str = null;
        FileJSP(String s) {
            str = "."+s;
        }

        public boolean accept(File dir, String name) {
            return name.endsWith(str);
        }
    }
%>
<br>5目录中的jsp文件：
<%
File dir = new File("D:\\code\\java\\jsp\\web\\5");
FileJSP file_jsp = new FileJSP("jsp");
String file_name[] = dir.list(file_jsp);
for(int i = 0; i < file_name.length; i ++) {
    out.print("<br>"+file_name[i]);
}
%>
</body>
</html>
