package bucles;

public class unit3_1 {
	public int a = 17;
	public int b = 17;
	public int c = 17;
	public int d = a;

	public int min() {
		int result = 0;
		if (a < b && a < c && b < c)
			result = a;
		else if (a < b && a < c && b > c)
			result = a;

		else if (a > b && a < c && b < c)
			result = b;
		else if (a < b && b > c && c < a)
			result = c;

		else if (a > b && b < c && a > c)
			result = b;
		else if (a > b && a > c && c < b)
			result = c;
		else if (a == b && b == c && c == a)
			result = d;
		return result;
	}

	public static void main(String[] args) {
		unit3_1 t = new unit3_1();
		System.out.print("result is " + t.min());
	}
}
