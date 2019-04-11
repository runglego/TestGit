package test.cn.chapter04;

import main.cn.chapter04.SoftReference0441;

import java.lang.ref.SoftReference;

public class SoftReference0441Test {
    public static void main(String[] args) {
        SoftReference<SoftReference0441>[] person = new SoftReference[1000000000];
        for(int i=0;i<person.length;i++){
            person[i]=new SoftReference<>(new SoftReference0441("名字"+i,(i+1)*4%100));
        }
        System.out.println(person[2].get());
        System.out.println(person[4].get());

        System.gc();
        System.runFinalization();

        System.out.println(person[2].get());
        System.out.println(person[4].get());
    }
}
