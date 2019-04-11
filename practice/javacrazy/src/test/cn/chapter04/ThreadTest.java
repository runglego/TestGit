package test.cn.chapter04;

import java.util.ArrayList;

public class ThreadTest {
    public static void main(String[] args){
         final InsertData insertDate = new InsertData();

        new Thread() {
            public void run() {
                insertDate.insert(Thread.currentThread());

            }
        }.start();


        new Thread(){
            public void run(){
                insertDate.insert(Thread.currentThread());
            }
        }.start();


        new Thread(){
            public void run(){
                insertDate.insert(Thread.currentThread());
            }
        }.start();

        new Thread(){
            public void run(){
                insertDate.insert(Thread.currentThread());
            }
        }.start();
    }
}


class InsertData{
    ArrayList<Integer> insertdata = new ArrayList<Integer>();

    public void  insert(Thread thread){
        for(int i=0;i<5;i++){
            System.out.println(thread.getName()+"插入数据:"+i);
            insertdata.add(i);
        }
    }
}
