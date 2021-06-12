import java.util.Scanner;

// https://open.kattis.com/problems/sorttwonumbers
/**
 * sorttwonumbers
 */
public class sorttwonumbers {

    public static void main(String[] args) {
        // Input
        Scanner sc = new Scanner(System.in);
        int a = sc.nextInt();
        int b = sc.nextInt();

        // Logic
        if(a > b) {
            System.out.println(b + " " + a);
        }
        else{
            System.out.println(a + " " + b);
        }

        sc.close();
    }
}