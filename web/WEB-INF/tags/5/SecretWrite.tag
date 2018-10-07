<%@ tag import="java.io.*" %>
<%@ tag pageEncoding="UTF-8" %>
<%@ variable name-given="message" scope="AT_END" %>
<%@ attribute name="content" required="true" %>
<%
File dir = new File("C:/","Students");
dir.mkdir();
File f = new File(dir,"save.txt");
try {
//    FileWriter outfile = new FileWriter(f);
    OutputStreamWriter outfile = new OutputStreamWriter(new FileOutputStream(f),"UTF-8");
    BufferedWriter bufferedWriter = new BufferedWriter(outfile);
    char a[] = content.toCharArray();
    for(int i = 0; i < a.length; i ++) a[i] = (char)(a[i]^12);
    content = new String(a);
    bufferedWriter.write(content);
    bufferedWriter.close();
    outfile.close();
    jspContext.setAttribute("message","文件加密成功");
} catch (Exception e) {
    jspContext.setAttribute("message","文件加密失败");
}
%>