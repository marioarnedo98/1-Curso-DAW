import java.util.ArrayList;
import java.util.Arrays;

public class codingBat {
	public static ArrayList<Integer> ZeroFront(ArrayList<Integer> lst) {
		for (int a = 0; a < lst.size(); a++) {
			if (lst.get(a) == 0) {
				lst.add(0, lst.get(a));
				lst.remove(a + 1);
			}
		}
		return lst;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ArrayList<Integer> b = new ArrayList<Integer>();
		b.add(2);
		b.add(1);
		b.add(6);
		b.add(9);
		b.add(0,4);
		b.add(7);
		b.add(5);
		b.add(1);
		System.out.println(ZeroFront(b));
	}

}
