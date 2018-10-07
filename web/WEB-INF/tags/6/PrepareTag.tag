<%@ tag pageEncoding="UTF-8" %>
<%@ tag import="java.sql.*" %>
<%@ attribute name="dataBaseName" required="true" %>
<%@ attribute name="tableName" required="true" %>
<%@ attribute name="user" required="true" %>
<%@ attribute name="password" required="true" %>
<%@ variable name-given="biao" scope="AT_END" %>
<%@ variable name-given="queryResult" scope="AT_END" %>

<%
    StringBuffer result = new StringBuffer();
    try {
        result.append("<table border=1>");
        DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
        String url = "jdbc:mysql://localhost:3306/" +dataBaseName+
                "?serverTimezone=UTC&characterEncoding=UTF-8";
        Connection con = DriverManager.getConnection(url,user,password);
        DatabaseMetaData metaData = con.getMetaData();
        ResultSet rs1 = metaData.getColumns(null,null,tableName,null);
        int count = 0;
        result.append("<tr>");
        while (rs1.next()) {
            count ++;
            result.append("<td>"+rs1.getString(4)+"</td>");
        }
//        System.out.println(count);
        result.append("</tr>");
        PreparedStatement pre = con.prepareStatement("SELECT * FROM "+tableName);
        ResultSet rs = pre.executeQuery();
        while (rs.next()) {
            result.append("<tr>");
            for(int k = 1; k <= count; k ++) result.append("<td>"+rs.getString(k)+"</td>");
            result.append("</tr>");
        }
        result.append("</table>");
        con.close();
    } catch (Exception e) {
        result.append("用户名或密码错误");
    }
    jspContext.setAttribute("queryResult",new String(result));
    jspContext.setAttribute("biao",tableName);
%>