<%@ tag pageEncoding="UTF-8" %>
<h4>这是一个Tag文件，负责计算三角形的面积.</h4>
<%@ attribute name="sideA" required="true" %>
<%@ attribute name="sideB" required="true" %>
<%@ attribute name="sideC" required="true" %>
<%!
    public String getAera(double a, double b, double c) {
        if(a+b > c && a+c > b && b+c > a) {
            double p = (a+b+c) / 2.0;
            double area = Math.sqrt(p*(p-a)*(p-b)*(p-c));
            return "<br>三角形的面积:"+area;
        } else {
            return ("<br>"+a+","+b+","+c+"不能构成一个三角形，无法计算面积。");
        }
    }
%>
<%
    out.print("<br>JSP页面传递过来的三条边："+sideA+","+sideB+","+sideC);
    double a = Double.parseDouble(sideA);
    double b = Double.parseDouble(sideB);
    double c = Double.parseDouble(sideC);
    out.print(getAera(a,b,c));
%>