package tom.jiafei;

public class Circle2 {
    double radius = 1;
    double circleArea = 0;
    double circleLength = 0;

    public double getRadius() {
        return radius;
    }
    public void setRadius(double newRadius) {
        radius = newRadius;
    }

    public double getCircleArea() {
        return Math.PI*radius*radius;
    }

    public double getCircleLength() {
        return Math.PI*radius*2.0;
    }
}
