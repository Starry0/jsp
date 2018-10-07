package tom.jiafei;

public class ComputerBean {
    double numberOne, numberTwo, result;
    String operator = "+";

    public double getNumberOne() {
        return numberOne;
    }

    public double getNumberTwo() {
        return numberTwo;
    }

    public String getOperator() {
        return operator;
    }

    public void setNumberOne(double numberOne) {
        this.numberOne = numberOne;
    }

    public void setNumberTwo(double numberTwo) {
        this.numberTwo = numberTwo;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }

    public double getResult() {
        if(operator.equals("+")) result = numberOne + numberTwo;
        else if(operator.equals("-")) result = numberOne - numberTwo;
        else if(operator.equals("*")) result = numberOne * numberTwo;
        else if(operator.equals("/")) result = numberOne / numberTwo;
        return result;
    }
}
