package myservlet.mobilecontrol;

import mybean.mobiledata.Login;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.LinkedList;

@WebServlet(name = "HandleDelete")
public class HandleDelete extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        response.setCharacterEncoding("UTF-8");
        String delete = request.getParameter("delete");
        byte c[] = delete.getBytes("ISO-8859-1");
        delete = new String(c,"UTF-8");
//        System.out.println(delete);
        Login loginBean = null;
        HttpSession session = request.getSession(true);
        try {
            loginBean = (Login)session.getAttribute("loginBean");
            boolean b = loginBean.getLogname() == null || loginBean.getLogname().length() == 0;
            if(b) response.sendRedirect("10/login.jsp");
            LinkedList<String> car = loginBean.getCar();
            car.remove(delete);
        } catch (Exception e){
            response.sendRedirect("10/login.jsp");
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("10/lookShoppingCar.jsp");
        dispatcher.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
