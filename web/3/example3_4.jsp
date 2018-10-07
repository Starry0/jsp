<%--
  User: Starry
  Date: 2018/9/14
  Time: 17:45
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="show" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body bgcolor="#00ffff">
    <%
        LinkedList listName = new LinkedList();
        LinkedList listScore = new LinkedList();
        listName.add("张三");
        listScore.add(new Double(87));
        listName.add("李四");
        listScore.add(new Double(65));
        listName.add("刘小记");
        listScore.add(new Double(57));
        listName.add("王大林");
        listScore.add(new Double(8799));
        listName.add("孙进步");
        listScore.add(new Double(88));
    %>
    <p>成绩单：</p>
    <show:Sort listName="<%=listName%>" listScore="<%=listScore%>" title="姓名" item="高等数学" />
</body>
</html>
