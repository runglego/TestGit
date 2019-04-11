package test.cn.chapter05.factorymode;

public class FactoryDemo {

    public static Factory getFactory(String type) throws Exception{
        if (type.equals("baidu")) {
            System.out.println("这是A工厂");
            return new FactoryA();
        } else if (type.equals("tencent")) {
            System.out.println("这是B工厂模式");
            return new FactoryB();
        }
        else {
            System.out.println("你输入的格式有问题，请重新输入");
            throw new Exception();
        }


    }
}
