<%@ page import="java.text.NumberFormat" %><%--
  User: Starry
  Date: 2018/9/20
  Time: 18:50
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="computer" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h3>计算三角形的面积：</h3>
    <form action="" method="get" name="form">
        <table>
            <tr><td>输入a的值：</td><td>
                <input type="text" name="a">
            </td></tr>
            <tr><td>输入b的值：</td><td>
                <input type="text" name="b">
            </td></tr>
            <tr><td>输入c的值：</td><td>
                <input type="text" name="c">
            </td></tr>
        </table>
        <input type="submit" value="提交" name="submit">
    </form>
    <%
        String a = request.getParameter("a");
        String b = request.getParameter("b");
        String c = request.getParameter("c");
        if(a != null && b != null && c != null) {
            %><computer:lianxiGetArea numberA="<%=a%>" numberB="<%=b%>" numberC="<%=c%>" />
    <%
            out.print("保留三位小数："+String.format("%.3f",area));
        }
    %>
</body>
</html>
