package test.cn.chapter04;

        import main.cn.chapter04.Node0441;

        import javax.xml.soap.Node;

public class Node0411Test {
    public static void main(String[] args) {
        Node0441 node1 = new Node0441("zhuchunyuan");
        Node0441 node2 = new Node0441("wanglihong");
        Node0441 node3 = new Node0441("xuchangqing");

        node1.next=node2;
        node2 = null;
        node3 = node2;
        System.out.println(node1);
        System.out.println(node2);
        System.out.println(node3);
    }
}
