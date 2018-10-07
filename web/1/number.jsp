<%--
  User: Starry
  Date: 2018/9/7
  Time: 18:30
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <font size="3">如果一个正整数刚好等于它的真因子之和，这样的正整数为完数。
        <br>例如6 = 1 + 2 + 3 ，因此6是一个完数。
        <br>1 到1000 内的完数有：
        <%
            for (int i = 1; i <= 1000; i ++) {
                int sum = 0;
                for (int j = 1; j < i; j ++) {
                    if(i%j == 0) sum += j;
                }
                if(sum == i) out.print(" "+ i);
            }
        %>
    </font>

</body>
</html>
