package myservlet.control;

import com.sun.rowset.CachedRowSetImpl;
import mybean.data.ShowRecordByPage;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.*;

@WebServlet(name = "HandleDatabase")
public class HandleDatabase extends HttpServlet {
    int count;
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (Exception e){}
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection con;
        StringBuffer presentPageResult = new StringBuffer();
        ShowRecordByPage databaseBean = null;
        HttpSession session = request.getSession(true);
        try {
            databaseBean = (ShowRecordByPage) session.getAttribute("database");
            if(databaseBean == null) {
                databaseBean = new ShowRecordByPage();
                session.setAttribute("database",databaseBean);
            }
        } catch (Exception e) {
            databaseBean = new ShowRecordByPage();
            session.setAttribute("database",databaseBean);
        }
        String databaseName = request.getParameter("databaseName");
        String tableName = request.getParameter("tableName");
        String ps = request.getParameter("pageSize");
        if(ps != null) {
            try {
                int mm = Integer.parseInt(ps);
                databaseBean.setPageSize(mm);
            } catch (Exception ee) {
                databaseBean.setPageSize(1);
            }
        }
        int showPage = databaseBean.getShowPage();
        int pageSize = databaseBean.getPageSize();
        boolean boo = databaseName != null && tableName != null && databaseName.length() > 0 && tableName.length() > 0;
        if(boo) {
            databaseBean.setDatabaseName(databaseName);
            databaseBean.setTableName(tableName);
            String url = "jdbc:mysql://localhost:3306/" +databaseName+
                    "?serverTimezone=UTC&characterEncoding=UTF-8";
            try {
                con = DriverManager.getConnection(url,"root","123456789");
                count = 0;
                DatabaseMetaData metaData = con.getMetaData();
                ResultSet rs1 = metaData.getColumns(null,null,tableName,null);
                int k = 0;
                String title[] = new String[100];
                while (rs1.next()) {
                    count ++;
                    title[k++] = rs1.getString(4);
                }
                StringBuffer str = new StringBuffer();
                str.append("<tr>");
                for(int i = 0; i < count; i ++) str.append("<th>"+title[i]+"</th>");
                str.append("</tr>");
                databaseBean.setFormTitle(str);
                Statement sql = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
                ResultSet rs = sql.executeQuery("SELECT * from "+tableName);
                CachedRowSetImpl rowSet = new CachedRowSetImpl();
                rowSet.populate(rs);
                con.close();
                databaseBean.setRowSet(rowSet);
                rowSet.last();
                int m = rowSet.getRow();
                int n = pageSize;
                int pageAllCount = ((m%n==0)?(m/n):(m/n+1));
                databaseBean.setPageAllCount(pageAllCount);
            } catch (Exception e) {
            }
        }
        String whichPage = request.getParameter("whichPage");
        if(whichPage == null || whichPage.length() == 0) {
            showPage = 1;
            databaseBean.setShowPage(showPage);
            CachedRowSetImpl rowSet = databaseBean.getRowSet();
            if(rowSet != null) {
                presentPageResult = show(showPage,pageSize,rowSet);
                databaseBean.setPresentPageResult(presentPageResult);
            }
        } else if(whichPage.equals("nextpage")) {
            showPage ++;
            if(showPage > databaseBean.getPageAllCount()) showPage = 1;
            databaseBean.setShowPage(showPage);
            CachedRowSetImpl rowSet = databaseBean.getRowSet();
            if(rowSet != null) {
                presentPageResult = show(showPage,pageSize,rowSet);
                databaseBean.setPresentPageResult(presentPageResult);
            }
        } else if(whichPage.equals("previousPage")) {
            showPage --;
            if(showPage <= 0) showPage = databaseBean.getPageAllCount();
            databaseBean.setShowPage(showPage);
            CachedRowSetImpl rowSet = databaseBean.getRowSet();
            if(rowSet != null) {
                presentPageResult = show(showPage,pageSize,rowSet);
                databaseBean.setPresentPageResult(presentPageResult);
            }
        }
        databaseBean.setPresentPageResult(presentPageResult);
        RequestDispatcher dispatcher = request.getRequestDispatcher("9/showRecord.jsp");
        dispatcher.forward(request,response);
    }
    public StringBuffer show(int page, int pageSize, CachedRowSetImpl rowSet) {
        StringBuffer str = new StringBuffer();
        try {
            rowSet.absolute((page-1)*pageSize+1);
            for(int i = 1; i <= pageSize; i ++) {
                str.append("<tr>");
                for(int k = 1; k <= count; k ++) {
                    str.append("<td>"+rowSet.getString(k)+"</td>");
                }
                str.append("</tr>");
                rowSet.next();
            }
        } catch (Exception e) {}
        return str;
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
