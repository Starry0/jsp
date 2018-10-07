<%@ tag import="java.io.*" %>
<%@ tag pageEncoding="UTF-8" %>
<%!
int number = 0;
File file = new File("count.txt");
synchronized void countPeople() {
    if(!file.exists()) {
        number++;
        try {
            file.createNewFile();
            FileOutputStream out = new FileOutputStream(file);
            DataOutputStream dataout = new DataOutputStream(out);
            dataout.writeInt(number);
            out.close();
            dataout.close();
        } catch (Exception e) {}
    } else {
        try {
            FileInputStream inputStream = new FileInputStream("count.txt");
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            number = dataInputStream.readInt();
            number ++;
            inputStream.close();
            dataInputStream.close();
            FileOutputStream fileOutputStream = new FileOutputStream("count.txt");
            DataOutputStream dataOutputStream = new DataOutputStream(fileOutputStream);
            dataOutputStream.writeInt(number);
            fileOutputStream.close();
            dataOutputStream.close();
        } catch (Exception e) {}

    }
}
%>
<%
    String str = (String)session.getAttribute("count");
    if(str == null) {
        countPeople();
        String personCount = String.valueOf(number);
        session.setAttribute("count",personCount);
    }
%>
<P>你是第<%=(String)session.getAttribute("count")%>个访问本网站的用户。</P>