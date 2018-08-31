package person;

public class plane {
	private int y;
	private int x;

	public plane(int y, int x) {
		this.y = y;
		this.x = x;
	}

	public void method() {
		if (x > 0 && y > 0) {
			System.out.println("You are in the 1 sector");
		}
		if (x < 0 && y < 0) {
			System.out.println("Your are in the 2 sector");
		}
		if (x <= 0 && y >= 0) {
			System.out.println("You are in the 3 sector");
		}
	}
}
