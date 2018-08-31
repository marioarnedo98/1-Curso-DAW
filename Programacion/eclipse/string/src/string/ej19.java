package string;

public class ej19 {
	public static void main(String[] args) {
		// TODO Auto-generated method static
		System.out.println(calcular1());
	}

	static boolean calcular1() {
		String text1 = "Amor";
		String text2 = "Roma";
		int palabra1 = text1.length();
		int palabra2 = text2.length();
		int contador = 0;
		boolean salida = false;
		if (palabra1 == palabra2) {
			for (int i = 0; i <= (palabra1 - 1); i++) {
				for (int j = 0; j <= (palabra2 - 1); j++) {
					if (text1.charAt(i) == text2.charAt(j)) {
						contador = contador + 1;
						j = palabra1 + 1;
						if (contador == palabra1)
							salida=true;
						else
							salida=false;
					}
				return (salida);
				}
			}
		}
		return salida;
	}

}