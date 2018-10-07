<%@ page pageEncoding="utf-8" %>
<HTML><BODY>
<P>梯形的面积公式是（a+b）*h/2.
<%      String str1=request.getParameter("a");
        String str2=request.getParameter("b");
		String str3=request.getParameter("h");
        double a=Double.parseDouble(str1);		
        double b=Double.parseDouble(str2);
        double h=Double.parseDouble(str3);
		double s;
       s=(a+b)*h/2;
	   out.print("面积："+s);
%>
</BODY></HTML>