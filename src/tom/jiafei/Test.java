package tom.jiafei;
import java.io.*;
public class Test {
    String fileName = "",   //存放考题文件名的字符串
    correctAnswer = "????", //存放正确答案的字符串
    //存放试题和用户提交的答案的字符串
    testContent = "",
    selection = "";
    int score = 0;  //考试者的得分
    boolean boo = false;
    File f = null;
    FileReader in = null;
    BufferedReader buffer = null;

    public void setFileName(String fileName) {
        this.fileName = fileName;
        //当选择了新的考题文件后，将用户的答案字符串清空 将得分设为0
        score = 0;
        selection = "";
        boo = false;
        try {
            f = new File(fileName);
            in = new FileReader(f);
            buffer = new BufferedReader(in);
            correctAnswer = (buffer.readLine()).trim();
        } catch (Exception e) {
            testContent = "没有选择"+f.getAbsolutePath()+"试题";
            buffer = null;
        }
    }

    public String getFileName() {
        return fileName;
    }

    public String getTestContent() {
        try {
            String s = null;
            StringBuffer tmp = new StringBuffer();
            if(buffer != null) {
                while ((s = buffer.readLine()) != null) {
                    if(s.startsWith("**")) break;
                    tmp.append(s);
                    if(s.startsWith("endend")) {
                        in.close();
                        buffer.close();
                    }
                    testContent = new String(tmp);
                }
            } else {
                testContent = new String("没有选择"+f.getAbsolutePath()+"试题");
            }
        } catch (Exception e) {
            testContent = "试题无内容，考试结束了！";
            try {
                in.close();
                buffer.close();
            }catch (Exception exp) {}
        }
        return testContent;
    }

    public void setSelection(String selection) {
        this.selection += selection;
    }

    public int getScore() {
        int len1 = selection.length();
        int len2 = correctAnswer.length();
        int i = len1-1;
        if((i!= -1) && (i <= len2-1)) {
            if((selection.charAt(i) == correctAnswer.charAt(i)) && (boo == false)) score++;
            if(i == len2-1) boo = true;
        }
        return score;
    }
}
