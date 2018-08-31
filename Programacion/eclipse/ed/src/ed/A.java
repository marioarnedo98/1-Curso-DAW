package ed;
import java.*;
import java.util.Scanner;

public class A {
	  
	static double pi= Math.PI; 
	double calculararea(double radio) {
		double area = pi * radio * radio;  
		return area;
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
A a= new A();
test(a);
	}
	private static void test(A a) {
		Scanner sc = new Scanner(System.in);
		System.out.println("Select a number");
		int g=sc.nextInt();
		if (g>=0) {
			System.out.println(a.calculararea(g));
		}
		else 
			System.out.println("Inserta un numero positivo");
		
	}

}
