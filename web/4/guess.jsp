<%--
  User: Starry
  Date: 2018/9/22
  Time: 20:32
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="guessNumber" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        System.out.println(session.getAttribute("save"));
    String str = request.getParameter("guessNumber");
    if(str == null) str = "*";
    if(str.length() == 0) str = "*";
    if(!str.equals("*")) {
        System.out.println(str);
    %>
<guessNumber:GuessTag number="<%=str%>" />
当前猜测结果：<%=message%>
<%if(message.startsWith("你猜对了")) {
    %><br><a href="example4_18.jsp">重新获得随机数</a>
    <%
}} else {
    %> <form action="" method="post" name="form">
        <input type="text" name="guessNumber">
        <input type="submit" name="submit" value="送出">
    </form>
    <%
}
%>
</body>
</html>
