<%--
  User: Starry
  Date: 2018/10/7
  Time: 12:36
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="tom.jiafei.ReadFile" %>
<jsp:useBean id="file" class="tom.jiafei.ReadFile" scope="session" />
<jsp:setProperty name="file" property="fileDir" param="fileDir" />
<p>改目录：<jsp:getProperty name="file" property="fileDir"/>有如下文件：</p>
<jsp:getProperty name="file" property="listFile" />
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="" method="post">
        输入一个文件的名字：<input type="text" name="fileName">
        <input type="submit" value="提交">
    </form>
<jsp:setProperty name="file" property="fileName" param="fileName" />
文件：<jsp:getProperty name="file" property="fileName" />内容如下：<br>
<jsp:getProperty name="file" property="readContent" />
<br><a href="select.jsp">重新选择目录</a>
</body>
</html>
