<%--
  User: Starry
  Date: 2018/9/24
  Time: 15:15
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="computer" tagdir="/WEB-INF/tags/geng" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
String str = request.getParameter("number");
if(str == null || str.length() == 0) str = "*";
if(!str.equals("*")) {
    %><computer:GuessTag number="<%=str%>" />
    当前的结果:<%=result%>
<%
    if(result.startsWith("你猜对了")) {
        %><br><a href="lianxi6.jsp">重新获取随机字母！</a>
<%
    }
}
%>
<form action="" method="post" name="form">
    <input type="text" name="number">
    <input type="submit" value="提交">
</form>
</body>
</html>
