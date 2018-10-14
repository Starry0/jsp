package myservlet.mobilecontrol;

import mybean.mobiledata.Login;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedList;

@WebServlet(name = "PutGoodsToCar")
public class PutGoodsToCar extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String goods = request.getParameter("java");
        System.out.println(goods+"ds");
        Login loginBean = null;
        HttpSession session = request.getSession(true);
        try {
            loginBean = (Login)session.getAttribute("loginBean");
            boolean b = loginBean.getLogname() == null || loginBean.getLogname().length() == 0;
            if(b) response.sendRedirect("10/login.jsp");
            LinkedList<String> car = loginBean.getCar();
            System.out.println(car);
            car.add(goods);
            speakSomeMess(request,response,goods);
        } catch (Exception e){
            response.sendRedirect("10/login.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
    public void speakSomeMess(HttpServletRequest request,HttpServletResponse response,String goods) {
        response.setContentType("text/html;charset=UTF-8");
        try {
            PrintWriter out = response.getWriter();
//            out.println("<%@ include file='10/head.txt' %>");
            out.println("<html><body>");
            out.println("<h2>"+goods+"放入购物车</h2>");
            out.println("查看购物车或返回<br>");
            out.println("<a href='10/lookShoppingCar.jsp'>查看购物车</a>");
            out.println("<br><a href='10/byPageShow.jsp'>主页</a>");
            out.println("</body></html>");
        } catch (Exception e){}
    }
}
