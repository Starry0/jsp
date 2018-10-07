<%--
  User: Starry
  Date: 2018/9/26
  Time: 20:42
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>选择要下载的文件</p>
    <form action="load.jsp" method="post" name="form">
        <select name="finePath" size="3">
            <option selected value="D:/2000/accept.jsp">accept.jsp</option>
            <option selected value="D:/2000/acceptFile.jsp">acceptFile.jsp</option>
            <option selected value="D:/2000/c.jpg">c.jpg</option>
            <option selected value="D:/2000/hello.txt">hello.txt</option>
        </select>
        <br><input type="submit" value="提交你的选择">
    </form>
</body>
</html>
