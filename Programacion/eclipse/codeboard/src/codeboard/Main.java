package codeboard;

public class Main {
	public static int metodo(Integer n) {
		int numero = 0;
		if (n == 0) {
			return numero;
		} else {
			numero = numero + n % 10;
			n= n/10;
			return metodo(n) + numero;
		}
	}

	public static void main(String[] args) {
		int sum = metodo(33);
		System.out.println(sum);
	}
}
