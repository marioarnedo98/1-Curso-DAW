
public class ejercice5 {

	public static void main(String[] args) {
		int n = 1;
		boolean esPrimo = true;
		for (int j = 1; j < 100; j++) {
		for (int x = 2; x < n; x++) {
			if (n % x == 0) {
				esPrimo = false;
			}
			System.out.println(j);
		}
		if (esPrimo) {
			System.out.println(j);
			System.out.println("Es primo");
		} else {
			System.out.println(j);
			System.out.println("No es primo");
		}
	}
}
}