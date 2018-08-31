
public class ejercice13 {
	public static int cifra(int n) {
		int cifras = 0;
		while (n != 0) {
			n = n / 10;
			cifras++;
		}
		return cifras;
	}

	public static int number(int n) {
		int b = ((int) Math.pow(10, cifra(n))) / 10;
		// System.out.println(b);
		int a;
		int x = n;
		int c = 0;

		while (b >= 1) {
			a = x / b;
			c = c + (int) Math.pow(a, cifra(n));
			x = x % b;
			b = b / 10;
		}
		return c;

	}

	public static void main(String[] args) {
		int num = 153;
		if (num == number(num))
			System.out.print(num + " Es Armstrong");
		else
			System.out.print(num + " no es Armstrong");
	}
}