package test.cn.chapter05.proxy;

public class ProxyTest{

    public static void main(String[] args) {
//        OrderBook orderBook = new OrderBookImpl();
        OrderBookProxy orderBookProxy = new OrderBookProxy(new OrderBookImpl());
        orderBookProxy.buyBook();
    }

}
