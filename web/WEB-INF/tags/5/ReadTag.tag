<%@ tag import="java.io.*" %>
<%@ tag pageEncoding="UTF-8" %>
<%@ attribute name="dir" required="true" %>
<%@ attribute name="fileName" required="true" %>
<%@ variable name-given="result" scope="AT_END" %>

<%!
    public String readContent(File f) {
        StringBuffer str = new StringBuffer();
        try {
//            FileReader in = new FileReader(f);
            //使用上面那行会出现中文乱码，要设置读入的编码，InputStreamReader可以设置编码
            InputStreamReader in = new InputStreamReader(new FileInputStream(f),"UTF-8");
            BufferedReader bufferin = new BufferedReader(in);
            String temp;
            while ((temp = bufferin.readLine()) != null) {
                str.append(temp);
            }
            bufferin.close();
            in.close();
        } catch (Exception e){}
        return new String(str);
    }
%>
<%
File f = new File(dir,fileName);
String fileContent = readContent(f);
System.out.println(fileContent);
jspContext.setAttribute("result",fileContent);
%>