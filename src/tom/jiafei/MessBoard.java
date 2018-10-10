package tom.jiafei;
import java.util.*;
import java.text.SimpleDateFormat;

public class MessBoard {
    String name, title, content;
    StringBuffer allMessage;
    ArrayList<String> savedName,savedTitle,savedContent,savedTime;
    public MessBoard() {
        savedName = new ArrayList<String>();
        savedTitle = new ArrayList<String>();
        savedContent = new ArrayList<String>();
        savedTime = new ArrayList<String>();
    }

    public void setName(String name) {
        try {
            byte[] cc = name.getBytes("ISO-8859-1");
            name = new String(cc,"UTF-8");
        } catch (Exception e){}
        this.name = name;
        savedName.add(name);
        Date time = new Date();
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-DD,HH:mm:ss");
        String messTime = format.format(time);
        savedTime.add(messTime);
    }

    public void setTitle(String title) {
        try {
            byte[] cc = title.getBytes("ISO-8859-1");
            title = new String(cc,"UTF-8");
        } catch (Exception e){}
        this.title = title;
        savedTitle.add(title);
    }

    public void setContent(String content) {
        try {
            byte[] cc = content.getBytes("ISO-8859-1");
            content = new String(cc,"UTF-8");
        } catch (Exception e){}
        this.content = content;
        savedContent.add(content);
    }

    public StringBuffer getAllMessage() {
        allMessage = new StringBuffer();
        allMessage.append("<table border=1>");
        allMessage.append("<tr>");
        allMessage.append("<th>留言者姓名</th>");
        allMessage.append("<th>留言标题</th>");
        allMessage.append("<th>留言内容</th>");
        allMessage.append("<th>留言时间</th>");
        allMessage.append("</tr>");
        for(int k = 0; k < savedName.size(); k ++) {
            allMessage.append("<tr><td>");
            allMessage.append(savedName.get(k));
            allMessage.append("</td><td>");
            allMessage.append(savedTitle.get(k));
            allMessage.append("</td><td><textarea>");
            allMessage.append(savedContent.get(k));
            allMessage.append("</textarea></td><td>");
            allMessage.append(savedTime.get(k));
            allMessage.append("</td><tr>");
        }
        allMessage.append("</table>");
        return allMessage;
    }
}
