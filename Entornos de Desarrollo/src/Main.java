import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Main {
	static BufferedReader dato = new BufferedReader(new InputStreamReader(
			System.in));

	public static void main(operativa_cuenta parameterObject) {
		cuenta1 micuenta;
		double saldoActual;
		int opcion = 0;
		micuenta = new cuenta1("Juan Magán", "1000-2365-85-123456789", 2500, 0);
		do {
			try {
				System.out.println("MENÚ DE OPERACIONES");
				System.out.println("-------------------");
				System.out.println("1 - Ingresar");
				System.out.println("2 - Retirar");
				System.out.println("3 - Finalizar");
				opcion = Integer.parseInt(dato.readLine());
				if (opcion == 1) {
					System.out.println("¿Cuánto desea ingresar?: ");
					float ingresar = Integer.parseInt(dato.readLine());
					// Operativa con la cuenta para la opción 1
					try {
						System.out.println("Ingreso en cuenta");
						micuenta.ingresar(ingresar);
					} catch (Exception e) {
						System.out.print("Fallo al ingresar");
					}
				} else if (opcion == 2) {
					System.out.println("¿Cuánto desea retirar?: ");
					float retirar = Integer.parseInt(dato.readLine());
					// Operativa con la cuenta para la opción 2
					try {
						micuenta.retirar(retirar);
					} catch (Exception e) {
						System.out.print("Fallo al retirar");
					}
				} else if (opcion == 3) {
					System.out.println("Finalizamos la ejecución");
				} else {
					System.err.println("Opción errónea");
				}
			} catch (IOException ex) {
				Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null,
						ex);
			}
		} while (opcion != 3);
		saldoActual = micuenta.saldo;
		System.out.println("El saldo actual es" + saldoActual);
	}

}
