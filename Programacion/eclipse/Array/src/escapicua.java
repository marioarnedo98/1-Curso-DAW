
public class escapicua {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String dato = "345";
		String hello="";
		//String string= Integer(dato).toString();
		String[] sueltos = dato.split("");
		for (int i =dato.length()-1;i>=0 ;i--) {
			System.out.println(sueltos[i]);
			hello+=sueltos[i];
		}
	if(dato.equals(hello)) {
		System.out.println("Esta bien");
		
	}
	else {
		System.out.println("Esta mal");
	}
	}
}