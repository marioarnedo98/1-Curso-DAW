
public class pajaro {
	private static int numPajaros=0;
	private char color;
	private int edad;
	//Metodos
	pajaro(){
		color='v';nuevoPajaro();
	}
	pajaro(char c, int e ){
		color = c; 
		edad = e ;
		nuevoPajaro();
		
	}
	//Rest
	static void nuevoPajaro() {
		numPajaros++;
	}
	static void muestrapajaros() {
		System.out.println(numPajaros);
	}
public static void main (String []args) {
	pajaro p1 =new pajaro();
	pajaro.muestrapajaros();
	pajaro p2 =new pajaro('a', 3);
	pajaro.muestrapajaros();
}
}
