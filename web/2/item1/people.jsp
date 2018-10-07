<%--
  User: Starry
  Date: 2018/9/7
  Time: 20:29
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%!
        int count = 0;
        StringBuffer personList;
        public void judge() {
            if(count == 0) personList = new StringBuffer();
        }
        public void addPerson(String p) {
            if (count == 0) personList.append(p);
            else personList.append("," + p);
            count++;
        }
    %>
<%
    String name = request.getParameter("name");
    if(name.length() == 0 || name.length() > 10) {
        %>
    <jsp:forward page="inputName.jsp"/>
    <%
    }
    judge();
    addPerson(name);
%>
<p>目前共有<%=count%>人浏览了该页面，他们的名字是：</p>
<%=personList%>
</body>
</html>
