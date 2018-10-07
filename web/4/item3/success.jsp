<%--
  User: Starry
  Date: 2018/9/24
  Time: 14:30
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        int count = ((Integer)session.getAttribute("count")).intValue();
        int n = ((Integer)session.getAttribute("save")).intValue();
    %>
    <p>恭喜你，猜对了。</p>
    <br>你共猜了<%=count%>次，这个数字就是<%=n%>。
    <br>单击超链接返回到InputGuess.jsp页面：
    <br><a href="inputGuess.jsp">inputGuess.jsp</a>
</body>
</html>
