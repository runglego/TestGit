package main.cn.chapter04;

public class StatusTranfer0441 {
    public static void test() {
        String a = new String("测试一下字符串常量");
        System.out.println("a的值是：" + a);
        a = new String("轻量级java EE 框架测试");
        System.out.println("此时a的值是:" + a);
    }

    public static void main(String[] args) {
        test();
    }
}