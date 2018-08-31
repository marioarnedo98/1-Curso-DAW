package Unit5;

public class SavingAccount extends Account {
	private double maintananceFee;
	
	public SavingAccount() {
		super();
	}
	
	public double getMaintamanceFee() {
		return maintananceFee;
	}
	
	public void setMainintananceFee(double maintemanceFee) {
		this.maintananceFee =maintemanceFee;
	}
	
	@Override
	public double calculateInterests() {
		return super.getSaldo()*super.getInteres();
	}

	@Override
	public double getFinalBalance() {
		return super.getSaldo()+super.getInteres()-maintananceFee;
	}

	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

	
}
