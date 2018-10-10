package tom.jiafei;

public class Car {
    String number, name, madeTime;

    public String getName() {
        return name;
    }

    public void setNumber(String number) {
        try {
            byte[] cc = number.getBytes("ISO-8859-1");
            number = new String(cc,"UTF-8");
        } catch (Exception e) {}
        this.number = number;
    }

    public void setName(String name) {
        try {
            byte[] cc = name.getBytes("ISO-8859-1");
            name = new String(cc,"UTF-8");
        } catch (Exception e) {}
        this.name = name;
    }

    public String getMadeTime() {
        return madeTime;
    }

    public String getNumber() {
        return number;
    }

    public void setMadeTime(String madeTime) {
        try {
            byte[] cc = madeTime.getBytes("ISO-8859-1");
            madeTime = new String(cc,"UTF-8");
        } catch (Exception e) {}
        this.madeTime = madeTime;
    }
}
