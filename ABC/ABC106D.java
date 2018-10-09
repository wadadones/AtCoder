import java.util.Scanner;


class ABC106D {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int n = sc.nextInt();
		int m = sc.nextInt();
		int q = sc.nextInt();
		int l, r;
		int map[][] = new int[n + 1][n + 1];
		int map_t[][] = new int[n + 2][n + 2];
		int sum = 0;
		int pq, qq;
		for(int i = 0;i <= n;i++){
			for(int j = 0; j <= n;j++){
				map[i][j]=0;
			}
		}
		
		for (int i = 1; i <= m; i++) {
			l = sc.nextInt();
			r = sc.nextInt();
			map[l][r]++;
		}

		for (int i = 1; i <= n; i++) {
			map_t[i][1] = 0;
			for (int j = 2; j <= n; j++) {
				map_t[i][j] = map_t[i][j - 1] + map[i][j - 1];
			}
		}
		for (int i = 1; i <= q; i++) {
			sum = 0;
			pq = sc.nextInt();
			qq = sc.nextInt();
			for(int j = pq; j <= qq; j++){
				sum += map_t[j][qq] -map_t[j][pq-1];
			}
			System.out.println(sum);
		}
	}
}