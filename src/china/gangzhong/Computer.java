package china.gangzhong;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Computer")
public class Computer extends HttpServlet {
    String servletName;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        servletName = getServletName();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        String str = request.getParameter("number");
        out.print("我是一个servlet对象，名字是："+servletName+"。<br>");
        out.print("我负责计算并显示"+str+"的因子：<br>");
        int n = 0;
        try {
            n = Integer.parseInt(str);
            for(int i = 1; i <= n; i ++) {
                if(n%i == 0) out.println(" "+i);
            }
        } catch (Exception e) {
            out.print(e);
        }
        out.println("</body></html>");
    }
}
