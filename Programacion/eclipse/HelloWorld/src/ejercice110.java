
public class ejercice110 {

	public static void main(String[] args) {
		// Dice 1
		double a= Math.floor((Math.random() * 6) + 1);
		System.out.println("Your first dice is: "+ a);
		
		
		//Dice 2
		double b= Math.floor((Math.random() * 6) + 1);
		System.out.println("Your first dice is: "+ b);
		
		//This is 4 total score
		double c= a+b;
		System.out.println("Your total score is "+c);
	}

}
