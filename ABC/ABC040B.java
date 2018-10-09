import java.util.Scanner;

class ABC040B{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		int n = sc.nextInt();
		int ans = 1001001001;
		for(int y = 1;y <= n; y++){
			int x = n/y;
			int now = Math.abs(x-y) + (n-x*y);
			//ans = Math.min(ans, now);
			System.out.println("("+x+", "+y+") "+now);
		}
		//System.out.println(ans);
	}
}