<%@ tag pageEncoding="UTF-8" %>
<%@ tag import="java.sql.*" %>
<%@ attribute name="number" required="true" %>
<%@ attribute name="name" required="true" %>
<%@ attribute name="madeTime" required="true" %>
<%@ attribute name="price" required="true" %>

<%
    float p = Float.parseFloat(price);
    String condition1 = "update product set name = '"+name+"' where number = '"+number+"' ";
    String condition2 = "update product set madeTime = '"+madeTime+"' where number = '"+number+"' ";
    String condition3 = "update product set price = '"+price+"' where number = '"+number+"' ";
    try {
        DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
        String url = "jdbc:mysql://localhost:3306/" +"warehouse"+
                "?serverTimezone=UTC&characterEncoding=UTF-8";
        Connection con = DriverManager.getConnection(url,"root","123456789");
        Statement sql = con.createStatement();
        sql.executeUpdate(condition1);
        sql.executeUpdate(condition2);
        sql.executeUpdate(condition3);
        con.close();
    } catch (Exception e) {
        out.print(""+e);
    }
%>