<%@ tag import="java.util.*" %>
<%@ tag import="java.sql.*" %>
<%@ tag pageEncoding="UTF-8" %>
<%@ attribute name="databaseName" required="true" %>
<%@ attribute name="tableName" required="true" %>
<%@ attribute name="user" required="true" %>
<%@ attribute name="password" required="false" %>
<%@ attribute name="count" required="true" %>
<%@ variable name-given="biao" scope="AT_END" %>
<%@ variable name-given="quertResult" scope="AT_END" %>
<%@ variable name-given="randomCount" scope="AT_END" %>

<%
    Vector vector = new Vector();
    StringBuffer result = new StringBuffer();
    int n = 0;
    try {
        result.append("<table border=1>");
        DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
        String url = "jdbc:mysql://localhost:3306/" +databaseName+
                "?serverTimezone=UTC&characterEncoding=UTF-8";
        Connection con = DriverManager.getConnection(url,user,password);
        DatabaseMetaData metaData = con.getMetaData();
        ResultSet rs1 = metaData.getColumns(null,null,tableName,null);
        int ans = 0; //字段个数
        result.append("<tr>");
        while (rs1.next()) {
            ans ++;
            result.append("<td>"+rs1.getString(4)+"</td>");
        }
        result.append("</tr>");
        Statement sql = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
        ResultSet rs = sql.executeQuery("select * from "+tableName);
        rs.last();
        int rowNumber = rs.getRow();
        int number = rowNumber;
        for(int i = 1; i <= number; i ++) vector.add(new Integer(i));
        int m = Math.min(Integer.parseInt(count), number);
        n = m;
        while (m > 0) {
            int i = (int)(Math.random()*vector.size());
            int index = ((Integer)vector.elementAt(i)).intValue();
            rs.absolute(index);
            result.append("<tr>");
            for(int k = 1; k <= ans; k ++) result.append("<td>"+rs.getString(k)+"</td>");
            result.append("</tr>");
            m --;
            vector.removeElementAt(i);
        }
        result.append("</table>");
        con.close();
    } catch (Exception e) {
        result.append("请输入正确的用户名和密码");
    }
    jspContext.setAttribute("quertResult",new String(result));
    jspContext.setAttribute("biao",tableName);
    jspContext.setAttribute("randomCount",String.valueOf(n));
%>