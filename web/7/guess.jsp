<%--
  User: Starry
  Date: 2018/10/6
  Time: 21:27
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="tom.jiafei.GuessNumber" %>
<jsp:useBean id="guess" class="tom.jiafei.GuessNumber" scope="session" />
<%
String strGuess = response.encodeRedirectURL("guess.jsp");
String strGetNumber = response.encodeRedirectURL("getNumber.jsp");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%--<jsp:setProperty name="guess" property="guessNumber" value="guessNumber" />--%>
    <%
        int n = Integer.parseInt(request.getParameter("guessNumber"));
        System.out.println(n);
        guess.setGuessNumber(n);
    %>
这是第<jsp:getProperty name="guess" property="guessConut" />猜，
<jsp:getProperty name="guess" property="result" />。
你给出的数是<jsp:getProperty name="guess" property="guessNumber" />。
<%if(guess.isRight() == false){
%><form action="<%=strGuess%>" method="post">
        再输入你的猜测：<input type="text" name="guessNumber">
        <input type="submit" value="提交">
    </form>
    <%
}
%>
<br><a href="<%=strGetNumber%>">链接到getNumber.jsp重新玩猜数。</a>
</body>
</html>
