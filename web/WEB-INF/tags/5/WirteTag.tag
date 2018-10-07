<%@ tag import="java.io.*" %>
<%@ tag pageEncoding="UTF-8" %>
<%@ attribute name="dir" required="true" %>
<%@ attribute name="fileName" required="true" %>
<%@ attribute name="content" type="java.lang.String" required="true" %>
<%!
public void writeContent(String str, File f) {
    try {
//        FileWriter outfile = new FileWriter(f);
        //设置写入的编码，统一下编码为UTF-8防止乱码
        OutputStreamWriter outfile = new OutputStreamWriter(new FileOutputStream(f), "UTF-8");
        BufferedWriter bufferout = new BufferedWriter(outfile);

        bufferout.write(str);
        bufferout.close();outfile.close();
    } catch (Exception e) {
    }
}
%>
<%
File mulu = new File(dir);
mulu.mkdir();
File f = new File(mulu,fileName);
if(content.length() > 0) {
    writeContent(content,f);
    out.println("成功写入");
}
%>