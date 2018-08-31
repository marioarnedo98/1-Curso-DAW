
public class MiPunto {
	private int x;
	private int y;

	public MiPunto() {
		x = 0;
		y = 0;
	}

	public MiPunto(int x, int y) {
		this.x = x;
		this.y = y;
	}

	public int getX() {
		return x;
	}

	public void setX(int x) {
		this.x = x;
	}

	public int getY() {
		return y;
	}

	public void setY(int y) {
		this.y = y;
	}

	public void setxy(int x, int y) {
		this.x = x;
		this.y = y;
	}

	public String toString() {
		System.out.println(x);
		System.out.println(y);
		return null;
	}

	public int calculaDistancia(int x1,  int y1) {
		int d = (int)( Math.sqrt(Math.pow((x1 - x), 2) + Math.pow((y1 - y), 2)));
		return d;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		MiPunto p1 = new MiPunto(7, 5);
		System.out.println(p1.calculaDistancia(4, 1));
		System.out.println();
		p1.toString();
	}

}
