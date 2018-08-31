import java.util.Scanner;
public class cadenas {
	String cp = "cp";
	String mv = "mv";
	String rm = "rm";
	String mkdir = "mkdir";
	String rmdir = "rmdir";
	String texto;
	public boolean comando(String str) {
		for(int i=0;i<=str.length()-2;i++){
		  if(str.charAt(i)=='m' && str.charAt(i=i+1)=='v' && str.charAt(i=i+3)!=' ') //Teniendo en cuenta que el mv acaba en el i+1, si contamos en  espacio es i+2 y ya la SIGUIENTE LETRA ha de ser un caracter cualquiera
		  return true;
		}
		for(int i=0;i<=str.length()-2;i++){
		if(str.charAt(i)=='r' && str.charAt(i=i+1)=='m' && str.charAt(i=i+3)!=' ')
			  return true;
		}
		for(int i=0;i<=str.length()-2;i++){
			if(str.charAt(i)=='r' && str.charAt(i=i+1)=='m' && str.charAt(i=i+2)=='d' && str.charAt(i=i+3)=='i' && str.charAt(i=i+3)=='r' && str.charAt(i=i+4)!=' ')
				  return true;
			}
		for(int i=0;i<=str.length()-2;i++){
			if(str.charAt(i)=='c' && str.charAt(i=i+1)=='p' && str.charAt(i=i+3)!=' ')
				  return true;
			}
		for(int i=0;i<=str.length()-2;i++){
			if(str.charAt(i)=='m' && str.charAt(i=i+1)=='k' && str.charAt(i=i+3)=='d' &&str.charAt(i=i+3)=='i' && str.charAt(i=i+4)=='r' && str.charAt(i=i+5)!=' ')
				  return true;
			}
		return false;
		}
	public static void main(String[] args) {
		// GENERAMOS EL COMANDO MEDIANTE UN ESCANER
		Scanner sc = new Scanner(System.in); 
        System.out.print("Introduzca su comando: ");
        String comando = sc.nextLine();
       
        //INSERTAMOS EL CONSTRUCTOR DENTRO DEL MAIN
		cadenas c1= new cadenas();
		System.out.println(comando+" es un comando "+c1.comando(comando));
	}
}
