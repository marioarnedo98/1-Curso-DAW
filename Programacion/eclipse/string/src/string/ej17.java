package string;
import java.util.StringTokenizer;
public class ej17 {

	public static void main(String[] args) {
		 	String nombre="Mario Arnedo Gonzalez";
			StringTokenizer tokens=new StringTokenizer(nombre);
			while(tokens.hasMoreTokens()){
		            System.out.println(tokens.nextToken().charAt(0));
		        }
		    }
		}

