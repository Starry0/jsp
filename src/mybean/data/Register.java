package mybean.data;

public class Register {
    String logname = "", email = "", backNews = "请填注册信息";

    public String getBackNews() {
        return backNews;
    }

    public String getEmail() {
        return email;
    }

    public String getLogname() {
        return logname;
    }

    public void setBackNews(String backNews) {
        this.backNews = backNews;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setLogname(String logname) {
        this.logname = logname;
    }
}
