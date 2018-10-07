<%@ page import="java.awt.image.*" %>
<%@ page import="java.awt.*" %>
<%@ page import="java.awt.geom.Ellipse2D" %>
<%@ page import="java.awt.geom.AffineTransform" %>
<%@ page import="java.io.OutputStream" %>
<%@ page import="com.sun.image.codec.jpeg.JPEGImageEncoder" %>
<%@ page import="com.sun.image.codec.jpeg.JPEGCodec" %><%--
  User: Starry
  Date: 2018/9/22
  Time: 19:52
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="" method="get" name="form">
    <input type="submit" value="观看" name="submit">
</form>
<%
    String str = request.getParameter("submit");
    if(str != null) {
        response.setContentType("image/jpeg");
        int width = 260, height = 260;
        BufferedImage image = new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);
        Graphics g = image.getGraphics();
        g.setColor(Color.white);
        g.fillRect(0,0,width,height);
        Graphics2D g_2d = (Graphics2D)g;
        Ellipse2D ellipse = new Ellipse2D.Double(20,50,120,50);
        g_2d.setColor(Color.blue);
        AffineTransform trans = new AffineTransform();
        for(int i = 1; i < 24; i ++) {
            trans.rotate(15.0*Math.PI/180,75,75);
            g_2d.setTransform(trans);
            g_2d.draw(ellipse);
        }
        g.dispose();
        OutputStream outClient = response.getOutputStream();
        JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(outClient);
        encoder.encode(image);
    }
%>
</body>
</html>
