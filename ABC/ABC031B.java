import java.util.Scanner;

public class ABC031B {
	public static void main(String[] args) {
		int t, l, h, n;
		Scanner sc = new Scanner(System.in);
		l = sc.nextInt();
		h = sc.nextInt();
		n = sc.nextInt();
		for (int i = 0; i < n; i++) {
			t = sc.nextInt();
			System.out.println(calc(t, l, h));
		}
	}
	static int calc(int t, int l, int h) {
		if (t < l) return l - t;
		else if (h < t) return -1;
		else return 0;
	}
}