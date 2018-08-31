package unit1pdf;

public class ejercice6 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int hours = 12*3600;
		int minutes = 36 *60;
		int seg = 45;
		int t = hours + minutes + seg;
		System.out.println(t+ " Seconds");
		
		
	 int h = t/3600;
	 int rest = t- (h*3600);
	 int m = rest/60;
	 int s = rest-(m*60);
	 System.out.println(h + " hours "+ m +" Minutes "+ s +" seconds");
	}

}
