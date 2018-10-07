<%--
  User: Starry
  Date: 2018/9/7
  Time: 21:42
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>大写英文字母表:</p>
<%
    char A = 'A';
    for(int i = A; i < A+26; i ++) {
        out.print(" "+ (char)i);
    }
%>
</body>
</html>
