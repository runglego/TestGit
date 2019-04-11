package test.cn.chapter05.string;

public class StringWays {
    public static void main(String[] args) {
        StringWays sw= new StringWays();

        String var1 = "abcd efg hijklmn opq  rst* uvw #xyz";
        String[] var2 = var1.split(" ");
        for (int i = 0; i < var2.length; i++) {
            System.out.println("array数组的第" + (i + 1) + "个参数值是：" + var2[i]);
        }


        System.out.println("测试" + Integer.compare(1, 1));
        System.out.println(var2[0] + "第二个参数" + var2[1]);
        System.out.println("字符串var1的长度是" + var1.length());
//        int i = var2.length;
        System.out.println("字符串var2的长度是：" + var2.length);

        System.out.println("测试字符串反转reverse: \t"+sw.reverse("helloworld"));
        System.out.println("测试字符串反转reverse1:\t"+sw.reverse("helloworld"));


    }

    public String reverse(String var){
        int i = var.length();
        Character[] array  = new Character[i];
        for(int j=0;j<i;j++){
            array[j]=var.charAt(i-j-1);
        }
        StringBuffer var2=new StringBuffer();

        for(int k=0;k<i;k++){
            var2.append(array[k]);
        }
        return var2.toString();
    }

    public String reverse1(String var){
        int i = var.length();
        char[] array = new char[i];
        var.getChars(0,i,array,0);
        StringBuilder var2= new StringBuilder();
        for(int j=0;j<i;j++){
            var2.append(array[i-j-1]);
        }
        return var2.toString();

    }

}
