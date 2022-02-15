import java.util.Arrays;
import java.util.Random;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        task1();
        task2();
        task3();

    }

    public static void task1() {
        int[] arr = new int[6];
        Random rn = new Random();
        int min = 0;
        int max = 5;
        for (int i = 0; i < arr.length; i++) {
            int num = rn.nextInt((max - min + 1) + min);
            arr[i] = num;
        }
        System.out.println(Arrays.toString(arr));
        int check = 0;
        for (int i = 0; i < 6 - 1; i++) {
            if (arr[i] == arr[i + 1]) {
                check++;
                System.out.println("Есть: " + arr[i]);
            }

        }
        if (check == 0) {
            System.out.println("Нет");
        }

    }

    public static void task2() {
        Scanner scanner = new Scanner(System.in);
        Random random = new Random();
        int number = scanner.nextInt();
        int[] arr = new int[number];


        for (int i = 0; i < arr.length; i++) {
            int num = random.nextInt(1, 12);
            arr[i] = num;
            switch (num) {
                case 1:
                    System.out.println("Январь");
                    break;
                case 2:
                    System.out.println("Февраль");
                    break;
                case 3:
                    System.out.println("Март");
                    break;
                case 4:
                    System.out.println("Апрель");
                    break;
                case 5:
                    System.out.println("Май");
                    break;
                case 6:
                    System.out.println("Июнь");
                    break;
                case 7:
                    System.out.println("Июль");
                    break;
                case 8:
                    System.out.println("Август");
                    break;
                case 9:
                    System.out.println("Сентябрь");
                    break;
                case 10:
                    System.out.println("Октябрь");
                    break;
                case 11:
                    System.out.println("Ноябрь");
                    break;
                case 12:
                    System.out.println("Декабрь");
                    break;
            }
        }
        System.out.println(Arrays.toString(arr));
    }

    public static void task3() {
        Scanner sc = new Scanner(System.in);
        Random rnd = new Random();
        int nums = sc.nextInt();
        int[] arr2 = new int[nums];

        for (int i = 0; i < arr2.length; i++) {
            int num = rnd.nextInt(1, 100);
            arr2[i] = num;
        }
        int numOf30 = 0, numOf30Sum = 0;
        int numOf60 = 0, numOf60Sum = 0;
        int numOf100 = 0, numOf100Sum = 0;
        for (int i : arr2) {
            if (i > 1 && i < 30) {
                numOf30++;
                numOf30Sum += i;
            } else if (i > 30 && i < 61) {
                numOf60 = numOf60 + 1;
                numOf60Sum = numOf60Sum + i;
            } else {
                numOf100++;
                numOf100Sum += i;
            }
        }

        System.out.println(Arrays.toString(arr2));
        System.out.println("- от 1 до 30 => " + ((double) numOf30Sum / numOf30) + ", количество " + numOf30);
        System.out.println("- от 31 до 61 => " + ((double) numOf60Sum / numOf60) + ", количество " + numOf60);
        System.out.println("- от 61 до 100 => " + ((double) numOf100Sum / numOf100) + ", количество " + numOf100);
    }

}
