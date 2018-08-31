package string;
import java.util.Scanner;

public class escaner {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		 Scanner sc = new Scanner(System.in);  //crear un objeto Scanner
         String nombre;
         String apellido1;
         String apellido2;
         System.out.print("Introduzca su nombre: ");
         nombre = sc.nextLine();  //leer un String
         System.out.print("Introduzca su apellido 1: ");
         apellido1 = sc.nextLine();
         System.out.print("Introduzca su apellido 2: ");
         apellido2 =sc.nextLine();
         System.out.println(nombre.charAt(0));
         System.out.println(apellido1.charAt(0));
         System.out.println(apellido2.charAt(0));
	}

}
