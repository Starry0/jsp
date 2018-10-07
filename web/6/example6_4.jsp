<%--
  User: Starry
  Date: 2018/9/28
  Time: 18:23
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="byNumber.jsp" method="post">
        根据产品号查询
        <br>输入产品号：<input type="text" name="number">
        <input type="submit" value="提交" name="g">
    </form>
<form action="byPrice.jsp" method="post">
    根据价格查询：
    <br>价格在<input type="text" name="priceMin" size="5">至
    <input type="text" name="priceMax" size="5">之间
    <input type="submit" value="提交">
</form>
</body>
</html>
