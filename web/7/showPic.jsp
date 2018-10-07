<%--
  User: Starry
  Date: 2018/10/7
  Time: 12:10
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="tom.jiafei.Play" %>
<jsp:useBean id="play" class="tom.jiafei.Play" scope="session" />
<jsp:setProperty name="play" property="imageNumber" param="imageNumber" />
<jsp:getProperty name="play" property="playImage" />
<html>
<head>
    <title>Title</title>
</head>
<body>
    <table>
        <form action="" method="post">
            <tr><td><input type="submit" name="ok" value="上一张"></td>
            <input type="hidden" name="imageNumber" value="<%=play.getImageNumber()-1%>">

        </form>
        <form action="" method="post">
            <td><input type="submit" name="ok" value="下一张"></td>
            <input type="hidden" name="imageNumber" value="<%=play.getImageNumber()+1%>">
            </tr>
        </form>
    </table>
</body>
</html>
