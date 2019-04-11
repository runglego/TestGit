package test.cn.chapter05.factorymode;

public class FactoryTest {
    public static void main(String[] args)throws Exception{
        Factory factory = FactoryDemo.getFactory("baidu");
        System.out.println(factory.getClass());
    }
}
