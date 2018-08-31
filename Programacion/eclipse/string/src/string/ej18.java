package string;
import java.util.Scanner;
public class ej18 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner cs= new Scanner (System.in);
		String nombre;
		System.out.print("Insertar una palabra");
		nombre=cs.nextLine();
		String name = nombre.toLowerCase();
		int j =0;
		char letter='a';
		char[] arrayChar = name.toCharArray();
		for (int c = 0; c < name.length(); c++)

			if (arrayChar[c] == letter) {
				j++;
			}
	System.out.println(j);			
	}
}
