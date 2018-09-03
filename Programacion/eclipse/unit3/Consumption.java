package unit3;

public class Consumption {
	double kms;
	double liters;
	double vm;
	double pgas;
	double time;
	double averageC;
	double averageP;

	public Consumption(double time) {
		this.time = time;
	}

	// I put manually this valors:
	public Consumption() {
		// I pick gasoleo A like gasoline type
		pgas = 1.146;
		kms = 100;
	}

	public void averageConsumption() {
		// I saw in google that it was like this:
		averageC = (liters * 100) / kms;
	}

	public void averagePrice() {
		// You have to put manually the price of the gasoline. (Look up)
		averageP = pgas * kms;
	}
	public static void main(String[] args) {
		new.Consumption=c1;
		system.out.println("Your Average Consumption"+ is c1.averageConsumption )
	}
}
