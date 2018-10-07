<%--
  User: Starry
  Date: 2018/9/24
  Time: 13:56
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        try {
            String number = request.getParameter("number");
            double num = Double.parseDouble(number);
            if(num < 0) {
                response.setContentType("text/plain;charset=UTF-8");
                out.print(num+"的平方："+(num*num));
            }else if(num < 100) {
                response.setContentType("application/msword;charset=UTF-8");
                out.print(number+"的立方:"+(num*num*num));
            } else if(num >= 100) {
                response.setStatus(404);
            }
        } catch (Exception e) {
            response.sendRedirect("input.jsp");
        }
    %>
</body>
</html>
