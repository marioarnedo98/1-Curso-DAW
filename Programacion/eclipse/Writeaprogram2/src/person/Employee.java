package person;

public class Employee {
	private String name;
	private double salary;

	public Employee() {
		name = "Mario";
		salary = 1000;
	}

	public String EmployeData() {
		return ("Your name " + name + " And your salary " + salary);
	}

	public void bigger() {
		if (salary > 3000);
		System.out.println("U have to pay extra taxes");
	}
}
