<%@ tag import="java.sql.*" %>
<%@ tag pageEncoding="UTF-8" %>
<%@ attribute name="number" required="true" %>
<%@ attribute name="name" required="true" %>
<%@ attribute name="madeTime" required="true" %>
<%@ attribute name="price" required="true" %>
<%
    float p = Float.parseFloat(price);
    try {
        DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
        String url = "jdbc:mysql://localhost:3306/" +"warehouse"+
                "?serverTimezone=UTC&characterEncoding=UTF-8";
        Connection con = DriverManager.getConnection(url,"root","123456789");
        String insertCondition = "insert into product values (?,?,?,?)";
        PreparedStatement pre = con.prepareStatement(insertCondition);
        pre.setString(1,number);
        pre.setString(2,name);
        pre.setString(3,madeTime);
        pre.setString(4,price);
        int m = pre.executeUpdate();
        if(m != 0) {
            out.println("对表中插入"+m+"条记录成功");
        }
    } catch (Exception e) {
        out.print(e);
    }
%>