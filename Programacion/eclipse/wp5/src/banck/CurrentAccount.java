package bank;

public class CurrentAccount extends Account {
	private double numberTrans;
	private double amount;
	
	public double getNumberTrans() {
		return numberTrans;
	}
	public void setNumberTrans(double numberTrans) {
		this.numberTrans = numberTrans;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	
	public double transactionsReceipt() {
		return amount*numberTrans;
	}
	
	public double calculateInterests() {
		// TODO Auto-generated method stub
		return 0;
	}
	
	public double getFinalBalance() {
		// TODO Auto-generated method stub
		return 0;
	}
}
