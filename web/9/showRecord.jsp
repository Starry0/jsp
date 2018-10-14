<%--
  User: Starry
  Date: 2018/10/13
  Time: 13:43
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="mybean.data.ShowRecordByPage" %>
<jsp:useBean id="database" type="mybean.data.ShowRecordByPage" scope="session" />
<html>
<head>
    <title>Title</title>
</head>
<body>
    你查询的数据库：<jsp:getProperty name="database" property="databaseName" />,
    查询的表：<jsp:getProperty name="database" property="tableName" />。
    <br>记录分<jsp:getProperty name="database" property="pageAllCount" />页，
    每页最多显示<jsp:getProperty name="database" property="pageSize" />条记录，
    目前显示第<jsp:getProperty name="database" property="showPage" />页。
<table border="1">
    <jsp:getProperty name="database" property="formTitle" />
    <jsp:getProperty name="database" property="presentPageResult" />
</table>
<table>
    <tr>
        <td>
            <form action="/helpReadRecord" method="post">
                <input type="hidden" value="previousPage" name="whichPage">
                <input type="submit" value="上一页" name="submit">
            </form>
        </td> <td>
        <form action="/helpReadRecord" method="post">
            <input type="hidden" value="nextPage" name="whichPage">
            <input type="submit" value="下一页" name="submit">
        </form>
    </td>
    </tr>
</table>
</body>
</html>
