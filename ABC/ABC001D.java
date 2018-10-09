import java.io.*;
import java.util.Scanner;

public class ABC001D {
	public static void main(String[] args) {
		int w1, w2;
		String s;
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));

		try {
			s = reader.readLine();
			w1 = Integer.parseInt(s.substring(0, 4));
			w2 = Integer.parseInt(s.substring(6-1));
			System.out.println(w1);
			System.out.println(w2);
		} catch (IOException e) {
			System.out.println(e);
		}
	}
}