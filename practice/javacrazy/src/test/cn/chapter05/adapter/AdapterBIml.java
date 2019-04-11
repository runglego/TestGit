package test.cn.chapter05.adapter;

public class AdapterBIml implements AdapterB{

    public void open(){
        System.out.println("插件适配器B，已经连接A");
    }

}
