package myservlet.control;

import mybean.data.Series;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "HandleSum")
public class HandleSum extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Series shulie = new Series();
        request.setAttribute("lie",shulie);
        double a = Double.parseDouble(request.getParameter("firstItem"));
        double d = Double.parseDouble(request.getParameter("var"));
        int n = Integer.parseInt(request.getParameter("number"));
        shulie.setFirstItem(a);
        shulie.setVar(d);
        shulie.setNumber(n);
        double sum = 0, item = a;
        int i = 1;
        shulie.setName("等差数列的公差");
        while (i <= n) {
            sum += item;
            i ++;
            item += d;
        }
        shulie.setSum(sum);
        RequestDispatcher dispatcher = request.getRequestDispatcher("9/item/showResult.jsp");
        dispatcher.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Series shulie = new Series();
        request.setAttribute("lie",shulie);
        double a = Double.parseDouble(request.getParameter("firstItem"));
        double d = Double.parseDouble(request.getParameter("var"));
        int n = Integer.parseInt(request.getParameter("number"));
        shulie.setFirstItem(a);
        shulie.setVar(d);
        shulie.setNumber(n);
        double sum = 0, item = a;
        int i = 1;
        shulie.setName("等比数列的公比");
        while (i <= n) {
            sum += item;
            i ++;
            item *= d;
        }
        shulie.setSum(sum);
        RequestDispatcher dispatcher = request.getRequestDispatcher("9/item/showResult.jsp");
        dispatcher.forward(request,response);
    }
}
