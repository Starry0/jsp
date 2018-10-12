package myservlet.control;

import mybean.data.Area;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "HandleArea")
public class HandleArea extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Area dataBean = new Area();
        request.setAttribute("data",dataBean);
        try {
            double a = Double.parseDouble(request.getParameter("a"));
            double b = Double.parseDouble(request.getParameter("b"));
            double c = Double.parseDouble(request.getParameter("c"));
            dataBean.setA(a);
            dataBean.setB(b);
            dataBean.setC(c);
            double s = -1;
            double p = (a+b+c)/2.0;
            if(a+b > c && a+c > b && b+c > a) s = Math.sqrt(p*(p-a)*(p-b)*(p-c));
            dataBean.setArea(s);
            dataBean.setMess("三角形面积");
        } catch (Exception e) {
            dataBean.setArea(-1);
            dataBean.setMess(""+e);
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("9/showResult.jsp");
        dispatcher.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Area dataBean = new Area();
        request.setAttribute("data",dataBean);
        try {
            double a = Double.parseDouble(request.getParameter("a"));
            double b = Double.parseDouble(request.getParameter("b"));
            double c = Double.parseDouble(request.getParameter("c"));
            dataBean.setA(a);
            dataBean.setB(b);
            dataBean.setC(c);
            double s = -1;
            s = (a+b)*c/2.0;
            dataBean.setArea(s);
            dataBean.setMess("梯形面积");
        } catch (Exception e) {
            dataBean.setArea(-1);
            dataBean.setMess(""+e);
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("9/showResult.jsp");
        dispatcher.forward(request,response);
    }
}
