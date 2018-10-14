package myservlet.control;

import mybean.data.FileMessage;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;

@WebServlet(name = "HandleFile")
public class HandleFile extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        FileMessage file = new FileMessage();
        request.setAttribute("file",file);
        String filePath = request.getParameter("filePath");
        String fileName = request.getParameter("fileName");
        file.setFilePath(filePath);
        file.setFileName(fileName);
        try {
            File f = new File(filePath,fileName);
            long length = f.length();
            file.setFileLength(length);
            InputStreamReader in = new InputStreamReader(new FileInputStream(f),"UTF-8");
            BufferedReader inTwo = new BufferedReader(in);
            StringBuffer stringBuffer = new StringBuffer();
            String s = null;
            while ((s = inTwo.readLine()) != null) stringBuffer.append("\n"+s);
            String content = new String(stringBuffer);
            file.setFileContent(content);
        } catch (Exception e) {}
        RequestDispatcher dispatcher = request.getRequestDispatcher("9/showFile.jsp");
        dispatcher.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
