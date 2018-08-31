package subirnota2ev;

import java.util.HashSet;

public class Lista {
	 HashSet<String> productos = new HashSet<String>();
	public void guardarProducto(String producto) {
		productos.add(producto);
		
	}

	public void mostrarProductos() {
		// TODO Auto-generated method stub
		for(String item : productos) {
            System.out.println(item.toString());
        }
	}

	public void eliminarProducto(String producto) {
		// TODO Auto-generated method stub
		productos.remove(producto);
	}

}
