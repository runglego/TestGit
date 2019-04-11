package main.edu.hduoj;

import java.util.Scanner;

public class m3d24_1000 {
    public static void main(String[] args){

        Scanner reader = new Scanner(System.in);
        int i = reader.nextInt();
        add(i);





//    2019.03.26 onlineTest 1001
/*
        Scanner reader= new Scanner(System.in);
        int a = reader.nextInt();
        int b = reader.nextInt();
        System.out.println(a+"\n"+addAll(a,b));
*/




//        2019.03.26 onlineTest 1000
/*        Scanner reader = new Scanner(System.in);
        int a = reader.nextInt();
        int b = reader.nextInt();
        int sum = add(a,b);
        System.out.println(sum);*/
    }


    public static void add(int flag){
        Scanner reader = new Scanner(System.in);
        long []a=new long[1000];
        long []b=new long[1000];
        long []array =new long[1000];
        for(int i=1;i<flag+1;i++){
            a[i]=reader.nextLong();
            b[i]=reader.nextLong();
            array[i]=a[i]+b[i];
        }
        for(int j=1;j<flag+1;j++){
            System.out.println("case:"+j);
            System.out.println(a[j]+"+"+b[j]+"="+array[j]+"\n");
        }

    }


    public static int  add(int a,int b){
        return a+b;
    }

    public static int addAll(int a,int b){
        int sum=1;
        while(a<b){
            a++;
            sum+=a;
        }
        return sum;
    }
}
