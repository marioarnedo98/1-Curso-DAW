
public class Temperatures {
	public int temp[][] = new int[5][5];
	public int calculateAverage = 0;

	public void asign() {
		for (int x = 0; x < temp.length; x++) {
			for (int b = 0; b < temp.length; b++) {
				temp[x][b] = (int) (Math.random() * 50) + 1;
				System.out.print(temp[x][b] + " ");
				calculateAverage += temp[x][b];

			}
			System.out.println(" ");
		}
	}

	public void average() {
		System.out.println("La media es de " + calculateAverage / (temp.length * temp[0].length));
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Temperatures t = new Temperatures();
		t.asign();
		t.average();

	}
}