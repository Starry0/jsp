package mybean.mobiledata;

import java.util.LinkedList;

public class Login {
    String logname = "",backNews = "未登录";
    LinkedList<String> car;
    public Login(){
        car = new LinkedList<String>();
    }
    public String getLogname() {
        return logname;
    }

    public void setLogname(String logname) {
        this.logname = logname;
    }

    public String getBackNews() {
        return backNews;
    }

    public void setBackNews(String backNews) {
        this.backNews = backNews;
    }

    public LinkedList<String> getCar() {
        return car;
    }
}
