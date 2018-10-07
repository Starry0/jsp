<%@ tag import="java.io.*" %>
<%@ tag pageEncoding="UTF-8" %>
<%@ attribute name="fileDir" required="true" %>
<%@ attribute name="fileName" required="true" %>
<%
    try {
        File dir = new File(fileDir);
        File f = new File(dir,fileName);
//        FileInputStream in = new FileInputStream(f);
//        int m = -1;
//        byte bb[] = new byte[1024];
//        String content = null;
//        StringBuffer s = new StringBuffer();
//        while ((m = in.read(bb)) != -1) {
//            content = new String(bb, 0, m);
//            s.append(content);
//            out.println(content);
//        }
//        System.out.println(s);
//        in.close();
        StringBuffer str = new StringBuffer();
        InputStreamReader in = new InputStreamReader(new FileInputStream(f),"UTF-8");  //上面的代码会有中文乱码，主要是FileInputStream读取不能指定编码
        BufferedReader bufferin = new BufferedReader(in);
        String temp;
        while ((temp = bufferin.readLine()) != null) {
            str.append(temp);
        }
        bufferin.close();
        in.close();
//        System.out.println(str);
        out.print(str);
    } catch (Exception ee) {
        out.print("文件读取失败"+ee);
    }
%>