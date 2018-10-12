package my.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;

@WebServlet(name = "ReadFile")
public class ReadFile extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fileName = request.getParameter("fileName");
        String content = getReadContent(fileName);
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.print("<html><body>");
        out.print("<textarea rows=8 cols=50>"+content+"</textarea>");
        out.print("</body></html>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
    private String getReadContent(String fileName) {
        String readConetent = "";
        try {
            File file = new File(fileName);
            InputStreamReader in = new InputStreamReader(new FileInputStream(file),"UTF-8");
            BufferedReader bufferedReader = new BufferedReader(in);
            StringBuffer stringBuffer = new StringBuffer();
            String s =  null;
            while ((s = bufferedReader.readLine()) != null) {
                stringBuffer.append("\n"+s);
            }
            readConetent = new String(stringBuffer);
        } catch (Exception e) {
            readConetent = "" + e;
        }
        return readConetent;
    }
}
