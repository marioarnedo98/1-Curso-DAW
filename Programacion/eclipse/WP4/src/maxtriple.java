
public class maxtriple {
	public int middle(int nums[]) {
		int i = nums.length / 2;
		int middle = nums[i];
		return middle;
	}

	public int one(int nums[]) {
		int first = nums[0];
		return first;
	}

	public int last(int nums[]) {
		int last = nums.length - 1;
		int last1 = nums[last];
		return last1;
	}

	public void maxTriple(int nums[]) {
		System.out.println(middle(nums));
		System.out.println(one(nums));
		System.out.println(last(nums));
		if (middle(nums) > one(nums) &&  middle(nums) > last(nums)) {
				System.out.println("El numero mayor es" + middle(nums));
			
		} else if (one(nums) > last(nums) && one(nums) > middle(nums)) {
				System.out.println("El numero mayor es" + one(nums));
			
		} else if (last(nums) > one(nums) && last(nums) > middle(nums)) {
				System.out.println("El numero mayor es" + last(nums));
			
		}
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		maxtriple m = new maxtriple();
		int a[] = { 2, 3, 4, 8, 5, 8, 12 };
		int b[] = {12,58,65,17,18};
		m.maxTriple(a);
		m.maxTriple(b);
		
	}

}
