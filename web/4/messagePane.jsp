<%@ page import="java.util.Vector" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  User: Starry
  Date: 2018/9/22
  Time: 21:44
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%!
        Vector<String> v = new Vector<String>();
        int i = 0;
        ServletContext application;
        synchronized void sendMessage(String s) {
            application = getServletContext();
            v.add(s);
            application.setAttribute("Mess",v);
        }
    %>
<%
    request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("peopleName");
    String title = request.getParameter("Title");
    String message = request.getParameter("messages");
    if(name == null || name == "") name = "guest" + (int)(Math.random()*1000);
    if(title == null || title == "") title = "无标题";
    if(message == null || message == "") message = "无消息";
    SimpleDateFormat matter = new SimpleDateFormat("yyy-MM-dd HH:mm:ss");
    String time = matter.format(new Date());
    String s = name+"#"+title+"#"+time+"#"+message;
    sendMessage(s);
    out.println("你的信息已经提交！");
%>
<a href="submit.jsp">返回留言板</a>
<a href="showMessage.jsp">查看留言板</a>
</body>
</html>
