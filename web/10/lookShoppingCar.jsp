<%--
  User: Starry
  Date: 2018/10/14
  Time: 16:29
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="mybean.mobiledata.Login" %>
<%@page import="java.util.*" %>
<jsp:useBean id="loginBean" class="mybean.mobiledata.Login" scope="session" />
<html>
<head>
    <%@include file="head.txt"%>
    <title>查看购物车</title>
</head>
<body style="background-color: yellow">
<div align="center">
    <%
        if(loginBean == null) response.sendRedirect("login.jsp");
        else {
            boolean b = loginBean.getLogname() == null || loginBean.getLogname().length() == 0;
            if(b) response.sendRedirect("login.jsp");
        }
        LinkedList car = loginBean.getCar();
        if(car == null) out.print("<h2>购物车没有物品.</h2>");
        else{
            Iterator<String> iterator = car.iterator();
            StringBuffer buyGoods = new StringBuffer();
            int n = 0;
            double priceSum = 0;
            out.print("购物车中的物品：<table border=2>");
            while (iterator.hasNext()) {
                String goods = iterator.next();
                String showGods = "";
                n ++;
                int index = goods.lastIndexOf("#");
                if(index != -1) {
                    priceSum += Double.parseDouble(goods.substring(index+1));
                    showGods = goods.substring(0,index);
                }
                buyGoods.append(n+":"+showGods);
                String del = "<form action='/deleteServlet' method='post'>" +
                        "<input type='hidden' name='delete' value="+goods+">" +
                        "<input type='submit' value='删除'></form>";
                out.print("<tr><td>"+showGods+"</td>");
                out.print("<td>"+del+"</td></tr>");
            }
            out.print("</table>");
            String orderForm = "<form action='/buyServlet' method='post'>" +
                    "<input type='hidden' name='buy' value="+buyGoods+">" +
                    "<input type='hidden' name='price' value="+priceSum+">" +
                    "<input type='submit' value='生成订单'></form>";
            out.print(orderForm);
        }
    %>
</div>
</body>
</html>
