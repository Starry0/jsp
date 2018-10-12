<%--
  User: Starry
  Date: 2018/10/12
  Time: 20:11
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <% String message = (String)session.getAttribute("message");
    %>
<table border="1">
    <form action="/handleGuess" method="post">
    <tr><td>输入你的猜测：</td>
    <td><input type="text" name="clientGuess" size="4">
    <input type="submit" value="提交"></td>
    </tr><td>提示信息：</td><td><%=message%></td>
    </form>
    <form action="example8_6.jsp" method="post">
        <tr><td>单击按钮重新开始：</td>
        <td><input type="submit" value="随机得到一个1至100之间的数字"></td></tr>
    </form>
</table>

</body>
</html>
