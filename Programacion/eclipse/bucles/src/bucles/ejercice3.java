package bucles;

public class ejercice3 {
	public static void main(String[] arguments) {
		int a = 2;
		int b = 12;
		int c = 10;
		if (a + b == c || b + c == a || c + b == a || c + a == b)
			System.out.print("It's the same number");
		else
			System.out.println("It's not equal");
	}
}
