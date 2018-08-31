package subirnota2ev;

import java.util.Scanner;

public class AplicacionCompra {

	public static void main(String[] args) {

		Lista miLista = new Lista();

		Scanner sc = new Scanner(System.in);
		int opcionElegida = 0;
		String producto;

		while (opcionElegida != 5) {
			System.out.println("Introduce el numero de la opción que quieras:");
			System.out.println("1.- Introducir producto a comprar");
			System.out.println("2.- Mostrar toda la lista");
			System.out.println("3.- Eliminar producto de la lista de la compra");
			System.out.println("4.- Salir");
			opcionElegida = sc.nextInt();

			switch (opcionElegida) {
			case 1:
				System.out.println("Introduce el nombre del producto:");
				producto = sc.next();
				miLista.guardarProducto(producto);
				break;
			
			case 2:
				miLista.mostrarProductos();
				break;
			case 3:
				System.out
						.println("Introduce el nombre del producto que quieres eliminar:");
				producto = sc.next();
				miLista.eliminarProducto(producto);
				break;
			case 4:
				break;
			default:
				System.out.println("Tienes que introducir una opción valida");
			}

		}
		sc.close();
	}
}
