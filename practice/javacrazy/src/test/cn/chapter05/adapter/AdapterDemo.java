package test.cn.chapter05.adapter;

public class AdapterDemo {
    public static void main(String[] args) {
        AdapterAIml adapterAIml = new AdapterAIml();

        start(adapterAIml);

        AdapterB adapterB = new AdapterBIml();
        AdapterA adapterA= new AdapterAdemo(adapterB);
        start(adapterA);
    }






    public static void start(AdapterA adapterA) {
        System.out.println("....一些重复的代码.....");
        adapterA.insert();
        System.out.println("....一些重复的代码.....\n");
    }
}
