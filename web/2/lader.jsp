<%--
  User: Starry
  Date: 2018/9/7
  Time: 21:52
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    int upper = Integer.parseInt(request.getParameter("upper"));
    int bottom = Integer.parseInt(request.getParameter("bottom"));
    int height = Integer.parseInt(request.getParameter("height"));
    double area = 1.0*(upper+bottom)*height/2;
%>
<p>上底：<%=upper%>,下底：<%=bottom%>,高：<%=height%><br></br>面积为：<%=area%></p>
</body>
</html>
