<%--
  User: Starry
  Date: 2018/10/7
  Time: 11:32
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="tom.jiafei.CalendarBean" %>
<jsp:useBean id="rili" class="tom.jiafei.CalendarBean" scope="request" />
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="" method="post">
        选择日历的年份：
        <select name="year">
            <%
            for(int i = 2009; i < 2050; i ++) {
                %><option value="<%=i%>"><%=i%>年</option>
            <%
            }
            %>
        </select>
        选择日历的月份：
        <select name="month">
            <%
                for(int i = 1; i <= 12; i ++) {
            %><option value="<%=i%>"><%=i%>月</option>
            <%
                }
            %>
        </select>
        <br><input type="submit" value="提交你的选择" name="submit">
    </form>
    <jsp:setProperty name="rili" property="*" />
    <font color="red"><jsp:getProperty name="rili" property="year" /></font>年
    <font color="blue"><jsp:getProperty name="rili" property="month" /></font>月
    的日历：
    <jsp:getProperty name="rili" property="calendar" />
</body>
</html>
