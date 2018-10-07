<%@ tag import="java.sql.*" %>
<%@ tag pageEncoding="UTF-8" %>
<%@ attribute name="number" required="true" %>


<%
String condition = "delete from message where number = '"+number+"'";
System.out.println(condition);
try {
    Class.forName("com.mysql.cj.jdbc.Driver");
} catch (Exception e) {}
try {
    String url = "jdbc:mysql://localhost:3306/" +"Student"+
            "?serverTimezone=UTC&characterEncoding=UTF-8";
    Connection con = DriverManager.getConnection(url,"root","123456789");
    Statement sql = con.createStatement();
    sql.executeUpdate(condition);
    con.close();
} catch (Exception e) {
    out.print(e);
}
%>