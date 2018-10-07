<%--
  User: Starry
  Date: 2018/9/20
  Time: 17:35
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="computer" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>计算矩形的面积：</h2>
    <form action="" method="get" name="rect">
        <table>
            <tr><td>输入数值H</td>
                <td><input type="text" name="h"></td>
            </tr>
            <tr><td>输入数值W</td>
                <td><input type="text" name="w"></td>
            </tr>
        </table>
        <input type="submit" value="提交">
    </form>
    <h2>计算圆的面积：</h2>
    <form action="" method="get" name="circle">
        <table>
            <tr><td>输入半经R:</td>
                <td><input type="text" name="R"></td>
            </tr>
        </table>
        <input type="submit" value="提交">
    </form>
    <%
        String h = request.getParameter("h");
        String w = request.getParameter("w");
        String r = request.getParameter("R");
        if(r != null) {
            %><computer:Circle numberR="<%=r%>"/>
            <%=message%>
            <%=area%>
        <%
        } else if(h !=null && w != null){
            %>
            <computer:Rect numberH="<%=h%>" numberW="<%=w%>" />
            <%=message1%>
            <%=area1%>
        <%
        }
    %>
</body>
</html>
