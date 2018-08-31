package Unit5;

public class CurrentAccount {
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
		return amount * numberTrans;
	}

	public double calculateInterests() {
		// TODO Auto-generated method stub
		return 0;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
