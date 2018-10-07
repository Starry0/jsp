<%@ tag import="java.io.*" %>
<%@ tag pageEncoding="UTF-8" %>
<%@ attribute name="filePath" required="true" %>
<%
    String fileName = filePath.substring(filePath.lastIndexOf("/")+1);  //是lastIndexOf，书上是indexOf错的。
    System.out.println(fileName+"---"+filePath);
    response.setHeader("Content-Disposition","attachment;filename="+fileName);
    //下载的文件
    try {
        //读取文件，并发送给用户下载
        File f = new File(filePath);
        FileInputStream in = new FileInputStream(f);
        OutputStream o = response.getOutputStream();
        byte b[] = new byte[500];
        int n = 0;
        while ((n = in.read(b)) != -1) o.write(b, 0, n);
        o.close();
        in.close();
    } catch (Exception e) {}
%>