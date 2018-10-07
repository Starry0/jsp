<%@ tag pageEncoding="UTF-8" %>
<%@ attribute name="number" required="true" %>
<%@ variable name-given="QueryResult" scope="AT_END" %>
<%@ tag import="java.sql.*" %>

<%
    StringBuffer result = new StringBuffer();
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
    } catch (Exception e) {
        out.print(e);
    }
    try {
        result.append("<table border=1>");
        DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
        String url = "jdbc:mysql://localhost:3306/Student?serverTimezone=UTC&characterEncoding=UTF-8";
//        System.out.println(url);
        Connection con = DriverManager.getConnection(url,"root","123456789");
        DatabaseMetaData metaData = con.getMetaData();
        ResultSet rs1 = metaData.getColumns(null,null,"message",null);
        int count = 0; //字段个数
        result.append("<tr>");
        while (rs1.next()) {
            count ++;
            result.append("<td>"+rs1.getString(4)+"</td>");
        }
        result.append("</tr>");
        Statement sql = con.createStatement();
        ResultSet rs = sql.executeQuery("select * from message where number = '"+number+"'");
        while (rs.next()) {
            result.append("<tr>");
            for(int k = 1; k <= count; k ++)
                result.append("<td>"+rs.getString(k)+"</td>");
            result.append("</tr>");
        }
        result.append("</table>");
        con.close();
    } catch ( Exception e) {
        result.append(e);
    }
    jspContext.setAttribute("QueryResult",new String(result));
%>