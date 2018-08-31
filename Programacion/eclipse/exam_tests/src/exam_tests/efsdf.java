package exam_tests;
import java.*;
import java.util.HashMap;
public class efsdf {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		HashMap<String, String> stringString = new HashMap<String, String>();
		stringString.put("Javier", "Va al gimnasio 8 dias a la semana");
		stringString.put("Alejandro", "Va al gimnasio 2 dias a la semana");
		stringString.put("Maria", "Va al gimnasio 1 dias a la semana");
		stringString.put("Pedro", "Va al gimnasio 3 dias a la semana");
		for(String a : stringString.keySet()) {
			String valor2 = stringString.get(a);
			System.out.println(a + " -> " + valor2);
		}
	}

}
