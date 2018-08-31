
public class ejercice6minorgap {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int result = 0;

		int[] test = new int[] { 2, 1, 4, 5, 5, 7 };
		int min = Math.abs(test[0] - test[1]);
		for (int i = 0; i < test.length - 1; i++) {
			result = test[i] - test[i + 1];
			int absolute = Math.abs(result);
			if (min > absolute) {
				min = absolute;
			}

		}
		System.out.println(min);
	}
}