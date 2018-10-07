<%@ tag pageEncoding="UTF-8" %>
<%@ tag import="java.sql.*" %>
<%@ attribute name="number" required="true" %>

<%
    String condition = "DELETE FROM product where number = '"+number+"'";
    System.out.println(condition);
    try {
        DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
        String url = "jdbc:mysql://localhost:3306/" +"warehouse"+
                "?serverTimezone=UTC&characterEncoding=UTF-8";
        Connection con = DriverManager.getConnection(url,"root","123456789");
        Statement sql = con.createStatement();
        sql.executeUpdate(condition);
        con.close();
    } catch (Exception e) {
        out.print(e);
    }
%>