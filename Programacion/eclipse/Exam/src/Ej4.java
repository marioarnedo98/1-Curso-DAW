import java.util.Scanner;
public class Ej4 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in); 
        System.out.print("Introduzca su numero: ");
        int numero = sc.nextInt(); //Aqui utilizamos el next int para decirle que el siguiente numero que vamos a hacer es un int
        
        for(int contador=1;numero>contador;){
        	if(numero%2==0) {
        		numero=numero/2;
        		System.out.println(numero);
        	}
        	else {
        		numero=(numero*3)+1;
        		System.out.println(numero);
        	}
        }
	}
}