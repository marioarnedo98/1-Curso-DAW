package examn2;

import java.*;
import java.util.HashMap;

public class Almacen {
	public HashMap<String, Float> productos;

	public Almacen() {
		productos = new HashMap<String, Float>();
	}

	public void guardarProducto(String codigo, float precio) {
		productos.put(codigo, precio);

	}

	public void modificarPrecio(String codigo, float precio) {
		productos.keySet();

	}

	public void mostrarProductos() {
		for (String a : productos.keySet()) {
			Float valor2 = productos.get(a);
			System.out.println(a + " -> " + valor2);
		}

	}

	public void eliminarProducto(String codigo) {
		productos.remove(codigo);

	}

}
