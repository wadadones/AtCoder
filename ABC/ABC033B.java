import java.util.Scanner;

class ABC033B {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int N, P, Psum = 0, Pmax = 0;
		String S, Smax = "";

		N = sc.nextInt();
		for (int i = 0; i < N; i++) {
			S = sc.next();
			P = sc.nextInt();
			Psum += P;
			if (Pmax < P) {
				Pmax = P;
				Smax = S;
			}
		}
		if (Psum < 2 * Pmax) System.out.println(Smax);
		else System.out.println("atcoder");
	}
}
/*N 個の町が合併し、1 つの新しい市になることになりました。合併前の i(1≦i≦N) 番目の町は名称が Si で、人口が Pi 人です。 新しい市の名称を、以下のように決めようとしています。

N 個の町の人口の合計の過半数以上の人口を有する町が存在するならば、新しい市の名称はその町の名称を引き継ぐことにする。
そのような町が存在しないならば、新しい市の名称は atcoder とする。
それぞれの町の名称と人口が与えられるので、合併後の新しい市の名称を出力してください。

入力
入力は以下の形式で標準入力から与えられる。

N
S1 P1
S2 P2
:
SN PN
1 行目には、整数 N(2≦N≦1,000) が与えられる。
2 行目から N 行では、それぞれの町の情報が与えられる。このうち i 行目には、英小文字のみからなる長さ 1 以上 20 以下の文字列 Si と 整数 Pi(1≦Pi≦100,000) が空白区切りで与えられる。
S1, S2, …, SN は全て異なる。
出力
合併後の新しい市の名称を 1 行に出力せよ。

出力の末尾にも改行を入れること。

入力例 1
4
unagi 20
usagi 13
snuke 42
smeke 7
出力例 1
snuke
4 つの町の合計人口は 20+13+42+7=82 人です。3 番目の町はこの過半数以上の人口を有しています。*/