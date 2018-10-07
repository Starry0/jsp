<%--
  User: Starry
  Date: 2018/9/14
  Time: 18:07
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.text.*" %>
<%@ taglib prefix="computer" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body bgcolor="#00ffff">
    <computer:GiveRoot coefficientA="3" coefficientB="6" coefficientC="-2" />
    <h4>方程的根保留3位小数点，并计算两个根的和：</h4>
    <%
        NumberFormat f = NumberFormat.getInstance();
        f.setMaximumFractionDigits(3);
        if(rootOne != null && rootTwo != null) {
            double r1 = rootOne.doubleValue();
            double r2 = rootTwo.doubleValue();
            String s1 = f.format(r1);
            String s2 = f.format(r2);
            out.print("<br>根1："+s1);
            out.print("<br>根2："+s2);
            double sum = r1 + r2;
            out.print("<br>根1和根2之和："+sum);
        } else {
            out.print("<br>方程式没有实根");
        }
    %>
</body>
</html>
