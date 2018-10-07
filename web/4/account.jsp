<%--
  User: Starry
  Date: 2018/9/22
  Time: 18:29
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%!
        public String getString(String s) {
            if(s == null) s = "";
            try {
                byte b[] = s.getBytes("ISO-8859-1");
                s = new String(b);
            } catch (Exception e){}
            return s;
        }
    %>
<%
    request.setCharacterEncoding("UTF-8");
    String s = request.getParameter("buy");
    session.setAttribute("goods",s);
%><br>
<%
    String 顾客 = (String)session.getAttribute("customer");
    String 姓名 = (String)session.getAttribute("name");
    String 商品 = (String)session.getAttribute("goods");
//    姓名 = getString(姓名);
//    商品 = getString(商品);
%>
这是结账处，<%=顾客%>的姓名是：<%=姓名%>
<br>你选择购买的商品是：<%=商品%>
</body>
</html>
