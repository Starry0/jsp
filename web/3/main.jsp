<%@ page pageEncoding="utf-8" %>
<HTML><BODY>
<P>动态标记lader.jsp页面。
<jsp:include page="lader.jsp" >
<jsp:param name="a" value="12" />
<jsp:param name="b" value="16" />
<jsp:param name="h" value="6" />
</jsp:include>
</BODY></HTML>