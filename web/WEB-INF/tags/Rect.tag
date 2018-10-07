<%@ tag pageEncoding="UTF-8" %>
<%@ attribute name="numberH" required="true" %>
<%@ attribute name="numberW" required="true" %>
<%@ variable name-given="area1" variable-class="java.lang.Double" scope="AT_END" %>
<%@ variable name-given="message1" scope="AT_END" %>


<%
    try {
        double h = Double.parseDouble(numberH);
        double w = Double.parseDouble(numberW);
        double area = h*w;
        jspContext.setAttribute("area1", new Double(area));
        jspContext.setAttribute("message1", "矩形的面积");
    } catch (Exception e) {
        jspContext.setAttribute("area1", new Double(-1));
        jspContext.setAttribute("message1", e.toString());
    }

%>