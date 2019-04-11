package test.cn.chapter05.adapter;

public class AdapterAdemo implements AdapterA{

    public AdapterB adapterB;
    public AdapterAdemo(AdapterB adapterB){
        this.adapterB=adapterB;
    }

    public void insert(){
        adapterB.open();
    }
}
