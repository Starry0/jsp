package china.gangzhong;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "HandleGuess")
public class HandleGuess extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        String str = request.getParameter("clientGuess");
        int guessNumber = -1;
        try {
            guessNumber = Integer.parseInt(str);
        } catch (Exception e) {
            response.setContentType("8/inputNumber.jsp");
        }
        int savedNumber = ((Integer)session.getAttribute("savedNumber")).intValue();
        if(guessNumber < savedNumber) {
            session.setAttribute("message","你猜小了");
        } else if(guessNumber > savedNumber) {
            session.setAttribute("message","你猜大了");
        } else{
            session.setAttribute("message","你猜对了");
        }
        response.sendRedirect("8/inputNumber.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
