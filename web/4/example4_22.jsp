<%--
  User: Starry
  Date: 2018/9/22
  Time: 21:34
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
int a = 100; long b = 300; boolean c = true;
out.println("<h1>这是标题1字体的大小</h1>");
out.println("<h2>这是标题2字体的大小</h2>");
out.println("<br>");
out.println(a);out.println(b);out.println(c);
%>
<center>
    <p><font size="2">以下是一个表格</font></p>
    <%
    out.println("<font face=隶书 size=2>");
    out.println("<table Border>");
    out.println("<tr>");
        out.println("<th width=80>"+"姓名"+"</th>");
        out.println("<th width=80>"+"性别"+"</th>");
        out.println("<th width=80>"+"出生如期"+"</th>");
    out.println("</tr>");
        out.println("<tr>");
        out.println("<th>"+"刘甲一"+"</th>");
        out.println("<th>"+"男"+"</th>");
        out.println("<th>"+"1978年5月"+"</th>");
        out.println("</tr>");
    out.println("<tr>");
        out.println("<th>"+"林霞"+"</th>");
        out.println("<th>"+"女"+"</th>");
        out.println("<th>"+"1979年8月"+"</th>");
    out.println("</tr>");
    %>
</center>
</body>
</html>
