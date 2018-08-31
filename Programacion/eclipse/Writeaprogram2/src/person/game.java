package person;

public class game {
	public int livesLeft = '5';

	public game() {
		this.livesLeft = livesLeft;
	}

	public void printLives() {
		System.out.println("U have " + livesLeft + " lifes");
	}
	public void uDie() {
		System.out.println(livesLeft-1);
	}
}
