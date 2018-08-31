import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Main {
	static BufferedReader dato = new BufferedReader(new InputStreamReader(
			System.in));

	public static void main(String[] args) {
		Cuenta cuenta1;
		double saldoActual;
		float cantidad = 0;
		int opcion = 0;
		saldoActual = operativaCuenta(opcion, cantidad);
		System.out.println("El saldo actual es" + saldoActual);
	}

	private static double operativaCuenta(int opcion, float cantidad) {
		Cuenta cuenta1;
		double saldoActual;
		cuenta1 = new Cuenta("Juan Mag�n", "1000-2365-85-123456789", 2500, 0);
		do {
			try {
				System.out.println("MEN� DE OPERACIONES");
				System.out.println("-------------------");
				System.out.println("1 - Ingresar");
				System.out.println("2 - Retirar");
				System.out.println("3 - Finalizar");
				opcion = Integer.parseInt(dato.readLine());
				if (opcion == 1) {
					System.out.println("�Cu�nto desea ingresar?: ");
					cantidad = Integer.parseInt(dato.readLine());
					// Operativa con la cuenta para la opci�n 1
					try {
						System.out.println("Ingreso en cuenta");
						cuenta1.ingresar(cantidad);
					} catch (Exception e) {
						System.out.print("Fallo al ingresar");
					}
				} else if (opcion == 2) {
					System.out.println("�Cu�nto desea retirar?: ");
					cantidad = Integer.parseInt(dato.readLine());
					// Operativa con la cuenta para la opci�n 2
					try {
						cuenta1.retirar(cantidad);
					} catch (Exception e) {
						System.out.print("Fallo al retirar");
					}
				} else if (opcion == 3) {
					System.out.println("Finalizamos la ejecuci�n");
				} else {
					System.err.println("Opci�n err�nea");
				}
			} catch (IOException ex) {
				Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null,
						ex);
			}
		} while (opcion != 3);
		saldoActual = cuenta1.saldo;
		return saldoActual;
	}

}
