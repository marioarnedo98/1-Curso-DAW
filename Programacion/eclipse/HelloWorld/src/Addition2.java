
public class Addition2 {
	static int a = 150;

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int b = 50;
		int c = sum(b);
		System.out.println("La suma de " + a + " y " + b + " es " + c);
	}

	static int sum(int y) {
		int z;
		z = a + y;
		return z;
	}
}
