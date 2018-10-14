package myservlet.control;

import mybean.data.Auadratic;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "HandleAuadratic")
public class HandleAuadratic extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double a = Double.parseDouble(request.getParameter("numberA"));
        double b = Double.parseDouble(request.getParameter("numberB"));
        double c = Double.parseDouble(request.getParameter("numberC"));
        Auadratic computer = new Auadratic();
        request.setAttribute("computer",computer);
        computer.setA(a);
        computer.setB(b);
        computer.setC(c);
        double tmp = b*b-4*a*c;
        double x1, x2;
        if(tmp < 0) {
            computer.setMess("没有实数解");
            computer.setX1(-1);
            computer.setX2(-1);
        } else{
            x1 = (-b - tmp) / (2.0*a);
            x2 = (-b + tmp) / (2.0*a);
            computer.setMess("两个实数解是：");
            computer.setX1(x1);
            computer.setX2(x2);
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("9/lianxi/showResult.jsp");
        dispatcher.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
