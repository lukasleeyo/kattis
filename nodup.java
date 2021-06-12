// https://open.kattis.com/problems/nodup

import java.util.HashSet;
import java.util.Scanner;
import java.util.Set;

/**
 * nodup
 */
public class nodup {

    public static void main(String[] args) {
        // Input
        Scanner sc = new Scanner(System.in);
        String input = sc.nextLine();
        String[] inputArr = input.split(" ");

        // using set to remove duplicate words
        Set<String> hash_Set = new HashSet<String>();

        for(int i = 0; i < inputArr.length; i++){
            hash_Set.add(inputArr[i]);
        }

        // if hashset's length as same original input, no duplicate
        // else got duplicate
        if(hash_Set.size() == inputArr.length){
            System.out.println("yes");
        }
        else{
            System.out.println("no");
        }

        sc.close();
    }
}