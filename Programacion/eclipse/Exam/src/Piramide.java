
public class Piramide {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int j = 1;
		int espacio = 7;
		for (int lineas = 0; lineas < 5; lineas++) {
			for (int hueco = 0; hueco < j; hueco++) {
				System.out.print(" ");
			}
			j++;
			System.out.print("*");
			for (int f = 0; f < espacio; f++) {
				System.out.print(".");
			}
			espacio = espacio - 2;
			if (espacio != -3)
				System.out.print("*");
			System.out.println();
		}

	}
}
