package tom.jiafei;

public class GuessNumber {
    int answer = 0, guessNumber = 0, guessConut = 0;
    String result = null;
    boolean right = false;
    public void setAnswer(int n) {
        answer = n;
        guessConut = 0;
    }

    public int getAnswer() {
        return answer;
    }

    public void setGuessNumber(int n) {
        guessNumber = n;
        guessConut++;
        if(guessNumber == answer) {
            result = "恭喜，猜对了";
            right = true;
        } else if(guessNumber > answer) {
            result = "猜大了";
            right = false;
        } else if(guessNumber < answer) {
            result = "猜小了";
            right = false;
        }
    }

    public int getGuessNumber() {
        return guessNumber;
    }

    public int getGuessConut() {
        return guessConut;
    }

    public String getResult() {
        return result;
    }

    public boolean isRight() {
        return right;
    }
}
