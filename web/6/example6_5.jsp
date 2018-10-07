<%--
  User: Starry
  Date: 2018/9/28
  Time: 18:50
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="inquire" tagdir="/WEB-INF/tags/6" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="" method="post">
        排序记录:<input type="radio" name="orderType" value="price"> 按价格(price)排序
        <input type="radio" name="orderType" value="madeTime">按生产日期(madeTime)排序
        <input type="submit" name="g" value="提交">
    </form>
<%
    String orderType = request.getParameter("orderType");
    if(orderType == null) orderType = "";
%>
<inquire:SortTag orderType="<%=orderType%>" />
根据排序方式：<%=orderType%>,排序的记录：
<br><%=orderResult%>
</body>
</html>
