// https://open.kattis.com/problems/carrots

//get user input
import java.util.*;

public class Carrots {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        String userInputStr = sc.nextLine();

        String[] userInputArr = userInputStr.split(" ");
        int noOfContestants = Integer.parseInt(userInputArr[0]);
        int noOfProblemsSolved = Integer.parseInt(userInputArr[1]);
       
        

        for (int i = 0; i < noOfContestants; i++) {
            sc.nextLine();
        }

        System.out.print(noOfProblemsSolved);

        sc.close();
    }

}