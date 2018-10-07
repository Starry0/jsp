<%@ page import="java.util.Enumeration" %><%--
  User: Starry
  Date: 2018/9/20
  Time: 22:35
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body bgcolor="white"> <font size="3"/>
    <br>用户使用的协议是：
    <%
        request.setCharacterEncoding("UTF-8");
        String protocol = request.getProtocol();
        out.print(protocol);
    %>
<br>获取接收用户提交信息的页面:
<%
    String path = request.getServletPath();
    out.print(path);
%>
<br>接收用户提交信息的长度:
<%
    int length = request.getContentLength();
    out.print(length);
%>
<br>用户提交信息的方式:
<%
    String method = request.getMethod();
    out.print(method);
%>
<br>获取HTTP头文件中User-Agent的值：
<%
    String header1 = request.getHeader("User-Agent");
    out.print(header1);
%>
<br>获取HTTP头文件中accept的值：
<%
    String header2 = request.getHeader("accept");
    out.print(header2);
%>
<br>获取HTTP头文件中Host的值：
<%
    String header3 = request.getHeader("Host");
    out.print(header3);
%>
<br>获取HTTP头文件中accept-encoding的值：
<%
    String header4 = request.getHeader("accept-encoding");
    out.print(header4);
%>
<br>获取用户的IP地址：
<%
    String IP = request.getRemoteAddr();
    out.print(IP);
%>
<br>获取用户机的名称：
<%
    String clientName = request.getRemoteHost();
    out.print(clientName);
%>
<br>获取服务器的名称：
<%
    String serverName = request.getServerName();
    out.print(serverName);
%>
<br>获取服务器的端口号：
<%
    int serverPort = request.getServerPort();
    out.print(serverPort);
%>
<br>获取用户端提交的所有参数的名字：
<%
    Enumeration en = request.getParameterNames();
    while (en.hasMoreElements()) {
        String s = (String)en.nextElement();
        out.print(s);
    }
%>
<br>获取头名字的一个枚举：
<%
    Enumeration enum_headed = request.getHeaderNames();
    while (enum_headed.hasMoreElements()) {
        String s = (String)enum_headed.nextElement();
        out.print(s);
    }
%>
<br>获取头文件中指定头名字的全部值的一个枚举：
<%
    Enumeration enum_headedValues = request.getHeaders("cookie");
    while (enum_headedValues.hasMoreElements()) {
        String s = (String)enum_headedValues.nextElement();
        out.print(s);
    }
%>
<br>
<p>文本框text提交的信息</p>
<%
    String str = request.getParameter("boy");
    out.print(str);
%>
<br>
<br></br>按钮的名字：
<%
    String buttonName = request.getParameter("submit");
    out.print(buttonName);
%>
</body>
</html>
