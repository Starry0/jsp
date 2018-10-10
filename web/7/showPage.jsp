<%--
  User: Starry
  Date: 2018/10/10
  Time: 15:40
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="tom.jiafei.ShowRecordByPage" %>
<jsp:useBean id="look" class="tom.jiafei.ShowRecordByPage" scope="session" />
<jsp:setProperty name="look" property="databaseName" value="warehouse" />
<jsp:setProperty name="look" property="tableName" value="product" />
<jsp:setProperty name="look" property="user" value="root" />
<jsp:setProperty name="look" property="password" value="123456789" />
<jsp:setProperty name="look" property="pageSize" value="3" />
<html>
<head>
    <title>Title</title>
</head>
<body>
数据库<jsp:getProperty name="look" property="databaseName"/>中
<jsp:getProperty name="look" property="tableName"/>表的记录将分页显示。
<br>共有<jsp:getProperty name="look" property="pageAllCount" />页，
每页最多显示<jsp:getProperty name="look" property="pageSize" />条记录。
<jsp:setProperty name="look" property="showPage" />
<jsp:getProperty name="look" property="presentPageResult" />
<br>单击“前一页”或“后一页”按钮查看记录（当前显示第
<jsp:getProperty name="look" property="showPage"/>页）。
<table>
    <tr>
        <td><form action="">
            <input type="hidden" name="showPage" value="<%=look.getShowPage()-1%>">
            <input type="submit" name="g" value="前一页">
        </form></td>
        <td><form action="">
            <input type="hidden" name="showPage" value="<%=look.getShowPage()+1%>">
            <input type="submit" name="g" value="后一页">
        </form></td>
        <td><form action="">
            输入页码：<input type="text" name="showPage" src="5">
            <input type="submit" name="g" value="提交">
        </form></td>
    </tr>
</table>

</body>
</html>
