package tom.jiafei;
import java.sql.*;
import com.sun.rowset.*;

public class ShowRecordByPage {
    int pageSize = 10;  //每页显示的记录数
    int pageAllCount = 0;   //分页后的总页数
    int showPage = 1;   //当前显示页
    StringBuffer presentPageResult; //显示当前页的内容
    CachedRowSetImpl rowSet;    //用于存储ResultSet对象
    String databaseName = "";
    String tableName = "";
    String user = "";
    String password = "";
    String title[] = new String[100];
    int count = 0;
    public ShowRecordByPage(){
        presentPageResult = new StringBuffer();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (Exception e){}
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
        count = 0;
        try {
            String url = "jdbc:mysql://localhost:3306/" +databaseName+
                    "?serverTimezone=UTC&characterEncoding=UTF-8";
            Connection con = DriverManager.getConnection(url,user,password);
            DatabaseMetaData metaData = con.getMetaData();
            ResultSet rs1 = metaData.getColumns(null,null,tableName,null);
            int k = 0; //字段个数
            while (rs1.next()) {
                count ++;
                title[k] = rs1.getString(4);
                k++;
            }
            Statement sql = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
            ResultSet rs = sql.executeQuery("select * from "+tableName);
            rowSet = new CachedRowSetImpl();
            rowSet.populate(rs);
            con.close();
            rowSet.last();
            int m = rowSet.getRow();
            int n = pageSize;
            pageAllCount = (m+n-1)/n;
        } catch (Exception e){}
    }

    public int getPageSize() {
        return pageSize;
    }

    public int getPageAllCount() {
        return pageAllCount;
    }

    public void setShowPage(int showPage) {
        this.showPage = showPage;
    }

    public int getShowPage() {
        return showPage;
    }

    public StringBuffer getPresentPageResult() {
        if(showPage > pageAllCount) showPage = 1;
        if(showPage <= 0) showPage = pageAllCount;
        presentPageResult = show(showPage);
        return presentPageResult;
    }
    public StringBuffer show(int page) {
        StringBuffer str = new StringBuffer();
        str.append("<table border=1>");
        str.append("<tr>");
        for(int i = 0; i < count; i ++) str.append("<th>"+title[i]+"</th>");
        str.append("</tr>");
        try {
            rowSet.absolute((page-1)*pageSize+1);
            boolean boo = true;
            for(int i = 1; i <= pageSize&&boo; i ++) {
                str.append("<tr>");
                for(int k = 1; k <= count; k ++) {
                    str.append("<td>"+rowSet.getString(k)+"</td>");
                }
                str.append("</tr>");
                boo = rowSet.next();
            }
        } catch (Exception e) {}
        str.append("</table>");
        return str;
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
}
