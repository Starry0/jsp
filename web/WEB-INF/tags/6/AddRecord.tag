<%@ tag import="java.sql.*" %>
<%@ tag pageEncoding="UTF-8" %>
<%@ attribute name="number" required="true" %>
<%@ attribute name="name" required="true" %>
<%@ attribute name="madeTime" required="true" %>
<%@ attribute name="price" required="true" %>

<%
    float p = Float.parseFloat(price);
    String condition = "insert into product values " + "('"+number+"','"+name+"','"+madeTime+"','"+p+"')";
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