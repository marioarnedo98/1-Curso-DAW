
public class capicua {

	public static void main(String[] args) {
		int n=22;
		System.out.println(n);
		int g = n / 1000;
		int h = n / 100 - (g * 10);
		int j = n / 10 - (g * 100 + h * 10);
		int k = n - (g * 1000 + h * 100 + j * 10);
		int n2 = g + h * 10 + j * 100 + k * 1000;
		if (n > 1000) {
			System.out.println(n2);
		} else {
			if (n < 100) {
				System.out.println(n2 / 100);n2=n2/100;
			} else {
				System.out.println(n2 / 10);
				n2=n2/10;
			}

	}
if (n2==n){	System.out.println("Si es capicua");}else{System.out.println("no es capicua");}
	}
}
