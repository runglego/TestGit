package main.cn.chapter04;

public class MemoryManage {
//    内存管理小技巧
    /*
    * 1.尽量使用直接量
    * 2.使用StringBuffer或StringBuilder进行字符串连接操作
    * 3.尽早释放无用对象的使用
    * 4.尽量少用静态变量
    * 5.避免在经常调起的方法、循环中创建java对象
    * 6.缓存经常使用的对象
    * 7.尽量不要使用finalize方法
    * 8.考虑使用SofeReference关键字
    *
    * */
    public MemoryManage(){
        int age =10;
    }
    String sex = "man";
    {
        String name= "huang";
        String sex = "man";
    }
//    sex = "men";
//    public static void main(String[] args){
//        System.out.println("this is a beautiful girl");
//    }
 }
