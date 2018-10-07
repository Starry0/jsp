<%@ tag pageEncoding="UTF-8" %>
<%@ attribute name="numberA" required="true" %>
<%@ attribute name="numberB" required="true" %>
<%@ attribute name="numberC" required="true" %>
<%@ variable name-given="area" variable-class="java.lang.Double" scope="AT_END" %>

<%!
    public double getTriangleArea(double a, double b, double c) {
        if(a+b > c && a+c>b && b+c>a) {
            double p = (a+b+c)/2.0;
            double area = Math.sqrt(p*(p-a)*(p-b)*(p-c));
            return area;
        }else{
            return -1;
        }
    }
%>
<%
    try {
        double a = Double.parseDouble(numberA);
        double b = Double.parseDouble(numberB);
        double c = Double.parseDouble(numberC);
        double area = getTriangleArea(a,b,c);
        jspContext.setAttribute("area",new Double(area));
    } catch (Exception e) {
        jspContext.setAttribute("area",new Double(-1));
    }

%>