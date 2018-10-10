package tom.jiafei;
import java.io.*;

public class WriteFile {
    String filePath = null, fileName = null, fileContent = null;
    boolean success;

    public void setFilePath(String filePath) {
        this.filePath = filePath;
        try {
            File path = new File(filePath);
            path.mkdir();
        } catch (Exception e) {}
    }

    public String getFilePath() {
        return filePath;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileContent(String fileContent) {
        System.out.println(fileContent);
//        byte[] bb = fileContent.getBytes("ISO-8859-1");
        this.fileContent = fileContent;
        byte content[] = fileContent.getBytes();
        try {
            File file = new File(filePath, fileName);
            FileOutputStream in = new FileOutputStream(file);
            in.write(content,0,content.length);
            in.close();
            success = true;
        } catch (Exception e) {
            success = false;
        }
    }

    public boolean isSuccess() {
        return success;
    }
}
