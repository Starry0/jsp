<%@ tag pageEncoding="UTF-8" %>
<%@ attribute name="number" required="true" %>
<%@ variable name-given="message" scope="AT_END" %>
<%
String mess = "";
Integer integer = (Integer)session.getAttribute("save");
System.out.println(integer);
int realnumber = integer.intValue();
int guessNumber = 0;
boolean boo = true;
try {
    guessNumber = Integer.parseInt(number);
} catch (Exception e){
    boo = false;
}
if(boo) {
    int n = ((Integer)session.getAttribute("count")).intValue();
    if(guessNumber == realnumber) {
        n = n + 1;
        session.setAttribute("count",new Integer(n));
        mess = "你猜对了，这是第" + n + "次猜测";
    } else if(guessNumber > realnumber) {
        n += 1;
        session.setAttribute("count",new Integer(n));
        mess = "你猜大了，这是第"+n+"次猜测";
    } else if(guessNumber < realnumber) {
        n += 1;
        session.setAttribute("count",new Integer(n));
        mess = "你猜小了，这是第"+n+"次猜测";
    } else if(number.equals("你还没开始猜测")) {
        mess = "你还没开始猜测";
    }
    jspContext.setAttribute("message",mess);
} else {
    jspContext.setAttribute("message","请输入你的猜测");
}
%>