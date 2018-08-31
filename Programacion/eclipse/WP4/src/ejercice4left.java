
public class ejercice4left {
	public int[] shiftLeft(int[] nums) {
		if (nums.length >= 2) {
			int a = nums[0];
			for (int i = 0; i < nums.length - 1; i++)
				nums[i] = nums[i + 1];
			nums[nums.length - 1] = a;
		}
		return nums;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ejercice4left e = new ejercice4left();
		int p[] = { 3, 8, 1, 2, 5, 9};
		System.out.println(e.shiftLeft(p));
	}

}
