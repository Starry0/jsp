<%--
  User: Starry
  Date: 2018/9/28
  Time: 18:57
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="inquire" tagdir="/WEB-INF/tags/6" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="" method="post">
        选择：<select name="ziduan">
            <option value="name">产品名称</option>
            <option value="number">产品号</option>
        </select>
        含有：<input type="text" name="keyWord">
        <input type="submit" name="g" value="提交">
    </form>
<%
    request.setCharacterEncoding("UTF-8");
    String ziduan = request.getParameter("ziduan");
    String keyWord = request.getParameter("keyWord");
    if(ziduan == null || keyWord == null) {
        ziduan = "";
        keyWord = "";
    }
    out.print("关键字"+keyWord);
%>
<inquire:KeyWord keyWord="<%=keyWord%>" ziduan="<%=ziduan%>" />
查询到的记录：
<br><%=foundResult%>
</body>
</html>
