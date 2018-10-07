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
    String number = request.getParameter("boy");
    if(number.length() == 0) response.sendRedirect("inputGuess.jsp");
    int guessNumber = -1;
    try {
        guessNumber = Integer.parseInt(number);
        int realNumber = ((Integer) session.getAttribute("save")).intValue();
        int n = ((Integer)session.getAttribute("count")).intValue();
        n += 1;
        session.setAttribute("count",new Integer(n));
        if(guessNumber == realNumber) {
            response.sendRedirect("success.jsp");
        } else if(guessNumber > realNumber) {
            response.sendRedirect("large.jsp");
        } else if(guessNumber < realNumber) {
            response.sendRedirect("small.jsp");
        }
    } catch (Exception e) {
        response.sendRedirect("inputGuess.jsp");
    }
%>
</body>
</html>
