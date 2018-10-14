<%--
  User: Starry
  Date: 2018/10/13
  Time: 16:22
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="mybean.data.Series" %>
<jsp:useBean id="lie" type="mybean.data.Series" scope="request" />
<html>
<head>
    <title>Title</title>
</head>
<body>
    <table border="1">
        <tr>
            <th>数列的首项</th><th><jsp:getProperty name="lie" property="name" /></th>
            <th>所求项数</th>
            <th>求和结果</th>
        </tr>
        <tr>
            <td><jsp:getProperty name="lie" property="firstItem" /></td>
            <td><jsp:getProperty name="lie" property="var" /></td>
            <td><jsp:getProperty name="lie" property="number" /></td>
            <td><jsp:getProperty name="lie" property="sum" /></td>
        </tr>
    </table>
</body>
</html>
