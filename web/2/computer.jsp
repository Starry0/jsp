<%--
  User: Starry
  Date: 2018/9/7
  Time: 19:56
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form action="" method="post" name="form">
    <input type="text" name="ok"><br>
    <input type="submit" value="送出" name="submit">
</form>

<%
    String a = request.getParameter("ok");
    if(a == null) {
        a = "1";
    }
    try {
        double number = Integer.parseInt(a);
        out.print(a+"的平方根："+Math.sqrt(number));
    } catch (NumberFormatException e) {
        out.print("<br>"+"请输入数字字符");
    }
%>