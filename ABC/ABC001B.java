import java.util.Scanner;

public class ABC001B {
	public static void main(String[] args) {
		int m;
		Scanner sc = new Scanner(System.in);
		m = sc.nextInt();
		if(m < 100) System.out.printf("00\n");
		if(100 <= m && m <= 5000) System.out.printf("%02d\n", m/100);
		if(6000 <= m && m <= 30000) System.out.printf("%02d\n", m/1000+50);
		if(35000 <= m && m <= 70000) System.out.printf("%02d\n", (m/1000-30)/5+80);
		if(70000 < m) System.out.printf("89\n");
	}
}