package subirnota2ev;

public class elefantes {
	public static int elefantesBalanceados(int peso, int[] elefantes) {
		int count = 0;
		int suma = 0;
		for (int n = 0; elefantes.length > n; n++) {
			suma += elefantes[n];
			if (suma <= peso) {
				count++;

			} else {
				break;
			}

		}

		return count;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int peso = 30;
		int[] i2 = new int[] { 10,10,20,10 };
		System.out.println(elefantesBalanceados(peso, i2));
		
		int peso2=10;
		int[] i1 = new int[] {1,2,3,4,5};
		System.out.println(elefantesBalanceados(peso2, i1));
		
		int peso3=20;
		int[] i3 = new int[] {3,3};
		System.out.println(elefantesBalanceados(peso3, i3));
	}

}
