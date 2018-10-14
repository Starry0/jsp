<%--
  User: Starry
  Date: 2018/10/14
  Time: 13:11
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="mybean.data.Auadratic" %>
<jsp:useBean id="computer" type="mybean.data.Auadratic" scope="request" />
<html>
<head>
    <title>Title</title>
</head>
<body>
    <jsp:getProperty name="computer" property="a"/>x&sup2+<jsp:getProperty name="computer" property="b"/>
    x+<jsp:getProperty name="computer" property="c" /> = 0 ：
    <br><jsp:getProperty name="computer" property="mess" /><br>
    <%
        if(!computer.getMess().startsWith("没有")) {
            %>x1:<jsp:getProperty name="computer" property="x1" /> x2:<jsp:getProperty name="computer" property="x2"/>
    <%
        }
    %>
    </body>
</html>
