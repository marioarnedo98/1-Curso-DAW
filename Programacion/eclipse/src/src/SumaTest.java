
import static org.junit.Assert.*;

import org.junit.Test;


public class SumaTest {

	@Test
	public void sumaPositivios() {
		System.out.println("Suma de enteros ...");
		Suma s = new Suma (2,3);
		assertTrue(s.sumar()==5);
	}

	@Test
	public void sumaNegativos() {
		Suma s= new Suma(-3,-3);
		assertFalse("El numoero es falso", s.sumar()==0);
	}
	
	@Test
	public void sumaPositivioNegativo() {
		
	}
}
