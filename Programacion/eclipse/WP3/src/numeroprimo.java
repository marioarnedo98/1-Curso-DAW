
public class numeroprimo {
	public boolean esPrimo(int number) {
		boolean esPrimo = true;

		for (int x = 2; x < number; x++) {
			if (number % x == 0) {
				esPrimo = false;

				x = number;
			}

		}

		if (esPrimo) {
			return true;
		} else {
			return false;
		}
	}

	int reverse_numbers(int a) {
		int reverse = 0;
		int unit;
		while (a > 0) {
			unit = a % 10;
			reverse = reverse * 10 + unit;
			a = a / 10;

		}
		return reverse;
	}

	public static void main(String[] args) {
		numeroprimo p1 = new numeroprimo();
		int num = 90;
		int num2 = p1.reverse_numbers(num);
		if (p1.esPrimo(num) == true && p1.esPrimo(num2)) {
			System.out.println(num + " And " + num2 + " Are omrirp ");
		}else {
			System.out.println(num + " And " + num2 + " Are not omrirp ");
		}
	}
}