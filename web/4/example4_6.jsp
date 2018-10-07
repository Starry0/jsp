<%--
  User: Starry
  Date: 2018/9/22
  Time: 19:09
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="answer.jsp" method="post" name="form">
        球王“贝利”是哪个国家的人：
        <input type="radio" name="R" value="巴西">巴西
        <input type="radio" name="R" value="德国">德国
        <input type="radio" name="R" value="美国">美国
        <input type="radio" name="R" value="法国" checked="ok">法国
        <br>下列足球队中，哪些队曾经获得过世界杯冠军：<br>
        <input type="checkbox" name="item" value="法国国家队">法国国家队
        <input type="checkbox" name="item" value="中国国家队">中国国家队
        <input type="checkbox" name="item" value="巴西国家队">巴西国家队
        <input type="checkbox" name="item" value="美国国家队">美国国家队
        <input type="hidden" value="喜欢世界杯！" name="secret">
        <br><input type="submit" value="提交" name="submit">
        <input type="reset" value="重置">
    </form>
</body>
</html>
