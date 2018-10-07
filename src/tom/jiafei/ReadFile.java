package tom.jiafei;
import java.io.*;
public class ReadFile {
    String fileDir = "C:/",fileName = "";
    String listFile, readContent;
    public void setFileDir(String s) {
        fileDir = s;
    }

    public String getFileDir() {
        return fileDir;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getFileName() {
        return fileName;
    }

    public String getListFile() {
        File dir = new File(fileDir);
        File file_name[] = dir.listFiles();
        StringBuffer list = new StringBuffer();
        for(int i = 0; i < file_name.length; i ++) {
            if((file_name[i] != null) && (file_name[i].isFile())) {
                String tmp = file_name[i].toString();
                int n = tmp.lastIndexOf("\\");
                tmp = tmp.substring(n+1);
                list.append(" "+tmp);
            }
        }
        listFile = new String(list);
        return listFile;
    }

    public String getReadContent() {
        try {
//            System.out.println(fileDir+fileName);
            File file = new File(fileDir, fileName);
//            FileReader in = new FileReader(file);
            InputStreamReader in = new InputStreamReader(new FileInputStream(file),"UTF-8");
            BufferedReader inTwo = new BufferedReader(in);
            StringBuffer stringBuffer = new StringBuffer();
            String s = null;
            while ((s = inTwo.readLine()) != null) {
                byte bb[] = s.getBytes();
                s = new String(bb);
                stringBuffer.append("\n"+s);
            }
            String tmp = new String(stringBuffer);
//            System.out.println(tmp);
            readContent = "<TextArea rows = 10 cols=62>"+tmp+"</TextArea>";
        } catch (Exception e) {
            readContent = "<TextArea rows=8 cols=62></TextArea>";
        }
        return readContent;
    }
}
