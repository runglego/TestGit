package test.cn.chapter05.proxy;

public class OrderBookImpl implements OrderBook {

    @Override
    public void buyBook(){
        System.out.println("真正执行：欢迎在京东购买图书");
    }
}
