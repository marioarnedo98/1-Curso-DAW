package person;

public class Casa_Paco_11 {
	double potatoes;
	double sausages;
	double NumberOfMeals;

	public Casa_Paco_11() {
		this.potatoes = 50;
		this.sausages = 40;
	}

	public void getNumberOfMeals() {
		this.NumberOfMeals = (potatoes * 0.3) + (sausages * 0.5);

	}

	public void addPotatoes(double potatoes) {
		this.potatoes = potatoes;
	}

	public void addSausages(double sausages) {
		this.sausages = sausages;
	}

	public void showPotatoes() {
		System.out.println("You have " + potatoes + " potatoes");
	}

	public void showSausages() {
		System.out.println("You have " + sausages + " potatoes");
	}

	public static void main(String[] args) {
		Casa_Paco_11 c1 = new Casa_Paco_11();
		c1.showPotatoes();
		System.out.println();
		c1.showSausages();
		System.out.println();
	}
}
