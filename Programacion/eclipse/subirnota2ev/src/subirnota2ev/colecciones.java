package subirnota2ev;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

public class colecciones {
	public static ArrayList<Integer> encontrarDuplicados(ArrayList<Integer> lista) {
		ArrayList<Integer> result = new ArrayList<>();
		HashSet<Integer> set = new HashSet<>();
		for (Integer item : lista) {

            // If String is not in set, add it to the list and the set.
            if (!set.contains(item)) {
                result.add(item);
                set.add(item);
            }
        }
        return result;
    }


	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ArrayList<Integer> lista = new ArrayList<Integer>();
		lista.add(22);
		lista.add(55);
		lista.add(2);
		lista.add(88);
		lista.add(22);
		encontrarDuplicados(lista);
	}

}
