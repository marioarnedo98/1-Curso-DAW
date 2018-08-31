import java.util.*;

public class Ejercice10 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		List<Integer> numbers = new ArrayList<Integer>();
		numbers.add(1);
		numbers.add(1);
		numbers.add(3);
		numbers.add(5);
		numbers.add(5);
		numbers.add(3);
		numbers.add(-3);
		Set<Integer> count = new HashSet<Integer>(numbers);
		for(int key:count) {
			System.out.println(key+" : " +Collections.frequency(numbers, key));
		}
	}
}
