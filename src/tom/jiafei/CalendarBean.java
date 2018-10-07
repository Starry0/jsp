package tom.jiafei;
import java.util.*;

public class CalendarBean {
    String calendar = null;
    int year = 2005, month = 0;

    public void setYear(int year) {
        this.year = year;
    }

    public int getYear() {
        return year;
    }

    public void setMonth(int month) {
        this.month = month;
    }

    public int getMonth() {
        return month;
    }

    public String getCalendar() {
        StringBuffer buffer = new StringBuffer();
        Calendar cal = Calendar.getInstance();
        cal.set(year,month-1,1);
        //依次类推，11表示12月
        //获取1日是星期几，(get方法返回的值是1表示星期日，返回的值是7表示星期六)
        int week = cal.get(Calendar.DAY_OF_WEEK) - 1;
        int day = 0;
        if(month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12) day = 31;
        if(month == 4 || month == 6 || month == 9 || month == 11) day = 30;
        if(month == 2) {
            if(((year%4==0) && (year%100!=0)) || (year%400==0)) day = 29;
        } else day = 28;
        String a[] = new String[42];
        for(int i = 0; i < 42; i ++) a[i] = " ";
        for(int i = week, n = 1; i < week+day; i ++) {
            if(n <= 9) a[i] = String.valueOf(n)+" ";
            else a[i] = String.valueOf(n);
            n++;
        }
        buffer.append("<table border=3>");
        buffer.append("<tr>");
        String xingqi[] = {"星期日","星期一","星期二","星期三","星期四","星期五","星期六"};
        for(int k = 0; k < 7; k ++) buffer.append("<td>"+xingqi[k]+"</td>");
        buffer.append("<tr>");
        for(int k = 0; k < 42; k += 7) {
            buffer.append("<tr>");
            for(int j = k; j < k+7; j ++) buffer.append("<td>"+a[j]+"</td>");
            buffer.append("</tr>");
        }
        buffer.append("</table>");
        calendar = new String(buffer);
        return calendar;
    }
}
