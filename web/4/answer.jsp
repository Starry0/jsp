<%--
  User: Starry
  Date: 2018/9/22
  Time: 19:10
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");
        int score = 0;
        String countryName = request.getParameter("R");
        String itemNames[] = request.getParameterValues("item");
        String secretMess = request.getParameter("secret");
        if(countryName.equals("巴西")) score++;
        if(itemNames == null) out.print("没有选择球队<br>");
        else if(itemNames.length >= 2) {
            if(itemNames[0].equals("法国国家队") && itemNames[1].equals("巴西国家队"))
                score++;
        }
        out.print("你的得分："+score);
        out.print("<br>你提交的答案一："+countryName);
        out.print("<br>你提交的答案二：");
        if(itemNames != null)
            for(int k = 0; k < itemNames.length; k ++)
                out.print(" "+itemNames[k]);
        out.println("<br>你提交的隐藏信息："+secretMess);
    %>
</body>
</html>
