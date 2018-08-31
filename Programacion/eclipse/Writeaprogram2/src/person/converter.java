package person;

public class converter {
	private int miles =23600;
	private int kms = 2000;
	private int kmsResult;
	private int milesResult;

	public void millesToKms() {
		kmsResult = (int) (kms / 0.621371);
	}

	public void kmstoMiles() {
		kmsResult = (int) (miles / 1.60934);

	}
}
