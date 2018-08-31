import java.util.Scanner; 
public class odd_or_even_manually {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner a = new Scanner ( System.in );
		System.out.print("Enter one number: ");
		 int Number = a.nextInt();
		 if ( Number % 2 == 0 )
		        System.out.print(Number+ " This number is a even number");
		     else
		        System.out.print(Number+ " This number is a odd number");
	}

}
