package test.cn.chapter05.fileoperate;

import java.io.*;

public class FileRWTest {

    public static void main(String[] args)throws IOException{

        FileRWTest fileRWTest = new FileRWTest();

//        fileRWTest.foldeWrite();
        fileRWTest.folderRead();
    }

    public void foldeWrite() throws IOException {
        File file = new File("test.txt");
        file.createNewFile();
        FileWriter fw = new FileWriter(file);
        PrintWriter pw = new PrintWriter(fw);
        pw.println("追加一行内容看看效果");
        pw.println("zuiijyiahghn");
        pw.flush();

  /*      BufferedWriter bw = new BufferedWriter(fw);
        bw.write("我会写入文件啦\r\n");
        bw.write("写入文件第二行\r\n");
        bw.flush();
        bw.close();*/

    }

    public void folderRead() throws IOException{
        File file = new File("test.txt");
        file.createNewFile();

        FileReader fr = new FileReader("test.txt");
        BufferedReader out = new BufferedReader(fr);
        int i=1;
        String line;
        int lines;
//        out.readLine();  out.readline() function is read  a line automatic everytime;
//        while((lines=out.read())==0) {
        while((line=out.readLine())!=null){
            System.out.println(System.currentTimeMillis());
            System.out.println(line);
            i++;
        }
    }
}
