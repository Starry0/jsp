<%--
  User: Starry
  Date: 2018/10/10
  Time: 19:51
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="tom.jiafei.Test" %>
<jsp:useBean id="test" class="tom.jiafei.Test" scope="session" />
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="" method="post">
    选择试题文件：
    <select name="fileName">
        <option value="d:/2000/A.txt">A.txt</option>
        <option value="d:/1000/B.txt">B.txt</option>
        <option value="d:/1000/C.txt">C.txt</option>
    </select>
    <input type="submit" name="sub" value="确定">
</form>
<jsp:setProperty name="test" property="fileName" param="fileName" />
你选择的试题是：<jsp:getProperty name="test" property="fileName"/>
<br><font size="3" color="blue"><jsp:getProperty name="test" property="testContent" /></font>
<br><form action="" method="post">
    请选择：
    <input type="radio" name="selection" value="A">A
    <input type="radio" name="selection" value="B">B
    <input type="radio" name="selection" value="C">C
    <input type="radio" name="selection" value="D">D
    <input type="submit" value="提交答案">
</form>
<jsp:setProperty name="test" property="selection" />
你现在累计得分：<jsp:getProperty name="test" property="score" />
</body>
</html>
