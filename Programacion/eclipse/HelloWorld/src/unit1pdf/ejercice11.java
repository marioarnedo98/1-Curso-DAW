package unit1pdf;

public class ejercice11 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		char letra;
		//boolean es_vocal; 

		int resultado=(int)('a' + Math.random()*('z'-'a' + 1)); 
		letra = (char)resultado;
		System.out.print("Your letter is... "+letra+ " So it's ");

		if (letra == 'a')
			System.out.print("vowel");
		else 
			if (letra == 'e')
				System.out.print("vowel");
			else 
				if (letra == 'i')
					System.out.print("vowel");
				else 
					if (letra == 'o')
						System.out.print("vowel");
					else
						if (letra == 'u')
							System.out.print("vowel");
						else 
							System.out.print("consonant");
					
		
		}
	}

