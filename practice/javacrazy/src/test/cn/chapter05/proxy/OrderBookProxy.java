package test.cn.chapter05.proxy;

public class OrderBookProxy implements  OrderBook{

    public OrderBook orderBook;

    public OrderBookProxy(OrderBook orderBook){
        this.orderBook = orderBook;
    }

    @Override
    public void buyBook() {
        System.out.println("--------日志，事物，安全，性能-----选择购买图书服务---------------");
        orderBook.buyBook();
        System.out.println("----日志，事物，安全，性能-------选购的图书将由顺风快递进行运送----------------");
    }

}
