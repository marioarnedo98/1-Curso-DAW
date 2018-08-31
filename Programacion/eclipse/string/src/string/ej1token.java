package string;

import java.util.StringTokenizer;

public class ej1token {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String text = "Juan\n5.5\nAmelia\n8.6\nAlejandro\n2.0";
		StringTokenizer tokens = new StringTokenizer(text, "\n");
		while (tokens.hasMoreTokens()) {
			System.out.print("El alumno " +tokens.nextToken());
			System.out.println(" ha sacado " +tokens.nextToken());
		}
	}

}
