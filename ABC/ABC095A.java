import java.util.Scanner;
import java.io.*;

class ABC095A{
	public static void main(String[] args){
		Scanner sc= new Scanner(System.in);
		String s = sc.next();
		int count = 0;
		for(int i = 0;i <3; i++){
			if(s.charAt(i) == 'o') count++;
		}
		System.out.println(700 + 100*count);
	}
}