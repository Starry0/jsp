<%--
  User: Starry
  Date: 2018/9/20
  Time: 16:40
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="pic" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <font size="2" color="blue" >表格每行重复显示一副图像</font>
    <table border="2">
        <pic:Image>
            <image src="a.jpg" width="80" height="60" />
        </pic:Image>
        <pic:Image>
            <image src="b.jpeg" width="80" height="60" />
        </pic:Image>
        <pic:Image>
            <image src="c.jpg" width="80" height="60" />
        </pic:Image>
    </table>
</body>
</html>
