<%--
  User: Starry
  Date: 2018/9/24
  Time: 15:07
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
随机分给你了一个a-z之间的字符，请猜！
<%
    int num = (int)(Math.random()*26);
    char ch = (char)('a'+num);
    session.setAttribute("count",new Integer(0));
    session.setAttribute("save",ch);
    System.out.println(ch);
%>
<br><a href="guess.jsp">去猜这个数字</a>
</body>
</html>
