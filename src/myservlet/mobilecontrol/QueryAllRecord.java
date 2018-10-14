package myservlet.mobilecontrol;

import com.sun.rowset.CachedRowSetImpl;
import mybean.mobiledata.DataByPage;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

@WebServlet(name = "QueryAllRecord")
public class QueryAllRecord extends HttpServlet {
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (Exception e){}
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("UTF-8");
        String idNumber = request.getParameter("classfiyNumber");
        if(idNumber == null) idNumber ="0";
        int id = Integer.parseInt(idNumber);
        HttpSession session = request.getSession(true);
        Connection con = null;
        DataByPage dataBean = null;
        try {
            dataBean = (DataByPage) session.getAttribute("dataBean");
            if(dataBean == null) {
                dataBean = new DataByPage();
                session.setAttribute("dataBean",dataBean);
            }
        } catch (Exception e){
            dataBean = new DataByPage();
            session.setAttribute("dataBean",dataBean);
        }
        String url = "jdbc:mysql://localhost:3306/mobileshop" +
                "?serverTimezone=UTC&characterEncoding=UTF-8";
        try {
            con = DriverManager.getConnection(url,"root","123456789");
            Statement sql = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
            ResultSet rs = sql.executeQuery("select * from mobileform where id = "+id);
            CachedRowSetImpl rowSet = new CachedRowSetImpl();
            rowSet.populate(rs);
            dataBean.setRowSet(rowSet);
        } catch (Exception e){}
        response.sendRedirect("10/byPageShow.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
