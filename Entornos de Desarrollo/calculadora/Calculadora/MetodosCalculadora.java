
public class MetodosCalculadora {
	double numero1,numero2,resultado;
	
	public MetodosCalculadora(double n1, double n2){
		numero1 = n1;
		numero2 = n2;
		resultado = 0;
	}
	
	public double getResultado(){
		return resultado;
	}
	
	public double getSuma(){
		resultado = numero1 + numero2;
		return resultado;
	}
	
	public double getResta(){
		resultado = numero1 - numero2;
		return resultado;
	}
	
	public double getMultiplicacion(){
		resultado = numero1 * numero2;
		return resultado;
	}
	
	public double getDivision(){
		resultado = numero1 / numero2;
		return resultado;
	}

}
