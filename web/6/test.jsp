<%@ page import="java.sql.*" %><%--
  User: Starry
  Date: 2018/9/28
  Time: 22:05
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String condition = "select * from product";
    System.out.println(condition);
    try {
        DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
        String url = "jdbc:mysql://localhost:3306/" +"warehouse"+
                "?serverTimezone=UTC";
        Connection con = DriverManager.getConnection(url,"root","123456789");
        Statement sql = con.createStatement();
        ResultSet rs = sql.executeQuery(condition);
        while (rs.next()) {
            out.print(rs.getString(1));
            out.print(rs.getString(2));
            out.print(rs.getString(3));
            out.print(rs.getString(4));
            out.print("<br>");
        }
        con.close();
    } catch (Exception e) {
        out.print(e);
    }
%>
</body>
</html>
