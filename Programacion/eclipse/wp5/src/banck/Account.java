package bank;

public abstract class Account {
	private  String name;
	private double number;
	private double balance;
	private double interest;
	
	public Account() {
		
	}
	
	public Account(String name,double number,double balance, double interest) {
		this.name=name;
		this.number=number;
		this.balance=balance;
		this.interest=interest;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getNumber() {
		return number;
	}
	public void setNumber(double number) {
		this.number = number;
	}
	
	public double getBalance() {
		return balance;
	}

	public void setBalance(double balance) {
		this.balance = balance;
	}
	
	public double getInterest() {
		return interest;
	}
	public void setInterest(double interest) {
		this.interest = interest;
	}
	
	public abstract double calculateInterests() ;
	
	public abstract double getFinalBalance() ;

	
	
	
}
