package person;

public class square {
	private double a;
	private double peri;
	private double area;

	public square() {
		a = 16;
	}

	public void perimetro() {
		peri = a + a + a + a;
	}
	public void area() {
		area=a*a;
	}
}
