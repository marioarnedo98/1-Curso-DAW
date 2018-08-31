import java.util.HashMap;
import java.util.HashSet;

public class wp_7 {

	/*
	 * public static void joinSets( HashSet<Integer> myset, HashSet<Integer> myset2)
	 * { myset.addAll(myset2); System.out.println(myset); }
	 */

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		HashSet<Integer> myset = new HashSet<Integer>();
		myset.add(1);
		myset.add(2);
		myset.add(3);
		HashSet<Integer> myset2 = new HashSet<Integer>();
		myset2.add(3);
		myset2.add(4);
		myset2.add(5);
		for (Integer item : myset) {
			myset2.add(item);

		}
		System.out.println(myset2);

		// joinSets(myset, myset2);
	}

}
