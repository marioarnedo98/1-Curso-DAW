package person;

public class trinagle {
	private int a;
	private int b;
	private int c;

	public trinagle() {
		a = 5;
		b = 7;
		c = 9;
	}

	public void checkTrinagle() {
		if (a == b && a == c && b == c)
		System.out.println("This triangle is equilateral");
		
	}
}
