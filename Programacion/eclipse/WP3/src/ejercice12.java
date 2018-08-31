
public class ejercice12 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int i;
		int j;
		for (i = 1; i <= 6; i++) {
			for (j =1; j <= 6-i; j++) {
				System.out.print(".");
			}
			for (j = 1; j <=1; j++) {
				System.out.print(i);

			}
			for (j = 1; j<=i-1; j++) {
				System.out.print(".");

			}
			System.out.println("");
		}
	}
}

