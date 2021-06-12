import java.util.Scanner;

// https://open.kattis.com/problems/addtwonumbers

/**
 * addtwonumbers
 */
public class addtwonumbers {

    public static void main(String[] args) {
        // Input
        Scanner sc = new Scanner(System.in);
        String input = sc.nextLine();
        // Process input
        String[] inputArr = input.split(" ");
        int numA = Integer.parseInt(inputArr[0]);
        int numB = Integer.parseInt(inputArr[1]);
        // Result
        int result = numA + numB;

        System.out.println(result);
        sc.close();

    }
}