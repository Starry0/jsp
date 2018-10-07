<%--
  User: Starry
  Date: 2018/9/7
  Time: 18:37
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date" %>
<%!
    Date date;
    public int getFactorSum(int n) {
        int sum = 0;
        for(int i = 1; i < n; i ++) {
            if(n%i == 0) sum += i;
        }
        return sum;
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <p>程序片创建Date对象：</p>
    <%
        date = new Date();
        out.print("<br>"+date+"<br>");
        int m = 100;
    %>
    <%= m%> 的因子之和（不包括<%= m%>）: <%= getFactorSum(m)%>
</body>
</html>
