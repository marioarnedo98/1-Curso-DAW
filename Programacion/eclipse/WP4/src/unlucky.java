
public class unlucky {
	public boolean pepe(int[] nums) {
		for (int i = 0; nums.length < i; i++) {
			if (nums[i] == 1 && nums[i++] == 3) {
				return true;
			}
		}
		return false;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		unlucky u = new unlucky();
		int[] a = { 4, 3, 1, 3, 5 };
		System.out.println(u.pepe(a));
		int[] b = { 3, 5, 6, 8 };
		System.out.println(u.pepe(b));
	}

}
