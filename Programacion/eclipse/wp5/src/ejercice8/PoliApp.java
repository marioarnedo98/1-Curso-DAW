package ejercice8;

public class PoliApp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Gato g = new Gato();
		hazleHablar(g);
		Cucu c = new Cucu();
		hazleHablar(c);
	}

	static void hazleHablar(Parlachin sujeto) {
		sujeto.habla();
	}
}
