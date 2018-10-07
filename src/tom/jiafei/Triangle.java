package tom.jiafei;

public class Triangle {
    double sideA,sideB,sideC;
    double area;
    boolean isTriangle;

    public void setSideA(double sideA) {
        this.sideA = sideA;
    }

    public double getSideA() {
        return sideA;
    }

    public void setSideB(double sideB) {
        this.sideB = sideB;
    }

    public double getSideB() {
        return sideB;
    }

    public void setSideC(double sideC) {
        this.sideC = sideC;
    }

    public double getSideC() {
        return sideC;
    }

    public double getArea() {
        double p = (sideA+sideB+sideC)/2.0;
        area = Math.sqrt(p*(p-sideA)*(p-sideB)*(p-sideC));
        return area;
    }

    public boolean isTriangle() {
        if(sideA < sideB+sideC && sideB < sideC+sideA && sideC < sideA+sideB) {
            isTriangle = true;
        } else isTriangle = false;
        return isTriangle;
    }
}
