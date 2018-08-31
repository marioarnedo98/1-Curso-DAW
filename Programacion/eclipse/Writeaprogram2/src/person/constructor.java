package person;

public class constructor {
	public String name;
	public int age;
	public String code;
	public int credits;

	public constructor(String myName, int myAge) {
		name = myName;
		age = myAge;
	}

	public String getName() {
		return name;
	}

	public void setAge(int age) {
		this.age=age;
	}

	public void printDetails() {
		System.out.println(name);
		System.out.println(age);
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		constructor p1=new constructor("Mario", 34);
		p1.printDetails();
		
	}

}
