package bucles;

public class asterisco {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int i;
		int j;
		for (i = 1; i <= 7; i++) {
			for (j = 1; j <= i-1; j++) {
				System.out.print("*");

			}
			System.out.println(" ");
		}
	}
}