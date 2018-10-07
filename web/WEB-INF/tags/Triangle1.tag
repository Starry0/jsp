<%@ tag pageEncoding="UTF-8" %>
<%@ attribute name="a" required="true" %>
<%@ attribute name="b" required="true" %>
<%@ attribute name="c" required="true" %>
<%@ variable name-given="result" scope="AT_END" %>
<%
    String mess = "";
    try {
        double sideA = Double.parseDouble(a);
        double sideB = Double.parseDouble(b);
        double sideC = Double.parseDouble(c);
        if(sideA+sideB>sideC && sideA+sideC>sideB && sideB+sideC>sideA) {
            double p = (sideA+sideB+sideC)/2.0;
            double area = Math.sqrt(p*(p-sideA)*(p-sideB)*(p-sideC));
            mess = ""+area;
        } else {
            mess = "不能构成一个三角形，无法计算面积。";
        }
    } catch (Exception e) {
        mess = "无法计算面积。"+e;
    }
    jspContext.setAttribute("result",mess);
%>