package test.cn.chapter05.sort;

import java.util.Scanner;

public class BubbleSort {

    public static void main(String[] args) {
        Scanner read = new Scanner(System.in);
        int[] nums = new int[]{
                9, 6, 11, 33, 3, 5, 8, 6, 7, 66
        };
        BubbleSort bs = new BubbleSort();
//        bs.bubbleSort(nums);

//        bs.quickSort(nums, 1, 9);

        bs.selectSort(nums);
    }


    public void bubbleSort(int[] nums) {

        int i = nums.length;
        int t;

        System.out.println("原数组是：");
        outputArray(nums, i);

        for (int j = 0; j < i; j++) {
            for (int k = 0; k < i - j - 1; k++) {
                if (nums[k] > nums[k + 1]) {
                    t = nums[k];
                    nums[k] = nums[k + 1];
                    nums[k + 1] = t;
                }
            }
        }

        System.out.println("\n冒泡排序后的数组是：");
        outputArray(nums, i);

    }

    public void selectSort(int[] nums) {

        int i = nums.length;
        int trans;
        System.out.println("原数组是：");
        outputArray(nums, i);

        for (int j = 0; j < i - 1; j++) {
            for (int k = j; k < i - 1; k++) {
                if (nums[k] < nums[j]) {
                    trans = nums[k];
                    nums[k] = nums[j];
                    nums[j] = trans;
                }
            }
        }

        System.out.println("\n选择排序后的数组是:");
        outputArray(nums, i);

    }

    public void quickSort(int[] nums, int l, int r) {
/*
        int i = nums.length;int pivotkey =nums[0];
        int low =nums[0];
        int high =nums[i-1];
        while(low<high){
            while(low<high&&)
        }
*/

        if (l < r) {
            int q = mpartition(nums, l, r);
            quickSort(nums, l, q - 1);
            quickSort(nums, q + 1, r);

        }
        System.out.println("\n快速排序后的数组是：");
        outputArray(nums, nums.length);
    }

    int mpartition(int[] nums, int l, int r) {
        int trans;
        int pivot = nums[l];
        while (l < r) {
            while (l < r && pivot <= nums[r])
                --r;
            if (l < r) {
                trans = nums[l];
                nums[l] = nums[r];
                nums[r] = trans;

            }
            while (l < r && pivot > nums[l])
                ++l;
            if (l < r) {
                trans = nums[r];
                nums[r] = nums[l];
                nums[l] = trans;

            }
        }
        nums[l] = nums[0];
        return l;
    }


    public void outputArray(int[] nums, int i) {

        for (int j = 0; j < i; j++)
            System.out.print(nums[j] + "\t");
    }
}
