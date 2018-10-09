import java.util.Scanner;

class ABC103C {
	static Scanner sc = new Scanner(System.in);
	public static void main(String[] args) {
		int n = sc.nextInt();
		int a;
		int sum = 0;
		for (int i = 0; i < n; i++) {
			a = sc.nextInt();
			sum += a - 1;
		}
		System.out.println(sum);

	}
}

/*20180805記述
import java.util.Scanner;

class ABC103C {
	static Scanner sc = new Scanner(System.in);
	public static void main(String[] args) {
		int n = sc.nextInt();
		int[] a = new int[n];
		int max = 0;
		int sum;
		int summax=0;
		int m = 0;
		for (int i = 0; i < n; i++) {
			a[i] = sc.nextInt();
			if (max < a[i]) max = a[i];
			if (i == 0) m = a[i];
			else m = lcm(m, a[i]);
			//System.out.println(m);
		}


		for (int i = 1; i < m; i++) {
			sum = 0;
			for (int j = 0; j < n; j++) {
				sum += i % a[j];
				//System.out.print(i%a[j]+" ");
			}
			//System.out.println();
			if(sum > summax) summax=sum;
			//System.out.println(sum);
		}
		System.out.println(summax);
	}


	static int lcm(int a, int b){
		return a*b/gcd(a, b);
	}
	static int gcd(int a, int b){
		if(b == 0) return a;
		else return gcd(b, a%b);
	}

}*/

