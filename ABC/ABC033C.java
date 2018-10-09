import java.util.Scanner;
class ABC033C{
	public static void main(String args[]){
		int count = 0;
		Scanner sc = new Scanner(System.in);
		String str = sc.next();
		String[] strs = str.split("\\+");
		for(int i = 0; i < strs.length;i++){
			for(int j = 0; j <strs[i].length(); j++){
				if(strs[i].charAt(j) == '0') break;
				if(j == strs[i].length() - 1) count++;
			}
		}
		System.out.println(count);
	}
}

/*
掛け算のある項の数字が全て0以外なら+1
掛け算なしの項の数字が0でないならば+1
*/