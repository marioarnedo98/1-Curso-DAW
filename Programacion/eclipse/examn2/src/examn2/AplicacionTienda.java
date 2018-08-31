package examn2;

import java.util.Scanner;

public class AplicacionTienda {

	public static void main(String[] args) {

		Almacen miAlmacen = new Almacen();

		Scanner sc = new Scanner(System.in);
		int opcionElegida = 0;
		float precio;
		String codigo;

		while (opcionElegida != 5) {
			System.out.println("Introduce el numero de la opción que quieras:");
			System.out.println("1.- Introducir producto");
			System.out.println("2.- Modificar precio");
			System.out.println("3.- Mostrar todos los productos");
			System.out.println("4.- Eliminar producto");
			System.out.println("5.- Salir");
			opcionElegida = sc.nextInt();

			switch (opcionElegida) {
			case 1:
				System.out.println("Introduce el códido del producto:");
				codigo = sc.next();
				System.out.println("Introduce el precio del producto:");
				precio = sc.nextFloat();
				miAlmacen.guardarProducto(codigo, precio);
				break;
			case 2:
				System.out.println("Introduce el códido del producto del que quieres cambiar el precio:");
				codigo = sc.next();
				System.out.println("Introduce el nuevo precio:");
				precio = sc.nextFloat();
				miAlmacen.modificarPrecio(codigo, precio);
				break;
			case 3:
				miAlmacen.mostrarProductos();
				break;
			case 4:
				System.out.println("Introduce el códido del producto que quieres eliminar:");
				codigo = sc.next();
				miAlmacen.eliminarProducto(codigo);
				break;
			case 5:
				break;
			default:
				System.out.println("Tienes que introducir una opción valida");
			}

		}
		sc.close();
	}
}
