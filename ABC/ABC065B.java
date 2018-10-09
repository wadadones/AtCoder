import java.util.Scanner;

class ABC065B {
	static Scanner sc = new Scanner(System.in);

	public static void main(String[] args) {
		int n = sc.nextInt();
		int[] a = new int[n + 1];
		getInputArray(a);
		isFinished(a);
	}

	static void getInputArray(int[] a){
		for (int i = 1; i <= a.length - 1; i++) {
			a[i] = sc.nextInt();
		}
	}

	static void isFinished(int[] a){
		int now = 1;
		int count = 0;
		while (true) {
			if (now == 2) {
				System.out.println(count);
				break;
			}
			else if (count == Integer.MAX_VALUE) {
				System.out.println(-1);
				break;
			}
			now = a[now];
			count++;
		}

	}

}