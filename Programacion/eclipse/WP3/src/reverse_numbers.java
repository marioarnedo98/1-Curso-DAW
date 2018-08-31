
public class reverse_numbers {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int a = 215;
		/*
		 * int resa; int resb; int resc; int restfinal; resa=(a%10)*10; int b= a/10;
		 * resb= b%10; restfinal=(resa*10)+(resb*10); int c = b/10; int p = c%10; int
		 * omirp=restfinal+p; System.out.println(omirp);
		 */
		int reverse=0;
		int unit;
		while (a > 0) {
			unit = a % 10;
			reverse = reverse*10+unit;
			a = a/10;
		
		}
		System.out.println(reverse);
	}

}
