package bank;

public class SavingAccount extends Account{
	private double maintananceFee;
	
	public SavingAccount() {
		super();
	}
	
	public double getMaintananceFee() {
		return maintananceFee;
	}

	public void setMaintananceFee(double maintananceFee) {
		this.maintananceFee = maintananceFee;
	};
	
	
	public double calculateInterests() {
		return super.getBalance()*super.getInterest();
	}

	
	public double getFinalBalance() {
		return super.getBalance()+super.getInterest()-maintananceFee;
		
	}

	
	
	
}
