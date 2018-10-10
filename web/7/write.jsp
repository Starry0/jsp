<%--
  User: Starry
  Date: 2018/10/7
  Time: 17:13
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="tom.jiafei.WriteFile" %>
<jsp:useBean id="ok" class="tom.jiafei.WriteFile" scope="page" />
<%--<jsp:setProperty name="ok" property="filePath" param="filePath" />--%>
<%--<jsp:setProperty name="ok" property="fileName" param="fileName" />--%>
<%--<jsp:setProperty name="ok" property="fileContent" param="fileContent" />--%>
<%
    request.setCharacterEncoding("UTF-8");
    String fileContent = request.getParameter("fileContent");
    String filePath = request.getParameter("filePath");
    String fileName = request.getParameter("fileName");
    if(fileContent != null && fileContent != null && fileName != null){     //由于用param传的话，fileContent会出现乱码，就设置下接受编码用java代码设置值
        ok.setFilePath(filePath);
        ok.setFileName(fileName);
        ok.setFileContent(fileContent);
//        System.out.println(fileContent);
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="" method="post">
        请选择一个目录：<select name="filePath">
        <option value="C:/1000">C:/1000</option>
        <option value="C:/2000">C:/2000</option>
    </select>
        <br>输入保存文件的名字：<input type="text" name="fileName">
        <br>输入文件的内容：<br>
        <textarea name="fileContent" rows="10" cols="40"></textarea>
        <br><input type="submit" value="提交">
    </form>
    <%
    if(ok.isSuccess()) {
        %>
    你写文件成功，文件所在目录：<jsp:getProperty name="ok" property="filePath" />
    <br>文件名字：<jsp:getProperty name="ok" property="fileName" />
    <%
    }
    %>
</body>
</html>
