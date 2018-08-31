package ed;

public class Trabajador {

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int getEdad() {
		return edad;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}

	public int getCategoria() {
		return categoria;
	}

	public void setCategoria(int categoria) {
		this.categoria = categoria;
	}

	public int getAntiguedad() {
		return antiguedad;
	}

	public void setAntiguedad(int antiguedad) {
		this.antiguedad = antiguedad;
	}

	public double getSueldo() {
		return sueldo;
	}

	public void setSueldo(double sueldo) {
		this.sueldo = sueldo;
	}

	public String nombre;// nombre
	public int edad;// edad
	public int categoria;// categoria
	public int antiguedad;// antiguedad
	public double sueldo;// sueldo

	Trabajador() {
		nombre = "Ines";
		edad = 31;
		categoria = 0;
		antiguedad = 0;
	}

	Trabajador(String a, int b, int c, int d, int s) {
		nombre = a;
		edad = b;
		categoria = c;
		antiguedad = d;
		sueldo = s;
	}

	public String toString() {
		return "Nombre: " + nombre + "\nEdad: " + edad + "\nCategoria: " + categoria + "\nAntigüedad: " + antiguedad + "\nSueldo: " + sueldo;
	}

	public static void main(String[] args) {

		Trabajador t1 = new Trabajador("Pepe",29,1,2,830);
		System.out.println("El sueldo del trabajador es: " +t1.getSueldo());

		// Calculo del sueldo del trabajador
		calculaSueldo(t1);

	}

	private static void calculaSueldo(Trabajador t1) {
		if (t1.categoria == 0 && t1.antiguedad == 0) {
			t1.sueldo = t1.sueldo + t1.sueldo * 0.15 + 150;
		} else if (t1.categoria == 0 && t1.antiguedad == 1) {
			t1.sueldo = t1.sueldo + t1.sueldo * 0.15 + 300;
		} else if (t1.categoria == 0 && t1.antiguedad == 2) {
			t1.sueldo = t1.sueldo + t1.sueldo * 0.15 + 600;
		} else if (t1.categoria == 1 && t1.antiguedad == 0) {
			t1.sueldo = t1.sueldo + t1.sueldo * 0.35 + 150;
		} else if (t1.categoria == 1 && t1.antiguedad == 1) {
			t1.sueldo = t1.sueldo + t1.sueldo * 0.35 + 300;
		} else if (t1.categoria == 1 && t1.antiguedad == 2) {
			t1.sueldo = t1.sueldo + t1.sueldo * 0.35 + 600;
		} else if (t1.categoria == 2 && t1.antiguedad == 0) {
			t1.sueldo = t1.sueldo + t1.sueldo * 0.6 + 150;
		} else if (t1.categoria == 2 && t1.antiguedad == 1) {
			t1.sueldo = t1.sueldo + t1.sueldo * 0.6 + 300;
		} else {
			t1.sueldo = t1.sueldo + t1.sueldo * 0.6 + 600;
		}
	}
}
