import java.util.Scanner;

class ABC040A{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		int n = sc.nextInt();
		int x = sc.nextInt();

		if(n-x > x-1) System.out.println(x-1);
		else System.out.println(n-x);

	}
}