package mybean.mobiledata;
import com.sun.rowset.*;
public class DataByPage {
    CachedRowSetImpl rowSet = null;    //存储表中全部的行集对象
    int pageSize = 1;       //每页显示的记录数
    int totalPage = 1;      //分页后的总页数
    int currentPage = 1;     //当前显示页

    public CachedRowSetImpl getRowSet() {
        return rowSet;
    }

    public void setRowSet(CachedRowSetImpl rowSet) {
        this.rowSet = rowSet;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }
}
