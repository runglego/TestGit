package test.cn.chapter05.string;

/*
 * 2019.03.25
 * "=="和"equals"的区别
 *
 * */
public class StringTest {
    public static void main(String[] args) {
        String var1 = "疯狂java";
        String var2 = "疯狂java";
        String var3 = "疯狂java";
        String var4 = new String("疯狂java");
        String var5 = var4;
        String var6 = var1;

        System.out.print("判断var1==var2返回的结果:");
        System.out.println(var1 == var2);


        System.out.print("判断var1.equals(var3)返回结果：");
        System.out.println(var1.equals(var3));


        System.out.print("判断var1==var4返回结果");
        System.out.println(var1 == var4);

        System.out.print("判断var1.equals（var4)返回的结果");
        System.out.println(var1.equals(var4));

        System.out.print("判断var4==var5返回值:");
        System.out.println(var4 == var5);

        System.out.print("判断var1==var5的返回值：");
        System.out.println(var1 == var5);

        System.out.print("判断var1.equals（var5）返回值：");
        System.out.println(var1.equals(var5));

//        System.out.println("判断var1和var2的值相等返回的结果:" + var1==var2);


        Student student1 = new Student("zhu", "man", 19);
        Student student2 = new Student("zhu", "man", 19);
        Student student3 = student1;
        System.out.print("判断Student对象student1==student2返回值：");
        System.out.println(student1 == student2);

        System.out.print("判断Student对象student1.equals(student2)返回值:");
        System.out.println(student1.equals(student2));

        System.out.print("判断Student对象student1==student3返回值：");
        System.out.println(student1 == student3);

        System.out.print("判断student1.equals(student3)返回值");
        System.out.println(student1.equals(student3));
    }

}


class Student {
    String name;
    String sex;
    int age;

    public Student(String name, String sex, int age) {
        this.name = name;
        this.sex = sex;
        this.age = age;
    }
}
