<%@ tag import="java.sql.*" %>
<%@ tag pageEncoding="UTF-8" %>
<%@ attribute name="keyWord" required="true" %>
<%@ attribute name="ziduan" required="true" %>
<%@ variable name-given="foundResult" scope="AT_END" %>
<%
    String condition = "select * from product where " + ziduan + " like '%"+keyWord+"%'";
    StringBuffer result = new StringBuffer();
    try {
        result.append("<table border=1>");
        DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
        String url = "jdbc:mysql://localhost:3306/warehouse?serverTimezone=UTC&characterEncoding=UTF-8";
        String user = "root";
        String password = "123456789";
        Connection con = DriverManager.getConnection(url,user,password);
        DatabaseMetaData metaData = con.getMetaData();
        ResultSet rs1 = metaData.getColumns(null,null,"product",null);
        int count = 0; //字段个数
        result.append("<tr>");
        while (rs1.next()) {
            count ++;
            result.append("<td>"+rs1.getString(4)+"</td>");
        }
        result.append("</tr>");
        Statement sql = con.createStatement();
        ResultSet rs = sql.executeQuery(condition);
        while (rs.next()) {
            result.append("<tr>");
            for(int k = 1; k <= count; k ++) result.append("<td>"+rs.getString(k)+"</td>");
            result.append("</tr>");
        }
        result.append("</table>");
        con.close();
    } catch (Exception e) {
        result.append("情输入模糊查询条件");
    }
    jspContext.setAttribute("foundResult",new String(result));
%>