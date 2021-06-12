import java.util.Scanner;

// https://open.kattis.com/problems/jackolanternjuxtaposition

public class jackolanternjuxtaposition {
    public static void main(String[] args) {

        // Variation 1
        // //Input
        // Scanner sc = new Scanner(System.in);
        // int a = sc.nextInt();
        // int b = sc.nextInt();
        // int c = sc.nextInt();

        // // Logic
        // int result = a * b * c;
        // System.out.println(result);

        // sc.close();
        

        // Variation 2
        // Input
        Scanner sc = new Scanner(System.in);
        String input = sc.nextLine();
        String[] inputArr = input.split(" ");
        int result = 1; // cannot be 0 because of multiplication
        for(int i = 0; i < inputArr.length; i++){
            result *=  Integer.parseInt(inputArr[i]);
        }

        System.out.println(result);
        sc.close();
    }
}
