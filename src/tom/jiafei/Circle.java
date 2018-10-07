package tom.jiafei;

public class Circle {
    int radus;
    public Circle() {
        radus = 1;
    }
    public int getRadus() {
        return radus;
    }
    public void setRadus(int newRadius) {
        radus = newRadius;
    }
    public double circleArea() {
        return Math.PI*radus*radus;
    }
    public double circleLength() {
        return 2.0*Math.PI*radus;
    }
}
