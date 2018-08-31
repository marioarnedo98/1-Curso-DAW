package Unit5;

public abstract class Account {
	private static String name;
	private static int num;
	private static double saldo;
	private static double interes;
	
	public Account() {
		
	}
	
	public Account(String name ,int num,int saldo,int interes) {
	this.name=name;
	this.num=num;
	this.saldo=saldo;
	this.interes=interes;
	}
	
	public static String getName() {
		return name;
	}

	public static void setName(String name) {
		Account.name = name;
	}

	public static int getNum() {
		return num;
	}

	public static void setNum(int num) {
		Account.num = num;
	}

	public static double getSaldo() {
		return saldo;
	}

	public static void setSaldo(int saldo) {
		Account.saldo = saldo;
	}

	public static double getInteres() {
		return interes;
	}

	public static void setInteres(int interes) {
		Account.interes = interes;
	}

	public abstract double calculateInterests();
	
	public abstract double getFinalBalance();
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}
}
