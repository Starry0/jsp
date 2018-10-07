<%--
  User: Starry
  Date: 2018/9/7
  Time: 19:27
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <p>请输入E-mail：<br></p>
    <form action="" method="get" name="from">
        <input type="text" name="client" value="请输入E-mail">
        <input type="submit" value="送出" name="submit">
    </form>
    <%
        String str = request.getParameter("client");
        if(str != null) {
            int index = str.indexOf("@");
            if(index == -1) {
                %>
    <br> 你的E-mail地址中没有@。
    <%      }
            else {
                int space = str.indexOf(" ");
                if(space != -1) {
                    %>
    <br> 你的E-mail地址含有非法的空格。
    <%
                } else {
                    int start = str.indexOf("@");
                    int end = str.lastIndexOf("@");
                    if(start != end) {
                        %>
    <br> 你的E-mail地址有两个以上的符号：@。
    <%
                    } else {
                        out.print("<br>"+str);
                        %>
    <br>你的E-mail地址书写正确。
    <%
                    }
                }
            }
        }
    %>
</body>
</html>
