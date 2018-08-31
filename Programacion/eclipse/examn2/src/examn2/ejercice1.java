package examn2;

import java.*;
import java.util.Arrays;

public class ejercice1 {
	public void creaArrayOrdenado(int nums[]) {
		Arrays.sort(nums);
		System.out.println("Sorted array" + Arrays.toString(nums));
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int a[] = { 1, 6, 5, 6, 7, 6, 9, 8, 6, 2, 6, 1 };
		int b[] = { 50, 84, 72, 48, 22, 25, 37, 83, 77, 68, 72, 15 };
		ejercice1 n = new ejercice1();
		n.creaArrayOrdenado(a);
		n.creaArrayOrdenado(b);
	}

}
