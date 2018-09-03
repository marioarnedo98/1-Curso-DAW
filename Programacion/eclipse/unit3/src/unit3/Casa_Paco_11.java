package unit3;

public class Casa_Paco_11 {
	static double potatoes;
	static double sausages;
	double NumberOfMeals;

	public Casa_Paco_11() {
		this.potatoes = 50;
		this.sausages = 40;
	}

	public void getNumberOfMeals() {
		this.NumberOfMeals = (potatoes * 0.3) + (sausages * 0.5);
		
	}
	public void addPotatoes (double potatoes) {
	this.potatoes = potatoes;
	}
	public void addSausages (double sausages) {
		this.sausages = sausages;
	}
	public void showPotatoes() {
		System.out.println("You have "+potatoes+" potatoes");
	}
	public void showSausages() {
		System.out.println("You have "+sausages+" potatoes");
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("You have "+sausages+" potatoes");
		System.out.println("You have "+potatoes+" potatoes");
	}

}
