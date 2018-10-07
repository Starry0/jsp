<%--
  User: Starry
  Date: 2018/9/20
  Time: 21:40
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="" method="post" name="form">
    <input type="text" name="gril">
    <input type="submit" value="Enter" name="submit">
</form>
<%
    String textContent = request.getParameter("gril");
    double number = 0, r = 0;
    if(textContent == null) textContent ="";
    try {
        number = Double.parseDouble(textContent);
        if(number >= 0) {
            r = Math.sqrt(number);
            out.print("<br>"+number+"的平方根:");
            out.print("<br>"+r);
        } else {
            out.print("<br>"+"请输入一个正数");
        }
    }catch (Exception e) {
        out.print("<br>"+"请输入数字字符");
    }
%>
</body>
</html>
