package china.gangzhong;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Verify")
public class Verify extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String number = request.getParameter("number");
        try {
            double n = Double.parseDouble(number);
            if(n > 2000 || n < -2000) response.sendRedirect("8/example8_5.jsp");
            else {
                RequestDispatcher dispatcher = request.getRequestDispatcher("forYouShowMessage");
                dispatcher.forward(request,response);
            }
        } catch (Exception e) {
            response.sendRedirect("8/example8_5.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
