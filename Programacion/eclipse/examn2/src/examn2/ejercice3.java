package examn2;

import java.*;
import java.util.ArrayList;

public class ejercice3 {
	// create a new arraylist
	/*
	 * public ArrayList <String> hayRuido; 
	 * hayRuido = new Arraylist<String>(inicial, ultimo);
	 */
	public void hayRuido(int inicial, int ultimo) {
		int i;
		for (i = inicial + 1; i <= ultimo; i++) {
			if (i % 3 == 0) {
				System.out.print(" Silvido ");
				if (i % 5 == 0) {
					System.out.print(" Zumbido ");
				}
				if (i % 3 == 0 & i % 5 == 0) {
					System.out.print(" Silvido y zumbido ");
				} 
				else {
					System.out.print(i);
				}	
			}
		}

	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ejercice3 e = new ejercice3();
		//e.hayRuido(2, 16);
	e.hayRuido(3, 3);
	}

}
