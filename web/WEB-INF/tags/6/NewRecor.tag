<%@ tag pageEncoding="UTF-8" %>
<%@ tag import="java.sql.*" %>
<%@ attribute name="number" required="true" %>
<%@ attribute name="name" required="true" %>
<%@ attribute name="birthday" required="true" %>
<%@ attribute name="email" required="true" %>

<%
    String condition1 = "update message set name = '"+name+"' where number = '"+number+"'";
    String condition2 = "update message set birthday = '"+birthday+"' where number = '"+number+"'";
    String condition3 = "update message set email = '"+email+"' where number = '"+number+"'";
//    System.out.println(condition2);
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
    } catch (Exception e){}
    try {
        String url = "jdbc:mysql://localhost:3306/" +"Student"+
                "?serverTimezone=UTC&characterEncoding=UTF-8";
        Connection con = DriverManager.getConnection(url,"root","123456789");
        Statement sql = con.createStatement();
        sql.executeUpdate(condition1);
        sql.executeUpdate(condition2);
        sql.executeUpdate(condition3);
        con.close();
    } catch (Exception e) {
        out.print(e);
    }
%>