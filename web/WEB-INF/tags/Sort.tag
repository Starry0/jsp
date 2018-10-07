<%@ tag pageEncoding="UTF-8" %>
<%@ attribute name="listName" required="true" type="java.util.LinkedList" %>
<%@ attribute name="listScore" required="true" type="java.util.LinkedList" %>
<%@ attribute name="title" required="true" %>
<%@ attribute name="item" required="true" %>

<%
    for(int i = 0; i < listName.size(); i ++) {
        for(int j = i+1; j < listName.size(); j ++) {
            double a = ((Double)(listScore.get(i))).doubleValue();
            double b = ((Double)(listScore.get(j))).doubleValue();
            if(a > b) {
                String temp = (String)listName.get(i);
                Double r = (Double)listScore.get(i);
                listName.set(i,(String)listName.get(j));
                listScore.set(i,(Double)listScore.get(j));
                listName.set(j,temp);
                listScore.set(j,r);
            }
        }
    }
    out.print("<table border = 1>");
    out.print("<tr>");
        out.print("<th>"+title+"</th>");
        out.print("<th>"+item+"</th>");
    out.print("</tr>");
    for(int i = 0; i < listName.size(); i ++) {
        out.print("<tr>");
        double score = (Double)listScore.get(i);
        String name = (String)listName.get(i);
        if(score < 60) {
            out.print("<td bgcolor = yellow>" + name+"</th>");
            out.print("<td bgcolor = yellow>" + score+"</th>");
        } else {
            out.print("<td>" + name+"</th>");
            out.print("<td>" + score+"</th>");

        }
        out.print("</tr>");
    }
    out.print("</table>");

%>