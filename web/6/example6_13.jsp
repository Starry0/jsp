<%@ page import="java.sql.*" %><%--
  User: Starry
  Date: 2018/9/29
  Time: 8:27
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="inquire" tagdir="/WEB-INF/tags/6" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <br>转账前user表的记录是：
    <inquire:QueryTag dataBaseName="bank" tableName="account" user="root" password="123456789" />
    <br><%=queryResult%>
<%
    Connection con = null;
    try {
        int n = 50;
        DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
        String url = "jdbc:mysql://localhost:3306/" +"bank"+
                "?serverTimezone=UTC&characterEncoding=UTF-8";
        con = DriverManager.getConnection(url,"root","123456789");
        con.setAutoCommit(false);
        Statement sql = con.createStatement();
        ResultSet rs = sql.executeQuery("select * from account where name = 'geng'");
        rs.next();
        double gengMoney = rs.getDouble("userMoney");
//        System.out.println(gengMoney);
        gengMoney -= n;
        if(gengMoney >= 0) {
            rs = sql.executeQuery("select * from account where name = 'zhang'");
            rs.next();
            double zhangMoney = rs.getDouble("userMoney");
            zhangMoney += n;
            sql.executeUpdate("update account set userMoney = "+gengMoney+" where name = 'geng'");
            sql.executeUpdate("update account set userMoney = "+zhangMoney+" where name = 'zhang'");
            con.commit();
        }
        con.close();
    } catch (Exception e) {
        try {
            con.rollback();
        } catch (Exception ee) {}
        out.print(e);
    }
%>
<br>转账后user表的记录是：
<inquire:PrepareTag dataBaseName="bank" tableName="account" user="root" password="123456789" />
<br><%=queryResult%>
</body>
</html>
