package ed;

/**
 * 
 * Esta clase los alumnos que hemos creado, con sus getters and setters, y
 * respectivamente renombrados
 * 
 * @author: Mario
 * 
 * @version: 27/02/2018/A
 * 
 * @see <a href = "http://www.moodle.org" /> Para ir al moodle</a>
 * 
 */
public class Alumno implements aqui {

	// Attributos
	private static String nombre;
	private String apellidos;
	private static int edad;

	// Constructores
	public Alumno() {
		nombre= "Pepe";
		apellidos= "Garcia";
		edad=12;
	}
/*Metodo que crea los Alumnos */
	public Alumno(String nombre, String apellidos, int edad) {
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.edad = edad;
	}
	public static void main(String[] args) {
		System.out.println(nombre+" "+edad);
	}
}
