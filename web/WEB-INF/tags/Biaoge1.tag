<%@ tag pageEncoding="UTF-8" %>
<%@ attribute name="color"%>
<%@ attribute name="name"%>
<%@ attribute name="sex"%>
<%@ attribute name="email"%>
<tr bgcolor="<%=color%>">
    <td width="60"><%=name%></td>
    <td width="60"><%=sex%></td>
    <td width="60"><%=email%></td>
</tr>
<jsp:doBody />