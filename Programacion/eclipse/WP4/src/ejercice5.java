
public class ejercice5 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int count = 0;
		int[] a = { 1, 5, 8, 5, 6, 7, 2, 7};
		for (int i = 0; i < a.length; i++) {
			if (a[i] == a[a.length - 1]) {
				count++;
			}
		}
	System.out.println(count);
	}

}
