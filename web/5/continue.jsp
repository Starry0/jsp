<%@ page import="java.io.*" %>
<%--
  User: Starry
  Date: 2018/9/24
  Time: 16:43
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page info="story" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    String writeContent(File f, String s) {
        try {
            RandomAccessFile out = new RandomAccessFile(f,"rw");
            out.seek(out.length());
            out.writeUTF(s);
            out.close();
            return "内容已成功写入到文件";
        } catch (Exception e) {
            return "不能写入到文件";
        }
    }
%>
<%--获取用户提交的小说的名字 --%>
<%
    request.setCharacterEncoding("UTF-8");
    String name = (String)session.getAttribute("name");
    byte c[] = name.getBytes("iso-8859-1");
    name = new String(c);
    //获取用户续写的内容
    String content = (String)request.getParameter("message");
    if(content == null) content = "";
    String dir = getServletInfo();
    File storyFIleDir = new File(dir);
    storyFIleDir.mkdir();
    File f = new File(storyFIleDir, name);
    String message = writeContent(f, content);
    out.print(message);
%>
</body>
</html>
