<%--
  User: Starry
  Date: 2018/10/14
  Time: 16:29
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="loginBean" class="mybean.mobiledata.Login" scope="session" />
<%@ page import="java.sql.*" %>
<html>
<head>
    <%@include file="head.txt"%>
    <title>查询订单</title>
</head>
<body>
    <div align="center">
        <%
            if(loginBean == null) response.sendRedirect("login.jsp");
            else {
                boolean b = loginBean.getLogname() == null || loginBean.getLogname().length() == 0;
                if(b)  response.sendRedirect("login.jsp");
            }
            Connection con;
            Statement sql;
            ResultSet rs;
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
            } catch (Exception e){}
            try {
                String url = "jdbc:mysql://localhost:3306/mobileshop" +
                        "?serverTimezone=UTC&characterEncoding=UTF-8";
                con = DriverManager.getConnection(url,"root","123456789");
                sql = con.createStatement();
                String cdn = "select id, mess, sum from orderform where logname = '"+loginBean.getLogname()+"'";
                rs = sql.executeQuery(cdn);
                out.print("<table border=2>");
                out.print("<tr>");
                    out.print("<th width=100>订单号");
                    out.print("<th width=100>信息");
                    out.print("<th width=100>价格");
                out.print("</tr>");
                while (rs.next()) {
                    out.print("<tr>");
                    out.print("<td>"+rs.getString(1)+"</td>");
                    out.print("<td>"+rs.getString(2)+"</td>");
                    out.print("<td>"+rs.getString(3)+"</td>");
                    out.print("</tr>");
                }
                out.print("</table>");
            } catch (Exception e){
                out.print(e);
            }
        %>
    </div>
</body>
</html>
