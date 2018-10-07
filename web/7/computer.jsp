<%--
  User: Starry
  Date: 2018/10/7
  Time: 11:56
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="tom.jiafei.ComputerBean" %>
<jsp:useBean id="computer" class="tom.jiafei.ComputerBean" scope="session" />
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:setProperty name="computer" property="*" />
<form action="" method="post">
    <input type="text" name="numberOne" value=<jsp:getProperty name="computer" property="numberOne"/> >
    <select name="operator">
        <option value="+">+</option>
        <option value="-">-</option>
        <option value="*">*</option>
        <option value="/">/</option>
    </select>
    <input type="text" name="numberTwo" value=<jsp:getProperty name="computer" property="numberTwo"/> >
    =<jsp:getProperty name="computer" property="result" />
    <br><input type="submit" value="提交你的选择">
</form>
</body>
</html>
