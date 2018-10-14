<%--
  User: Starry
  Date: 2018/10/14
  Time: 19:43
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="mybean.mobiledata.Login" %>
<%@page import="java.sql.*" %>
<%@ page import="javax.swing.plaf.nimbus.State" %>
<jsp:useBean id="loginBean" class="mybean.mobiledata.Login" scope="session" />
<html>
<head>
    <%@include file="head.txt"%>
    <title>查看详细</title>
</head>
<body style="background-color: #99FFCC">
<div align="center">
    <%
        if(loginBean == null) response.sendRedirect("login.jsp");
        else {
            boolean b = loginBean.getLogname() == null || loginBean.getLogname().length() == 0;
            if(b) response.sendRedirect("login.jsp");
        }
        String mobileID = request.getParameter("xijie");
        out.print("<th>产品号"+mobileID);
        if(mobileID == null) {
            out.print("每页产品号，无法查看细节");
            return;
        }
        Connection con;
        Statement sql;
        ResultSet rs;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (Exception e){}
        String url = "jdbc:mysql://localhost:3306/mobileshop" +
                "?serverTimezone=UTC&characterEncoding=UTF-8";
        try {
            con = DriverManager.getConnection(url,"root","123456789");
            sql = con.createStatement();
            String cdn = "select * from mobileform where mobile_version = '"+mobileID+"'";
            rs = sql.executeQuery(cdn);
            out.print("<table border=2>");
            out.print("<tr><td>产品号<td>名称<td>制造商<td>价格<td><p style=\"color: blue\">添加到购物车</p></td>\n</tr>");
            String picture = "welcome.jpg";
            String detailMess = "";
            while (rs.next()) {
                String number = rs.getString(1);
                String name = rs.getString(2);
                String maker = rs.getString(3);
                String price = rs.getString(4);
                detailMess  = rs.getString(5);
                picture = rs.getString(6);
                String goods = "("+number+","+name+","+maker+","+price+")#"+price;
                goods = goods.replaceAll("\\p{Blank}","");
                String button = "<form action='/putGoodsServlet' method='post'>" +
                        "<input type='hidden' name='java' value="+goods+">" +
                        "<input type='submit' value='放入购物车'></form>";
                out.print("<tr><td>"+number+"</td><td>"+name+"</td><td>"+maker+"</td><td>"+price+"</td><td>"+button+"</td><tr>");
            }
            out.print("</table>");
            out.print("</table>");
            out.print("产品详情：<br>");
            out.print("<div align='center'>"+detailMess+"</div>");
            String pic = "<img src='image/"+picture+"' width=260 height=200></img>";
            out.print(pic);
            con.close();
        } catch (Exception e){}
    %>
</div>
</body>
</html>
