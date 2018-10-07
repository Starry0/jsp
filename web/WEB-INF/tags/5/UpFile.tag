<%@ tag import="java.io.*" %>
<%@ tag pageEncoding="UTF-8" %>
<%@ attribute name="subdir" required="true" %>
<%@ variable name-given="message" scope="AT_END" %>
<%@ variable name-given="fileName" scope="AT_END" %>
<%
    jspContext.setAttribute("message","");
    try {
        String tempFileName = (String) session.getId();
        File file = new File("D:\\code\\java\\jsp\\web");
        String paraentDir = file.getAbsolutePath();
        String saveDir = paraentDir+"/"+subdir;
        File dir = new File(saveDir);
        System.out.println(dir);
        dir.mkdir();
        //建立临时文件f1
        File f1 = new File(dir,tempFileName);
        FileOutputStream o = new FileOutputStream(f1);
        //将客户上传的全部信息存入f1
        InputStream in = request.getInputStream();
        byte b[] = new byte[10000];
        int n;
        while ((n = in.read(b)) != -1) o.write(b,0,n);
        o.close();
        in.close();
        //读取临时文件f1，从中获取上传文件的名字和上传文件的内容
        RandomAccessFile randomRead = new RandomAccessFile(f1,"r");
        int second = 1;
        String secondLine = null;
        while (second <= 2) {
            secondLine = randomRead.readLine();
            second++;
        }
        //获取f1中第2行中的“fileName”之后“=”出现的位置
        int position = secondLine.lastIndexOf("=");
        //客户上传的文件的名字是
        String fileName = secondLine.substring(position+2,secondLine.length()-1);
        randomRead.seek(0);
        //获取第4行Enter符合的位置
        long forthEndPostion = 0;
        int forth = 1;
        while ((n=randomRead.readByte()) != -1 && (forth <= 4)) {
            if(n == '\n') {
                forthEndPostion = randomRead.getFilePointer();
                forth++;
            }
        }
        //根据客户上传文件的名字，将该文件存入磁盘
        byte cc[] = fileName.getBytes("iso-8859-1");
        fileName = new String(cc);
        File f2 = new File(dir,fileName);
        RandomAccessFile randomWrite = new RandomAccessFile(f2,"rw");
        //确定出文件f1中包含客户上传的文件的内容的最后位置，即倒数第6行
        randomRead.seek(randomRead.length());
        long endPosition = randomRead.getFilePointer();
        long mark = endPosition;
        int j = 1;
        while ((mark >= 0) && (j <= 6)) {
            mark --;
            randomRead.seek(mark);
            n = randomRead.readByte();
            if(n == '\n') {
                endPosition = randomRead.getFilePointer();
                j ++;
            }
        }
        //将randomRead流指向文件f1的第4行结束的位置
        randomRead.seek(forthEndPostion);
        long startPoint = randomRead.getFilePointer();
        //从f1读出客户上传的文件存入f2（读取第4行结束位置和倒数第6行之间的内容）
        while (startPoint < endPosition -1) {
            n = randomRead.readByte();
            randomWrite.write(n);
            startPoint = randomRead.getFilePointer();
        }
        randomWrite.close();
        randomRead.close();
        jspContext.setAttribute("message","上传成功");
        jspContext.setAttribute("fileName",fileName);
        f1.delete();
    } catch (Exception e){
        jspContext.setAttribute("message","没有选择文件或上传失败");
    }
%>