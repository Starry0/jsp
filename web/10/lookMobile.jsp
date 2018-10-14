<%--
  User: Starry
  Date: 2018/10/14
  Time: 16:28
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.*" %>
<html>
<head>
    <%@include file='head.txt'%>
    <title>浏览手机</title>
</head>
<body style="background-color: cyan;">
<div align="center" style="margin-top: 30px;">
    <h2>选择某类手机分页显示这类手机</h2>
    <%
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (Exception e) {}
        Connection con;
        Statement sql;
        String url = "jdbc:mysql://localhost:3306/mobileshop" +
                "?serverTimezone=UTC&characterEncoding=UTF-8";
        ResultSet rs;
        try {
            con = DriverManager.getConnection(url,"root","123456789");
            sql = con.createStatement();
            //读取mobileClassify表，获得分类
            rs = sql.executeQuery("select * from mobileclassify");
            out.print("<form action='/queryServlet' method='post'>");
            out.print("<select name='classfiyNumber'>");
            while (rs.next()) {
                int id = rs.getInt(1);
                String mobileCategory = rs.getString(2);
                out.print("<option value="+id+">"+mobileCategory+"</option>");
            }
            out.print("</select>");
            out.print("<input type='submit' value='提交'>");
            out.print("</form>");
            con.close();
        } catch (Exception e){
            out.print(e);
        }
    %>
</div>
</body>
</html>
