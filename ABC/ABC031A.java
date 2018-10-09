import java.util.Scanner;

class ABC031A {
	public static void main(String args[]) {
		int a, d, max;
		Scanner sc = new Scanner(System.in);
		a = sc.nextInt();
		d = sc.nextInt();
		max = (a + 1) * d;
		if (max >= a * (d + 1)) System.out.println(max);
		else System.out.println(a * (d + 1));
	}
}