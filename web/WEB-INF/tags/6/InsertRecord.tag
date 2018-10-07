<%@ tag import="java.sql.*" %>
<%@ tag import="java.util.Calendar" %>
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
        Statement sql = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
        ResultSet rs = sql.executeQuery("SELECT * from product");
        rs.moveToInsertRow();
        rs.updateString(1,number);
        rs.updateString(2,name);
        String[] str = madeTime.split("[-/]");
        int year = Integer.parseInt(str[0]);
        int month = Integer.parseInt(str[1]);
        int day = Integer.parseInt(str[2]);
        Calendar calendar = Calendar.getInstance();
        calendar.set(year,month-1,day); //差了一个月
        System.out.println(calendar.toString());
        java.sql.Date date = new java.sql.Date(calendar.getTimeInMillis());
        rs.updateDate(3,date);
        rs.updateDouble(4,p);
        rs.insertRow();
        con.close();
    } catch (Exception e) {
        out.print(e);
    }
%>