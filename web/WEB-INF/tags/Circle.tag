<%@ tag pageEncoding="UTF-8" %>
<%@ attribute name="numberR" required="true" %>
<%@ variable name-given="area" variable-class="java.lang.Double" scope="AT_END" %>
<%@ variable name-given="message" scope="AT_END" %>

<%!
    public double getCircleArea(double r) {
        return Math.PI*r*r;
    }
%>

<%
    try {
        double r = Double.parseDouble(numberR);
        double area = getCircleArea(r);
        jspContext.setAttribute("area", new Double(area));
        jspContext.setAttribute("message", "圆的面积");
    } catch (Exception e) {
        jspContext.setAttribute("area", new Double(-1));
        jspContext.setAttribute("message", e.toString());
    }

%>