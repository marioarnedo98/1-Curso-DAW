package examn2;

import java.*;
import java.util.Arrays;

public class ejercice2 {
	public boolean esDemonio(int entrada[]) {
		int count = 0;
		for (int i = 0; i < entrada.length; i++) {
			if (entrada[i] == 6) {
				count++;
			}
			if (count >= 3) {
				return true;
			}
		}

		return false;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int a[] = { 1, 6, 5, 6, 7, 6, 9, 8, 6, 2, 6, 1 };
		int b[] = { 5, 8, 7, 4, 2, 2, 3, 8, 7, 6, 7, 1 };
		int c[] = {1,6,6,6};
		int d[] = {666,854};
		ejercice2 e = new ejercice2();
		System.out.println(e.esDemonio(a)); // true
		System.out.println(e.esDemonio(b)); // false
		System.out.println(e.esDemonio(c));
		System.out.println(e.esDemonio(d)); 
		

	}

}
