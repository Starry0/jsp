<%@ tag pageEncoding="UTF-8" %>
<P>这是一个Tag文件，负责计算1-100内的偶数之和</P>
<%
    int sum = 0;
    for(int i = 1; i <= 100; i ++) {
        if(i%2 == 0) sum += i;
    }
    out.println(sum);
%>