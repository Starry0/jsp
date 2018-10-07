<%@ tag pageEncoding="UTF-8" %>
<%@ attribute name="number" required="true" %>
<%@ variable name-given="result" scope="AT_END" %>

<%
String mess = "";
char readChar = (char)session.getAttribute("save");
char guessChar = 'a';
boolean foo = true;
try {
    guessChar = number.charAt(0);
} catch (Exception e) {
    foo = false;
}
if(foo) {
    int n = ((Integer)session.getAttribute("count")).intValue();
    n += 1;
    session.setAttribute("count",new Integer(n));
    if(guessChar > readChar) {
        mess = "你猜大了，这是你第"+n+"次猜测！";
    } else if(guessChar == readChar) {
        mess = "你猜对了，这是你第"+n+"次猜测！";
    } else if(guessChar < readChar) {
        mess = "你猜小了，这是你第"+n+"次猜测！";
    }
    jspContext.setAttribute("result",mess);
} else {
    jspContext.setAttribute("result","请输入你的猜测!");
}
%>