<body bgcolor="yellow">
<p>
    <%
    int size = 1;
    for(int i = 0; i < 3; i ++) {
        size += 1;
        %> <font size=<%=size%> >
        <jsp:doBody />
        </font>
<%
    }
    %>
</p>
</body>