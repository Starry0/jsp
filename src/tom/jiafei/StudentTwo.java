package tom.jiafei;

public class StudentTwo {
    String name = null;
    long number;
    double height, weight;
    public String getName() {
        try {
            byte[] b = name.getBytes("ISO-8859-1");
            name = new String(b,"UTF-8");
            return name;
        } catch (Exception e) {
            return name;
        }
    }

    public void setName(String name) {
        this.name = name;
    }

    public long getNumber() {
        return number;
    }

    public void setNumber(long number) {
        this.number = number;
    }

    public double getHeight() {
        return height;
    }

    public void setHeight(double height) {
        this.height = height;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }
}
