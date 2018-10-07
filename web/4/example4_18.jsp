<%--
  User: Starry
  Date: 2018/9/22
  Time: 20:30
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
随机分给了你一个1到100之间的数，请猜！
<%
int num = (int)(Math.random()*100)+1;
session.setAttribute("count",new Integer(0));
session.setAttribute("save",new Integer(num));
%>
<br><a href="guess.jsp">去猜测这个数</a>
</body>
</html>
