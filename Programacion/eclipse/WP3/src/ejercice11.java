
public class ejercice11 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int i;
		int j;
		for (i = 1; i <= 5; i++) {
			for (j =1; j <= 5-i; j++) {
				System.out.print(".");
			}
			for (j = 1; j <= i; j++) {
				System.out.print(i);

			}
			System.out.println("");
		}
	}
}
