<%--
  User: Starry
  Date: 2018/9/13
  Time: 17:08
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="beijing"%>
<%@ taglib tagdir="/WEB-INF/tags/geng" prefix="dalian"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <H3>以下是调用Tag文件的效果：</H3>
    <beijing:AddSum />
    <h3>以下是调用Tag文件的效果</h3>
    <dalian:EvenSum />
</body>
</html>
