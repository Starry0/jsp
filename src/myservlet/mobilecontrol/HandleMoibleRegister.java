package myservlet.mobilecontrol;

import mybean.mobiledata.Register;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet(name = "HandleMoibleRegister")
public class HandleMoibleRegister extends HttpServlet {
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (Exception e){}
    }
    public String handleString(String s) {
        try {
            byte[] bb = s.getBytes("ISO-8859-1");
            s = new String(bb,"UTF-8");
        } catch (Exception e) {}
        return s;
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "jdbc:mysql://localhost:3306/mobileshop" +
                "?serverTimezone=UTC&characterEncoding=UTF-8";
        Connection con;
        PreparedStatement sql;
        Register userBean = new Register();
        request.setAttribute("userBean",userBean);
        String logname = request.getParameter("logname").trim();
        String password = request.getParameter("password").trim();
        String again_password = request.getParameter("again_password").trim();
        String phone = request.getParameter("phone").trim();
        String address = request.getParameter("address").trim();
        String realname = request.getParameter("realname").trim();
        if(logname == null) logname = "";
        if(password == null) password = "";
        if(!password.equals(again_password)) {
            userBean.setBackNews("两次密码不同，注册失败");
            RequestDispatcher dispatcher = request.getRequestDispatcher("10/inputRegisterMess.jsp");
            dispatcher.forward(request,response);
            return;
        }
        boolean isLD = true;
        for(int i = 0; i < logname.length(); i ++) {
            char c = logname.charAt(i);
            if(!((c<='z'&&c>='a')||(c<='Z'&&c>='A')||(c<='9'&&c>='0'))) isLD = false;
        }
        boolean boo = logname.length() > 0 && password.length() > 0 && isLD;
        String backNews = "";
        try {
            con = DriverManager.getConnection(url,"root","123456789");
            String insertCondition = "insert into user values (?,?,?,?,?)";
            sql = con.prepareStatement(insertCondition);
            if(boo) {
                sql.setString(1,handleString(logname));
                sql.setString(2,handleString(password));
                sql.setString(3,handleString(phone));
                sql.setString(4,handleString(address));
                sql.setString(5,handleString(realname));
                int m = sql.executeUpdate();
                if(m != 0) {
                    backNews = "注册成功";
                    userBean.setLogname(logname);
                    userBean.setBackNews(backNews);
                    userBean.setAddress(handleString(address));
                    userBean.setPhone(handleString(phone));
                    userBean.setRealname(handleString(realname));
                }
            } else {
                backNews = "信息填写不完整或名字中有非法字符";
                userBean.setBackNews(backNews);
            }
            con.close();
        } catch (Exception e) {
            backNews = "该会员名已被使用，请你更换名字"+e;
            userBean.setBackNews(backNews);
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("10/inputRegisterMess.jsp");
        dispatcher.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
