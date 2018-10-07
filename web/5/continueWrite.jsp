<%@ page import="java.io.File" %>
<%@ page import="java.io.RandomAccessFile" %><%--
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
<% String str = response.encodeURL("continue.jsp");%>
<%--获取用户提交的小说的名字 --%>
<%
    String name = (String)request.getParameter("R");
    if(name == null) name = "";
    byte c[] = name.getBytes("iso-8859-1");
    name = new String(c);
    session.setAttribute("name",name);
    String dir = getServletInfo();
    File storyFileDir = new File(dir);
    storyFileDir.mkdir();
    File f = new File(storyFileDir,name);
    //列出小说的内容
    try {
        RandomAccessFile file = new RandomAccessFile(f, "r");
        String temp = null;
        while ((temp = file.readUTF()) != null) {
            out.print("<br>"+temp);
        }
        file.close();
    } catch (Exception e) {}
%>
<p>请输入续写的内容：</p>
<form action="<%=str%>" method="post" name="form">
    <textarea name="message" rows="12" cols="40" wrap="physical"></textarea>
    <br><input type="submit" value="提交" name="submit">
</form>
</body>
</html>
