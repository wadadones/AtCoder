import java.util.Scanner;


class ABC002A{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		int X = sc.nextInt();
		int Y = sc.nextInt();

		if(X >= Y){
			System.out.println(X);
		}else{
			System.out.println(Y);
		}

	}
}