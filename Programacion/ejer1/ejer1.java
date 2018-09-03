import java.util.ArrayList;
import java.util.HashMap;

public class ejer1 {

	public static void main(String[] args) {		
		// Arrays
		
		// Arrays - Crear		
		int[] i = new int[7];
		i[0] = 12;
		i[1] = 56;
		
		int[] i2 = new int[] {5,4,6,5,4,7,3};
		// i[0] = 5;
		
		// Arrays - Introducir/Cambiar valores
		i[6] = 17;
		i[6] = 14;
		
		// Arrays - Recorrer
		for(int n = 0; n < i.length; n++) {
			System.out.println(i[n]);
		}		
		
		for(int x : i) {
			System.out.println(x);
		}
		
		// Arrays - Comprobar contiene valor
		int asdlkj = 212;
		
		boolean contiene = false;
		int[] ni = new int[] { 12,12,12,212,12};
		for (int n = 0; n< i.length; n++) {
			if (i[n]== asdlkj) {
				contiene=true;
			}
		}
		
		boolean contiene2=false;
		for (int a : i) {
			if (a==asdlkj) {
				contiene2=true;
			}
		}
		
		
		// Listas
		
		// Listas - Crear
		ArrayList<Integer> listaInteger = new ArrayList<Integer>();
		ArrayList<String> listaString = new ArrayList<String>();
		
		
		// Listas - Introducir/Eliminar valores 
		listaString.add("Javier");
		listaString.add("Luis");
		listaString.add("Rachel");
		
		listaString.remove("Javier");
		listaString.remove("Luis");
		listaString.remove("Rachel");
		
		
		// Listas - Recorrer
		for (int a = 0; a<listaString.size();a++) {
			String valor = listaString.get(a);
			System.out.println(valor);
		}
		
		for (String  a : listaString) {
			System.out.println(a);
		}
		
		
		// Listas - Comprobar existe valor		
		if(listaString.contains("Javier")) {
			System.out.println("Contiene Javier!");
		}
		
		
		// HashMap
		
		// HashMap LLAVE-VALOR
		HashMap<Integer, String> intString = new HashMap<Integer, String>();
		HashMap<Integer, Integer> intInt = new HashMap<Integer, Integer>();
		HashMap<String, Integer> stringInt = new HashMap<String, Integer>();
		HashMap<String, String> stringString = new HashMap<String, String>();
		
		// HashMap - Insertar/Eliminar Valores
		stringString.put("Javier", "Va al gimnasio 8 dias a la semana");
		stringString.put("Alejandro", "Va al gimnasio 2 dias a la semana");
		stringString.put("Maria", "Va al gimnasio 1 dias a la semana");
		stringString.put("Pedro", "Va al gimnasio 3 dias a la semana");
		stringString.remove("Javier");
		
		
		// HashMap - Obtener valor
		String valor = stringString.get("Javier");
		
		
		// HashMap - Recorrer
		
		/*KeySet devuelve una Lista de las llaves almacenadas en el mapa
		 * En este caso devolveria una lista:
		 * - Alejandro
		 * - Maria
		 * - Pedro
		 */
		
		for(String a : stringString.keySet()) {
			String valor2 = stringString.get(a);
			System.out.println(a + " -> " + valor2);
		}
		
		
		// HashMap - Comprobar existe
		if(stringString.containsKey("Javier")) {
			System.out.println("CONTIENE");
		}
	}
}
