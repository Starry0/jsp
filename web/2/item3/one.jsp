<%--
  User: Starry
  Date: 2018/9/7
  Time: 20:54
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@include file="head.txt"%>--%>
<jsp:include page="head.jsp" />
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="" method="get" name="form">
        请输入1至100之间的整数<input type="text" name="number">
        <br><input type="submit" value="送出" name="submit">
    </form>
<%
String num = request.getParameter("number");
    if(num == null) num = "0";
    try {
        int n = Integer.parseInt(num);
        if(n >= 1 && n <= 50) {
            %>
        <jsp:forward page="two.jsp">
            <jsp:param name="number" value="<%=n%>"/>
        </jsp:forward>
    <%
        } else if(n > 50 && n <= 100) {
            %>
        <jsp:forward page="three.jsp">
            <jsp:param name="number" value="<%=n%>"/>
        </jsp:forward>
    <%
        } else if(n > 100){
            %>
        <jsp:forward page="error.jsp">
            <jsp:param name="mess" value="<%=n%>"/>
        </jsp:forward>
    <%
        }
    } catch (Exception e) {
            %>
    <jsp:forward page="error.jsp">
        <jsp:param name="mess" value="<%=e.toString()%>"/>
    </jsp:forward>
    <%
    }
%>
</body>
</html>
