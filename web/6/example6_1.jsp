<%@ page import="java.sql.*" %><%--
  User: Starry
  Date: 2018/9/27
  Time: 21:14
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        Connection con;
        Statement sql;
        ResultSet rs;
        try {
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
            String url = "jdbc:mysql://localhost:3306/warehouse?useUnicode=true&characterEncoding=UTF-8&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
            String user = "root";
            String password = "123456789";
            con = DriverManager.getConnection(url,user,password);
            sql = con.createStatement();
            rs = sql.executeQuery("select * from product");
            out.print("<table border=2>");
            out.print("<tr>");
                out.print("<td width=100>"+"产品号");
                out.print("<td width=100>"+"名称");
                out.print("<td width=50>"+"生产日期");
                out.print("<td width=50>"+"价格");
            out.print("</tr>");
            while (rs.next()) {
                out.print("<tr>");
                out.print("<td width=100>"+rs.getString(1)+"</td>");
                out.print("<td width=100>"+rs.getString(2)+"</td>");
                out.print("<td width=100>"+rs.getDate("madeTime")+"</td>");
                out.print("<td width=50>"+rs.getFloat("price")+"</td>");
                out.print("</tr>");
            }
            out.print("</table>");
            con.close();
        } catch (Exception e) {
            out.print(e);
        }
    %>
</body>
</html>
