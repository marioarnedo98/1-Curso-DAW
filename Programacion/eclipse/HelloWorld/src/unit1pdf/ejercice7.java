package unit1pdf;

public class ejercice7 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int eggs=113;
		System.out.println("U have "+ eggs + " Eggs");
		int dozen = eggs/12;
		System.out.println("U have "+ dozen+" Dozen Eggs");
		int lose = eggs%12;
		System.out.println("U lose "+ lose + " Eggs");
		int left = eggs - (dozen+ lose);
		System.out.println("U have "+ left + " Left Eggs");
	}

}
