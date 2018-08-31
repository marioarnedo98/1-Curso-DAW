package person;

public class Game2 {
	private int livesleft;
	private int livesstart;
	private int record;

	public Game2() {
		this.livesstart = 5;
		this.record = 0;

	}

	public void substractLife() {
		livesleft = livesstart - 1;
		if (livesleft >= 0)
			System.out.print("te quedan " + livesleft);
		else
			System.out.print("No te quedan vidas");
	}

	public void substractLife2() {
		livesleft = livesleft - 1;
		if (livesleft >= 0)
			System.out.print("te quedan " + livesleft);
		else
			System.out.print("No te quedan vidas");

	}

	public void restartlives() {
		livesleft = livesstart;
	}

	public void updateRecord() {
		if (livesleft > record)
			record = livesleft;
		else
			record = record;

	}

	public void Record() {
		if (livesleft == record)
			System.out.println("You have met the record!");
		else {
			if (livesleft > record)
				System.out.println("There is a new record!");
			else
				System.out.println(" ");
		}
	}

	public static void main(String[] args) {
		Game2 g1 = new Game2();

		g1.substractLife();
		System.out.println();
		g1.substractLife2();
		System.out.println();
		g1.substractLife2();
		System.out.println();
		System.out.println();
		g1.Record();
		System.out.println();
		g1.updateRecord();

		g1.restartlives();
		System.out.println();
		g1.substractLife();
		System.out.println();
		g1.substractLife2();
		System.out.println();
		g1.substractLife2();
		System.out.println();
		g1.updateRecord();
		System.out.println();
		g1.Record();

		g1.restartlives();
		System.out.println();
		g1.substractLife();
		System.out.println();
		g1.substractLife2();
		System.out.println();
		g1.substractLife2();
		System.out.println();
		g1.substractLife2();
		g1.updateRecord();
		System.out.println();
		g1.Record();

		g1.restartlives();
		System.out.println();
		g1.substractLife();
		g1.updateRecord();
		System.out.println();
		g1.Record();

	}

}
