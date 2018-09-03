package unit3;

public class Amstrong {
	public static void main(String[] args) {
		// TODO Auto-generated method stub;
		int a = 532;
		int original = 1532;
		int c=0;
		int d=0;
		int b=0;
		int cifras = 0;
		while (a != 0) { // mientras a n le queden cifras
			a = a / 10; // le quitamos el último dígito
			cifras++; // sumamos 1 al contador de cifras
		}
		c = (int) Math.pow(10, cifras)/10;
		System.out.println("El número tiene " + cifras + " cifras");
		while (c >= 1) {
			b = original / c;
			d = d + (int) Math.pow(b, cifras);
			a = a % c;
			c = c / 10;
			System.out.println(c);
			System.out.println(d);
		}

	}

}
