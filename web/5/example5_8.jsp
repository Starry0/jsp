<%--
  User: Starry
  Date: 2018/9/24
  Time: 16:43
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
    String str = response.encodeURL("continueWrite.jsp");
    %>
<p>选择你想续写的小说的名字：</p>
<form action="<%=str%>" method="post" name="form">
    <input type="radio" name="R" value="spring.doc"> 美丽的故事
    <input type="radio" name="R" value="summer.doc"> 火热的故事
    <input type="radio" name="R" value="autumn.doc"> 秋天的故事
    <input type="radio" name="R" value="winter.doc"> 冬天的故事
    <br><input type="submit" name="g" value="提交">
</form>
</body>
</html>
