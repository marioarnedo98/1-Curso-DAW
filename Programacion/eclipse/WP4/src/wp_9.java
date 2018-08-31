import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

public class wp_9 {
	public static void joiniterator( ArrayList<Integer> numbers,  ArrayList<Integer> numbers2) {
		numbers.addAll(numbers2);
		System.out.println(numbers);
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ArrayList<Integer> numbers = new ArrayList<Integer>();
		numbers.add(1);
		numbers.add(2);
		numbers.add(3);
		ArrayList<Integer> numbers2 = new ArrayList<Integer>();
		numbers2.add(3);
		numbers2.add(4);
		numbers2.add(5);
		joiniterator(numbers, numbers2);
	}

}
