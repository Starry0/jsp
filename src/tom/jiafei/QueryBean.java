package tom.jiafei;
import java.sql.*;

public class QueryBean {
    String databaseName = "";
    String tableName = "";
    String user = "";
    String password = "";
    StringBuffer queryResult;
    public QueryBean() {
        queryResult = new StringBuffer();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (Exception e){}
    }

    public void setDatabaseName(String databaseName) {
        databaseName = databaseName.trim();
        this.databaseName = databaseName;
    }

    public String getDatabaseName() {
        return databaseName;
    }

    public void setTableName(String tableName) {
        tableName = tableName.trim();
        this.tableName = tableName;
    }

    public String getTableName() {
        return tableName;
    }

    public void setPassword(String password) {
        password = password.trim();
        this.password = password;
    }

    public String getPassword() {
        return password;
    }

    public void setUser(String user) {
        user = user.trim();
        this.user = user;
    }

    public String getUser() {
        return user;
    }

    public StringBuffer getQueryResult() {
        Connection con;
        Statement sq;
        ResultSet rs;
        try {
            queryResult.append("<table border=1>");
            String url = "jdbc:mysql://localhost:3306/" +databaseName+
                    "?serverTimezone=UTC&characterEncoding=UTF-8";
//        System.out.println(url);
            con = DriverManager.getConnection(url,user,password);
            DatabaseMetaData metaData = con.getMetaData();
            ResultSet rs1 = metaData.getColumns(null,null,tableName,null);
            int count = 0; //字段个数
            queryResult.append("<tr>");
            while (rs1.next()) {
                count ++;
                queryResult.append("<td>"+rs1.getString(4)+"</td>");
            }
            queryResult.append("</tr>");
            Statement sql = con.createStatement();
            rs = sql.executeQuery("select * from "+tableName);
            while (rs.next()) {
                queryResult.append("<tr>");
                for(int k = 1; k <= count; k ++)
                    queryResult.append("<td>"+rs.getString(k)+"</td>");
                queryResult.append("</tr>");
            }
            queryResult.append("</table>");
            con.close();
        } catch (Exception e) {
            queryResult.append("请输入正确的用户名和密码");
        }
        return queryResult;
    }
}
