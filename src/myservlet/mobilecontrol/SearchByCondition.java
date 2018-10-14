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
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

@WebServlet(name = "SearchByCondition")
public class SearchByCondition extends HttpServlet {
    CachedRowSetImpl rowSet = null;
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (Exception e){}
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String searchMess = request.getParameter("searchMess");
        String radio = request.getParameter("radio");
        if(searchMess == null || searchMess.length() == 0) {
            fail(request,response,"没有查询详细，无法查询");
            return;
        }
        String condtion = "";
        if(radio.equals("mobile_version")) {
            condtion = "select * from mobileform where mobile_version = '"+searchMess+"'";
        } else if(radio.equals("mobile_name")) {
            condtion = "select * from mobileform where mobile_name LIKE '%"+searchMess+"%'";
        }else if(radio.equals("mobile_price")) {
            double max = 0, min = 0;
            String regex = "[^0123456789.]";
            String[] priceMess = searchMess.split(regex);
            if(priceMess.length == 1) {
                max = min = Double.parseDouble(priceMess[0]);
            } else if(priceMess.length == 2) {
                min = Double.parseDouble(priceMess[0]);
                max = Double.parseDouble(priceMess[1]);
                if(max < min) {
                    double tmp = max;
                    max = min;
                    min = tmp;
                }
            } else {
                fail(request,response,"输入的价格格式有错误");
                return;
            }
            condtion = "select * from mobileform where mobile_price <= "+max+"and mobile_price >= "+min;
        }
        HttpSession session = request.getSession(true);
        Connection con;
        DataByPage dataBean = null;
        try {
            dataBean = (DataByPage)session.getAttribute("dataBean");
            if(dataBean == null) {
                dataBean = new DataByPage();        //创建JavaBean对象
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
            ResultSet rs = sql.executeQuery(condtion);
            rowSet = new CachedRowSetImpl();
            rowSet.populate(rs);
            dataBean.setRowSet(rowSet);
            con.close();
        } catch (Exception e){}
        response.sendRedirect("10/byPageShow.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
    public void fail(HttpServletRequest request, HttpServletResponse response, String backNews) {
        response.setContentType("text/html;charset=UTF-8");
        try {
            PrintWriter out = response.getWriter();
            out.println("<html><body>");
            out.println("<h2>"+backNews+"</h2>");
            out.println("返回：");
            out.println("<a href='10/searchMobile.jsp'></a>");
            out.println("</body></html>");
        } catch (Exception e){

        }
    }
}
