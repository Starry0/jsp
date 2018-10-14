<%--
  User: Starry
  Date: 2018/10/14
  Time: 18:55
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="mybean.mobiledata.DataByPage" %>
<%@page import="com.sun.rowset.*" %>
<jsp:useBean id="dataBean" class="mybean.mobiledata.DataByPage" scope="session"  />
<html>
<head>
    <%@include file="head.txt"%>
    <title>显示手机</title>
</head>
<body style="background-color: #66FFAA">
<div align="center">
    <br>当前显示的内容是：<br>
    <table border="2">
        <tr>
            <th>手机标识号</th>
            <th>手机名称</th>
            <th>手机制造商</th>
            <th>手机价格</th>
            <th>查询详细</th>
            <td><p style="color: blue">添加到购物车</p></td>
        </tr>
        <jsp:setProperty name="dataBean" property="pageSize" param="pageSize" />
        <jsp:setProperty name="dataBean" property="currentPage" param="currentPage" />
        <%
            CachedRowSetImpl rowSet = dataBean.getRowSet();
            if(rowSet == null) {
                out.print("没有任何查询信息，无法浏览");
                return;
            }
            rowSet.last();
            int totalRecord = rowSet.getRow();
            out.print("全部记录数"+totalRecord);
            int pageSize = dataBean.getPageSize();
            int totalPage = dataBean.getTotalPage();
            if(totalRecord%pageSize == 0) totalPage = totalRecord / pageSize;
            else totalPage = totalRecord/pageSize+1;
            dataBean.setPageSize(pageSize);
            dataBean.setTotalPage(totalPage);
            if(totalPage >= 1) {
                if(dataBean.getCurrentPage() < 1) dataBean.setCurrentPage(dataBean.getTotalPage());
                if(dataBean.getCurrentPage() > dataBean.getTotalPage()) dataBean.setCurrentPage(1);
                int index = (dataBean.getCurrentPage()-1)*pageSize+1;
                rowSet.absolute(index);
                boolean boo = true;
                for(int i = 1; i <= pageSize&&boo; i ++) {
                    String number = rowSet.getString(1);
                    String name = rowSet.getString(2);
                    String maker = rowSet.getString(3);
                    String price = rowSet.getString(4);
                    String goods = "("+number+","+name+","+maker+","+price+")#"+price;  //  便于购物车计算价格，尾缀上“#价格值”
                    goods = goods.replaceAll("\\p{Blank}","");
                    String button = "<form action='/putGoodsServlet' method='post'>" +
                            "<input type='hidden' name='java' value="+goods+">" +
                            "<input type='submit' value='放入购物车'></form>";
                    String detail = "<form action='showDetail.jsp' method='post'>" +
                            "<input type='hidden' name='xijie' value="+number+">" +
                            "<input type='submit' value='查看细节'></form>";
                    System.out.println(button);
                    System.out.println(detail);
                    out.print("<tr><td>"+number+"</td><td>"+name+"</td><td>"+maker+"</td><td>"+price+"</td><td>"+
                    detail+"</td><td>"+button+"</td></tr>");
                    boo = rowSet.next();
                }
            }
        %>
    </table>
    <br>每页最多显示<jsp:getProperty name="dataBean" property="pageSize" />条信息
    <br>当前显示第<span style="color: blue"><jsp:getProperty name="dataBean" property="currentPage"/></span>页，共有
    <span style="color: blue;"><jsp:getProperty name="dataBean" property="totalPage"/></span>页。
    <table>
        <tr><td>
            <form action="" method="post">
                <input type="hidden" name="currentPage" value="<%=dataBean.getCurrentPage()-1%>">
                <input type="submit" value="上一页">
            </form>
        </td><td>
            <form action="" method="post">
                <input type="hidden" name="currentPage" value="<%=dataBean.getCurrentPage()+1%>">
                <input type="submit" value="下一页">
            </form>
        </td></tr><tr><td>
            <form action="" method="post">
                每页显示<input type="text" name="pageSize" value="2" size="3">条记录
                <input type="submit" value="确定">
            </form>
        </td><td>
            <form action="" method="post">
                输入页码：<input type="text" name="currentPage" size="2">
                <input type="submit" value="提交">
            </form>
        </td></tr>
    </table>
</div>
</body>
</html>
