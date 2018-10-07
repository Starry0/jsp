<%--
  User: Starry
  Date: 2018/9/24
  Time: 13:42
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="computer" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h3>输入运算符、选择运算符号：</h3>
    <form action="" method="post" name="form">
        <input type="text" name="numberOne" size="6">
        <select name="operator">
            <option value="+">+</option>
            <option value="-">-</option>
            <option value="*">*</option>
            <option value="/">/</option>
        </select>
        <input type="text" name="numberTwo" size="6">
        <br><input type="submit" name="submit" value="提交你的选择">
    </form>
    <%
        String a = request.getParameter("numberOne");
        String b = request.getParameter("numberTwo");
        String op = request.getParameter("operator");
        if(a == null || b == null) {
            a = ""; b = "";
        }
        if(a.length() > 0 && b.length() > 0) {
            %><computer:Computer numberA="<%=a%>" numberB="<%=b%>" operator="<%=op%>" />
    计算结果：<%=a%> <%=op%> <%=b%> = <%=result%>
    <%
        }
    %>
</body>
</html>
