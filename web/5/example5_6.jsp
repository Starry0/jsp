<%@ page import="java.io.*" %><%--
  User: Starry
  Date: 2018/9/24
  Time: 16:11
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        File dir = new File("D:/","Students");
        dir.mkdir();
        File f = new File(dir,"hello.txt");
        try {
            FileOutputStream outfile = new FileOutputStream(f);
            BufferedOutputStream bufferout = new BufferedOutputStream(outfile);
            byte b[] = "你们好，很高兴认识你们呀！<br>nice to meet you.".getBytes();
            bufferout.write(b);
            bufferout.close();
            outfile.close();
            FileInputStream in = new FileInputStream(f);
            BufferedInputStream bufferin = new BufferedInputStream(in);
            byte c[] = new byte[90];
            int n = 0;
            while((n = bufferin.read(c)) != -1) {
                String temp = new String(c, 0, n);
                out.print(temp);
            }
            bufferin.close();
            in.close();
        } catch (Exception e){}
    %>
</body>
</html>
