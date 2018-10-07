package tom.jiafei;
import java.io.*;

class FileName1 implements FilenameFilter{
    @Override
    public boolean accept(File dir, String name) {
        boolean boo = false;
        if(name.endsWith(".jpg") || name.endsWith(".JPG")) boo = true;
        return boo;
    }
}

public class Play {
    int imageNumber = 0, max;
    String pictureName[], playImage;
    public Play() {
//        File f = new File("."); //该文件被认为在web引擎的/bin目录下
        File dir = new File("D:\\code\\java\\jsp\\web\\7\\image");
        pictureName = dir.list(new FileName1());
        max = pictureName.length;
        System.out.println(max);
    }

    public void setImageNumber(int n) {
//        System.out.println(max+"+"+n);
        if(n < 0) n = max - 1;
        if(n == max) n = 0;
        this.imageNumber = n;
    }

    public int getImageNumber() {
        return imageNumber;
    }

    public String getPlayImage() {
        playImage = new String("<image src=image/"+pictureName[imageNumber]+""+" width=260 height=200></image>");
        return playImage;
    }
}
