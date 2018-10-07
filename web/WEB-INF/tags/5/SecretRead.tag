<%@ tag import="java.io.*" %>
<%@ variable name-given="content" scope="AT_END" %>
<%@ tag pageEncoding="UTF-8" %>
<%@ attribute name="method" required="true" %>
<%
    File dir = new File("C:/","Students");
    File f = new File(dir,"save.txt");
    StringBuffer mess = new StringBuffer();
    String str;
    try {
//        FileReader in = new FileReader(f);
        InputStreamReader in = new InputStreamReader(new FileInputStream(f),"UTF-8");
        BufferedReader bufferin = new BufferedReader(in);
        String temp;
        while ((temp = bufferin.readLine()) != null) mess.append(temp);
        bufferin.close();
        in.close();
        str = new String(mess);
        if(method.equals("secret")) jspContext.setAttribute("content",str);
        else if(method.equals("unsecret")) {
            char a[] = str.toCharArray();
            for(int i = 0; i < a.length; i ++) a[i] = (char)(a[i]^12);
            str = new String(a);
            jspContext.setAttribute("content",str);
        } else jspContext.setAttribute("content","");
    } catch (Exception ee) {
        jspContext.setAttribute("content","");
    }
%>