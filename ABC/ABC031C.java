import java.util.Scanner;
class ABC031C {
	public static void main(String[] args) {
		int n, count = 0, max = 0, sum, ans;
		Scanner sc = new Scanner(System.in);
		n = sc.nextInt();
		int[] a = new int[n];
		int[] gu = new int[n / 2 + 1];
		int[] ki = new int[n / 2 + 1];
		for (int i = 0; i < n; i++) {
			a[i] = sc.nextInt();
			if (i % 2 == 0) ki[count] = a[i];
			else {
				gu[count] = a[i];
				count++;
			}
		}
		for (int i = 0; i < ki.length; i++) {
			sum = 0;
			for (int j = i; j < ki.length; j++) {
				sum += ki[j];
				if (max < sum) {
					max = sum;
				}
			}
		}
		for (int i = 0; i < gu.length; i++) {
			sum = 0;
			for (int j = i; j < gu.length; j++) {
				sum += gu[j];
				if (max < sum) {
					max = sum;
				}
			}
		}
		System.out.println(max);

	}
}