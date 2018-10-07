<%@ tag pageEncoding="UTF-8" %>
<%@ tag import="java.util.*" %>
<%@ attribute name="number" required="true" %>
<%@ variable name-given="listNumber" variable-class="java.util.LinkedList" scope="AT_END" %>

<%
    int count = Integer.parseInt(number);
    LinkedList listBox = new LinkedList(), listNeeded = new LinkedList();
    for(int k = 1; k < 4; k ++) {
        for(int i = 1; i <= 13; i ++) {
            listBox.add(new Integer(i));
        }
    }
    while (count > 0) {
        int m = (int)(Math.random()*listBox.size());
        Integer integer = (Integer)listBox.get(m);
        listNeeded.add(integer);
        listBox.remove(m);
        count --;
    }
    jspContext.setAttribute("listNumber", listNeeded);
%>