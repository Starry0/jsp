package mybean.data;

public class Series {
    double firstItem;   //数列首项
    double var; //公差或公比
    int number; //求和项数
    double sum; //求和结果
    String name = "";   //数列类别

    public double getFirstItem() {
        return firstItem;
    }

    public void setFirstItem(double firstItem) {
        this.firstItem = firstItem;
    }

    public double getVar() {
        return var;
    }

    public void setVar(double var) {
        this.var = var;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public double getSum() {
        return sum;
    }

    public void setSum(double sum) {
        this.sum = sum;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
