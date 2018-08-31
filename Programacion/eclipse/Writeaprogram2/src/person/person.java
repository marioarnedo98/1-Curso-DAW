package person;


public class person {
	private int age;
	private String name;
	private String DNI;
	private char gender;
	// Weight in Kilogrames;
	private double weight;
	// height centrimetres;
	private double height;
	private double IMC;

	public person() {
		age = 18;
		name = "Mario";
		DNI = "16644528S";
		gender = 'm';
		weight = 3;
		height = 168;

	}

	public person(int age, String name, char gender) {
		this.name = name;
		this.age = age;
		this.gender = gender;
		// This are going to default like in the up public person
		DNI = "16644528S";
		weight = 3;
		height = 168;
	}

	public person(int age, String name, String DNI, char gender, double weight, double height) {
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.DNI = DNI;
		this.weight = weight;
		this.height = height;
	}

	public void isAdult() {
		if (age >= 18)
			System.out.println(name + " Is an adult");
		else 
			System.out.println("You aren't have 18 years old");
	}

	public void idealWeigth() {
		IMC = weight / height;
		System.out.println("Your IMC is " + IMC);
	}
	public void idealWeithIf() {
		if (IMC <=25)
			System.out.println("U have a optimal IMC");
		else 
			System.out.println("U don't have a optimal IMC");
	}
	
	public void hasIdealWeight() {
		String optt;
		if(IMC<=25)
			optt="U have a optimal IMC";
		else
			optt="U don't have a optimal IMC";
		
		
		String opt = (IMC<=25)?"U have a optimal IMC":"U don't have a optimal IMC";
		System.out.println(opt);
	}

	public String toString() {
		return ("Your name is " + name + " And u have " + age + " years" + " Your DNI is " + DNI
				+ " And ur weight and height is " + weight + " Kg and " + height + " Cm");

	}
}

