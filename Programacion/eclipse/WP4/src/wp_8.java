import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

public class wp_8 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ArrayList<Integer> numbers = new ArrayList<Integer>();
		numbers.add(1);
		numbers.add(2);
		numbers.add(3);
		numbers.add(-3);
		numbers.add(-58);
		Set hash = new HashSet();
		for (int x = 0; x < numbers.size(); x++) {

			/*if (numbers.get(x) <= 0) {
				int m = numbers.get(x);
				m *= -1;

				hash.add(m);

			}
			else {
				hash.add(numbers.get(x));
			}*/
			hash.add(Math.abs(numbers.get(x)));
		}
		System.out.println(hash);

	}

}
