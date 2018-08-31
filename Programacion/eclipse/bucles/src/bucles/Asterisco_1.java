package bucles;

public class Asterisco_1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int i;
		int j;
		for (i = 1; i <= 7; i++) {
			for (j =1; j <= i; j++) {
				System.out.print(" ");
			}
			for (j = 1; j <= i; j++) {
				System.out.print("*");

			}
			System.out.println("");
		}
	}
}
