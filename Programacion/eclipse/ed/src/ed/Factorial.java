package ed;

public class Factorial {
	

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}
	public static int factorial(int x) throws IllegalArgumentException {
		int response = 1;
		if (x < 0) {
			throw new IllegalArgumentException();
		}
		if (x > 0) {
			response = x * factorial(x - 1);
		}
		return response;
	}
}
