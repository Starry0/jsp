package mybean.data;

public class Login {
    String logname = "", backNews = "未登陆";

    public void setLogname(String logname) {
        this.logname = logname;
    }

    public void setBackNews(String backNews) {
        this.backNews = backNews;
    }

    public String getLogname() {
        return logname;
    }

    public String getBackNews() {
        return backNews;
    }
}
