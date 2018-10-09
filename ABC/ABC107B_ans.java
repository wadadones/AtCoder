import java.util.Arrays;
import java.util.Scanner;

class ABC107B_ans{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		int h = sc.nextInt();
		int w = sc.nextInt();
		String[] a = new String[h];


		for(int i = 0;i < h;i++){
			a[i] = sc.next();
		}

		boolean[] row = new boolean[h];
		Arrays.fill(row, false);
		boolean[] col = new boolean[w];
		Arrays.fill(col, false);


		for(int i = 0;i < h;i++){
			for(int j = 0;j < w; j++){
				if(a[i].charAt(j) == '#'){
					row[i]=true;
					col[j]=true;
				}
			}
		}

		for(int i = 0;i < h;i++){
			if(row[i]){
				for(int j = 0;j < w;j++){
					if(col[j]){
						System.out.print(a[i].charAt(j));
					}
				}
				System.out.println();
			}
		}
	}
}