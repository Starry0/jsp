package myservlet.mobilecontrol;

import mybean.mobiledata.Login;

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
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.LinkedList;

@WebServlet(name = "HandleBuyGoods")
public class HandleBuyGoods extends HttpServlet {
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (Exception e){}
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String buyGoodsMess = request.getParameter("buy");
        if(buyGoodsMess == null || buyGoodsMess.length() == 0) {
            fail(request,response,"购物车没有物品，无法生成订单");
            return;
        }
        String price = request.getParameter("price");
        if(price == null || price.length() == 0) {
            fail(request,response,"没有计算价格和，无法生成订单");
            return;
        }
        float sum = Float.parseFloat(price);
        Login loginBean = null;
        HttpSession session = request.getSession();
        try {
            loginBean = (Login)session.getAttribute("loginBean");
            boolean b = loginBean.getLogname() == null || loginBean.getLogname().length() == 0;
            if(b) response.sendRedirect("10/login.jsp");
        } catch (Exception e){
            response.sendRedirect("10/login.jsp");
        }
        String url = "jdbc:mysql://localhost:3306/mobileshop" +
                "?serverTimezone=UTC&characterEncoding=UTF-8";
        Connection con;
        PreparedStatement sql;
        System.out.println(buyGoodsMess+"   ---  "+sum);
        try {
            con = DriverManager.getConnection(url,"root","123456789");
            String insertCondition = "insert into orderform values (?,?,?,?);";
            System.out.println(insertCondition);
            sql = con.prepareStatement(insertCondition);
            sql.setInt(1,0); //订单序号会自动增加
            sql.setString(2,loginBean.getLogname());
            sql.setString(3,buyGoodsMess);
            sql.setFloat(4,sum);
            System.out.println(loginBean.getLogname()+"  "+buyGoodsMess+" " + sum);
            sql.executeUpdate();
            LinkedList car = loginBean.getCar();
            car.clear();
            success(request,response,"生成订单成功");
        } catch (Exception e){
            System.out.println(e);
            fail(request,response,"生成订单失败");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
    public void success(HttpServletRequest request, HttpServletResponse response, String backNews) {
        response.setContentType("text/html;charset=UTF-8");
        try {
            PrintWriter out = response.getWriter();
            out.println("<html><body>");
            out.println("<h2>"+backNews+"</h2>");
            out.println("返回主页");
            out.println("<a href='10/index.jsp'>主页</a>");
            out.println("<br>查看订单<a href='10/lookOrderForm.jsp'>查看订单</a>");
            out.println("</body></html>");
        } catch (Exception e) {}
    }
    public void fail(HttpServletRequest request, HttpServletResponse response, String backNews) {
        response.setContentType("text/html;charset=UTF-8");
        try {
            PrintWriter out = response.getWriter();
            out.println("<html><body>");
            out.println("<h2>"+backNews+"</h2>");
            out.println("返回主页");
            out.println("<a href='10/index.jsp'>主页</a>");
            out.println("</body></html>");
        }catch (Exception e){}
    }

}
