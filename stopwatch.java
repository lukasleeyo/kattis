import java.util.Scanner;

// My Logic

//Test case 1
// 7 - 11
// stop
// 4 seconds timer

//Test case 2
// 2 - 5
// stop
// 9 - 10
// stop
// 17 -... running


// Test case 3
// 0 - 2
// stop
// 104 - 117
// stop

// 117 - 104 + 2 = 15 secs timer

public class stopwatch {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        int noOfPress = sc.nextInt();
        String numStr = "";
        sc.nextLine();

        for(int i = 0; i < noOfPress; i++){
            numStr += sc.nextLine() + " ";
        }

        String[] numArr = numStr.split(" ");

        // if numArr is an even number, it means the stopwatch has stopped running. Calc the displayed timer
        // else if numArr is an odd number, it means it is still running
        int result = 0;
        if(numArr.length % 2 == 0) {
            for(int i = 0; i < numArr.length; i+=2){ // i+=2 because we always take the next 2 numbers, e.g If the list is 0, 2, 104, 117 and we take the numbers by 0, 2 followed by 104, 117
                result += Integer.parseInt(numArr[i+1]) - Integer.parseInt(numArr[i]);
            }
            System.out.println(result);
        }
        else{
            System.out.println("still running");
        }
        
        sc.close();

       
    }
    
}
