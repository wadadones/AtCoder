import java.util.Scanner;
public class ABC033A {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String s = sc.next();
		char s1 = s.charAt(0);
		for (int i = 1; i < 4; i++) {
			if (s1 == s.charAt(i)) {
				if (i == 3) System.out.println("SAME");
			} else {
				System.out.println("DIFFERENT");
				break;
			}
		}
	}
}