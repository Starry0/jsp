<%@ page import="java.io.*" %><%--
  User: Starry
  Date: 2018/9/26
  Time: 19:47
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <title>Title</title>
</head>
<body>
    <%
    try {
        InputStream in = request.getInputStream();
        File dir = new File("C:/1000");
        dir.mkdir();
        File f = new File(dir,"B.txt");
        FileOutputStream o = new FileOutputStream(f);
        byte b[] = new byte[1000];
        int n;
        while ((n = in.read(b)) != -1) o.write(b, 0, n);
        o.close();
        in.close();
        out.print("文件已上传");
    } catch (Exception e) {
        out.print("上传失败"+e);
    }
    %>
</body>
</html>
