<%--
  User: Starry
  Date: 2018/9/20
  Time: 16:47
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="computer" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body bgcolor="#00ffff">
    输入的三个数值a,b,c（代表三角形的三边或梯形的上底、下底和高）：
    <form action="" method="get" name="form">
        <table>
            <tr><td>输入数值a:</td>
            <td><input type="text" name="a"></td>
            </tr>
            <tr><td>输入数值b:</td>
                <td><input type="text" name="b"></td>
            </tr>
            <tr><td>输入数值c:</td>
                <td><input type="text" name="c"></td>
            </tr>
        </table>
        <input type="radio" name="R" value="triangle">代表三角形
        <input type="radio" name="R" value="lader">代表梯形
        <br><input type="submit" value="提交" name="submit">
    </form>
<%
    String a = request.getParameter("a");
    String b = request.getParameter("b");
    String c = request.getParameter("c");
    String cd = request.getParameter("R");
    if(a == null || b == null || c == null) {
        a = "0";
        b = "0";
        c = "0";
        cd = "0";
    }
    if(a.length() > 0 && b.length() > 0 && c.length() > 0) {
        %> <computer:GetArea numberA="<%=a%>" numberB="<%=b%>" numberC="<%=c%>" condition="<%=cd%>" />
        <br><%=message%>
        <br><%=area%>
    <%
    }
%>
</body>
</html>
