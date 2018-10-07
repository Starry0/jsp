<%@ tag import="java.io.*" %>
<%@ tag pageEncoding="UTF-8" %>
<%@ attribute name="fileContent" required="true" %>
<%@ attribute name="fileDir" required="true" %>
<%@ attribute name="fileName" required="true" %>
<%
    new File(fileDir).mkdir(); //防止fileDir文件夹没有导致报错，先创建下文件夹
    System.out.println(fileDir+"--"+fileName);
    File f = new File(fileDir,fileName);
    try {
        FileOutputStream outputStream = new FileOutputStream(f);
        byte bb[] = fileContent.getBytes();
        outputStream.write(bb,0,bb.length);
        outputStream.close();
        out.println("文件写入成功");
        out.println("<br>文件所在目录："+fileDir);
        out.println("<br>文件的名字："+fileName);
    } catch (Exception e) {
        out.print("文件写入失败"+e);
    }

%>