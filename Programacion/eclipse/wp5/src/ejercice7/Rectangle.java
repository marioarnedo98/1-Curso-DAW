package ejercice7;

public class Rectangle extends Shape {
	protected double width;
	protected double lenght;

	public Rectangle() {
		width = 20.0;
		lenght = 17.0;
	}

	public Rectangle(double lenght, double width) {
		this.lenght = lenght;
		this.width = width;
	}

	public Rectangle(double lenght, double width, String color, boolean filled) {
		super(color, filled);
		this.lenght = lenght;
		this.width = width;
		this.color = color;
		this.filled = filled;
	}

	public double getWidth() {
		return width;
	}

	public void setWidth(double width) {
		this.width = width;
	}

	public double getLenght() {
		return lenght;
	}

	public void setLenght(double lenght) {
		this.lenght = lenght;
	}

	@Override
	public double getArea() {
		// TODO Auto-generated method stub
		return getWidth()*getLenght();
	}

	@Override
	public double getPerimeter() {
		// TODO Auto-generated method stub
		return 0;
	}

}
