<%--
  User: Starry
  Date: 2018/9/22
  Time: 19:23
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        long sum = 0;
        String s1 = request.getParameter("sum");
        String s2 = request.getParameter("n");
        if(s2.equals("")) s2 = "0";
        int n = Integer.parseInt(s2);
        if(s1.equals("1")) {
            for(int i = 1; i <= n; i ++) sum += i;
        } else if(s1.equals("2")) {
            for(int i = 1; i <= n; i++) sum += i * i;
        } else if(s1.equals("3")) {
            for(int i = 1; i <= n; i ++) sum += i*i*i;
        }
    %>
<p>你的求和结果是:<%=sum%></p>
</body>
</html>
