<%@ page language="java" contentType="text/html; charset=gb2312"%>
<html>
<head>
    <title>执行Applet</title>
</head>
<body>
<%--指定其Java类为Clock.class,所在目录为Applet，类型为applet --%>
<jsp:plugin code="Clock.class" codebase="Applet" type="applet"></jsp:plugin>
</body>
</html>
