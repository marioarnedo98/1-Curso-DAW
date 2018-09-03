public class cuenta1 {

	public String nombre;
	public String cuenta;
	public double saldo;
	public double tipoInteres;

	public cuenta1() {
	}

	public cuenta1(String nom, String cue, double sal, double tipo) {
		nombre = nom;
		cuenta = cue;
		saldo = sal;
		tipoInteres = tipo;
	}

	public void ingresar(double cantidad) throws Exception {
		if (cantidad < 0) {
			throw new Exception("No se puede ingresar una cantidad negativa");
		}
		saldo = saldo + cantidad;
	}

	public void retirar(double cantidad) throws Exception {
		if (cantidad < 0) {
			throw new Exception("No se puede retirar una cantidad negativa");
		}
		if (saldo < cantidad) {
			throw new Exception("No se hay suficiente saldo");
		}
		saldo = saldo - cantidad;

	}

}
