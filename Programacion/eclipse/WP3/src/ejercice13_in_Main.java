
public class ejercice13_in_Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int n = 153;
		int original = (n);
		int c = 0;
		int a;
		int cifras = 0;
		while (n != 0) {
			n = n / 10;
			cifras++;
		}
		System.out.println("El número tiene " + cifras + " cifras");
		int b = (int) (Math.pow(10, cifras) / 10);
		System.out.println(b);
		int num = n;
		while (c >= 1) {
			a = n % b;
			c = c + (int) Math.pow(a, cifras);
			n = n % b;
			b = b / 10;
		}
		if (num == b)
			System.out.println("Amstrong number");
		else
			System.out.println("Not Amstrong Number");

	}

}
