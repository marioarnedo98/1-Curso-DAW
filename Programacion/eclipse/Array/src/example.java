
public class example {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		double myList[] = { 1.9, 2.9, 3.4, 3.5 };
		for (double element : myList) {
			System.out.println(element);

		}
		double[] hola = { 1.9, 2.8, 5.9 };
		for (int i = 0; i < hola.length; i++) {
			System.out.println(i + "------->" + hola[i]);
		}
		int numeros[] = new int[5];
		for (int j = 0; j < numeros.length; j++) {
			numeros[j] = 2 + 2 * j;
			System.out.println(numeros[j]);
		}
		String cadenas[] = new String[4];

		for (int h = 0; h < cadenas.length; h++) {
			cadenas[h] = Integer.toString(h);
			System.out.println(cadenas[h]);

		}
	}

}
