<%@tag pageEncoding="UTF-8" %>
<%@ attribute name="numberA" required="true" %>
<%@ attribute name="numberB" required="true" %>
<%@ attribute name="operator" required="true" %>
<%@ variable name-given="result" scope="AT_END" variable-class="java.lang.Double" %>

<%
    try {
        double a = Double.parseDouble(numberA);
        double b = Double.parseDouble(numberB);
        double result = 0;
        if(operator.equals("+")) {
            result = a + b;
        } else if(operator.equals("-")) {
            result = a - b;
        } else if(operator.equals("*")) {
            result = a*b;
        } else if(operator.equals("/")) {
            result = a/b;
        }
        jspContext.setAttribute("result",result);
    } catch (Exception e) {
        jspContext.setAttribute("resutl","发现异常："+e);
    }
%>