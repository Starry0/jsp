<%@ tag pageEncoding="utf-8" %>
<%@ attribute name="color" %>
<%@ attribute name="name" %>
<%@ attribute name="sex" %>
 <tr bgcolor="<%= color%>">
 	<td width=60><%=name%></td>
 	<td width=60><%=sex%></td>
 </tr>
 <jsp:doBody/>