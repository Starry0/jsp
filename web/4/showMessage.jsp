<%@ page import="java.util.Vector" %><%--
  User: Starry
  Date: 2018/9/22
  Time: 21:44
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        Vector<String> v = (Vector)application.getAttribute("Mess");
        out.println("<table border=2>");
        out.print("<tr>");
            out.print("<td bagcolor=cyan>"+"留言者姓名"+"</td>");
            out.print("<td bagcolor=cyan>"+"留言标题"+"</td>");
            out.print("<td bagcolor=cyan>"+"留言时间"+"</td>");
            out.print("<td bagcolor=cyan>"+"留言内容"+"</td>");
        for(int i = 0; i < v.size(); i ++) {
            out.print("<tr>");
            String message = v.elementAt(i);
            String a[] = message.split("#");
            int number = a.length-1;
            for(int k = 0; k < a.length; k ++) {
                if(k < number) out.print("<td bgcolor=cyan>"+a[k]+"</td>");
                else out.print("<td><TextArea row=3 cols=12>"+a[k]+"</TextArea></td>");
            }
            out.print("</tr>");
        }
        out.print("</table>");
    %>
<a href="submit.jsp">返回留言板</a>
</body>
</html>
