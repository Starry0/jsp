package china.gangzhong;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ComputerPI")
public class ComputerPI extends HttpServlet {
    double sum = 0, i = 1, j = 1;
    int number = 0;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.print("<html><body>");
        number++;
        sum += i/j;
        j += 2;
        i = -i;
        out.println("servlet:"+getServletName()+"已经被请求了"+number+"次");
        out.print("<br>现在PI的值是：");
        out.print(4*sum);
        out.print("</body></html>");
    }
}
