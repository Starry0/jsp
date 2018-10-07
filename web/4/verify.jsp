<%--
  User: Starry
  Date: 2018/9/22
  Time: 20:08
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String str = request.getParameter("boy");
        if(str ==null) str="";
        if(str.equals("")) response.sendRedirect("example4_13.jsp");
        else{
            out.print("欢迎你来到本网页！");
            out.print(str);
        }
    %>
</body>
</html>
