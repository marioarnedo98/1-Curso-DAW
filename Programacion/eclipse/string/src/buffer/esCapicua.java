package buffer;

public class esCapicua {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int dato = 242;
		String number = String.valueOf(dato);
		String reverse = new StringBuffer(number).reverse().toString();
		System.out.println(reverse);
		if (number.equals(reverse)) {
			System.out.println("Es capicua");
		} else {
			System.out.println("No es capicua");
		}-
	}
}