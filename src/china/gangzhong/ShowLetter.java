package china.gangzhong;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ShowLetter")
public class ShowLetter extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.print("<br>小写俄文字母：");
        for(char c = 'а'; c <= 'я'; c ++) out.print(" "+ c);
        out.print("<br>大写俄文字母：");
        for(char c = 'А'; c <= 'Я'; c ++) out.print(" "+ c);
        out.print("</body></html>");
    }
}
