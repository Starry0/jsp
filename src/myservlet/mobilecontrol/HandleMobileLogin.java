package myservlet.mobilecontrol;

import mybean.mobiledata.Login;

import javax.servlet.RequestDispatcher;
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

@WebServlet(name = "HandleMobileLogin")
public class HandleMobileLogin extends HttpServlet {
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (Exception e) {}
    }
    public String handleString(String s) {
        try {
            byte[] c = s.getBytes("ISO-8859-1");
            s = new String(c,"UTF-8");
        } catch (Exception e){}
        return s;
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection con;
        Statement sql;
        String logname = request.getParameter("logname").trim();
        String password = request.getParameter("password").trim();
        logname = handleString(logname);
        password = handleString(password);
        String url = "jdbc:mysql://localhost:3306/mobileshop" +
                "?serverTimezone=UTC&characterEncoding=UTF-8";
        boolean boo = (logname.length() > 0) && (password.length() > 0);
        try {
            con = DriverManager.getConnection(url,"root","123456789");
            String condition = "select * from user where logname = '"+logname+"' and password = '"+password+"'";
            sql = con.createStatement();
            if(boo) {
                ResultSet rs = sql.executeQuery(condition);
                boolean m = rs.next();
                if(m == true) {
                    success(request,response,logname,password);
                    RequestDispatcher dispatcher = request.getRequestDispatcher("10/login.jsp");
                    dispatcher.forward(request,response);
                } else {
                    String backNews = "你输入的用户名不存在，或密码不般配";
                    fail(request,response,logname,backNews);
                }
            } else {
                String backNews = "请输入用户名和密码";
                fail(request,response,logname,backNews);
            }
            con.close();
        } catch (Exception e) {
            String backNews = ""+e;
            fail(request,response,logname,backNews);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
    public void success(HttpServletRequest request, HttpServletResponse response, String logname, String password) {
        Login loginBean = null;
        HttpSession session = request.getSession(true);
        try {
            loginBean = (Login)session.getAttribute("loginBean");
            if(loginBean == null) {
                loginBean = new Login();
                session.setAttribute("loginBean",loginBean);
                loginBean = (Login)session.getAttribute("loginBean");
            }
            String name = loginBean.getLogname();
            if(name.equals(logname)) {
                loginBean.setBackNews(logname+"已经登录了");
                loginBean.setLogname(logname);
            } else {
                loginBean.setBackNews(logname+"登录成功了");
                loginBean.setLogname(logname);
            }
        } catch (Exception ee) {
            loginBean = new Login();
            session.setAttribute("loginBean",loginBean);
            loginBean.setBackNews(logname+"登录成功了");
            loginBean.setLogname(logname);
        }
    }
    public void fail(HttpServletRequest request,HttpServletResponse response,String logname,String backNews) {
        response.setContentType("text/html;charset=UTF-8");
        try {
            PrintWriter out = response.getWriter();
            out.print("<html><body>");
            out.print("<h2>"+logname+"登录反馈结果<br>"+backNews+"</h2>");
            out.print("返回登录页面或主页");
            out.print("<a href=10/login.jsp>登录页面</a>");
            out.print("</body></html>");
        } catch (Exception e){}
    }
}
