import java.util.Arrays;

public class baileBulgaro1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int array[] = { 20, 4, 5, 1, 31 };
		Arrays.sort(array);
		System.out.println("Sorted array" + Arrays.toString(array));
		int index5 = Arrays.binarySearch(array, 5);
		System.out.println("Found 5 in position " + index5);
		int index6 = Arrays.binarySearch(array, 6);
		if (index6 >= 0) {
			System.out.println("Found 6 in position " + index6);
		}
		else {
			System.out.println("Found 6 in position: Not found");
		}
	}

}
