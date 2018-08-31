package ed;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class SumaTest {

	@Test
	public void sumaPositivios() {
		funcionsuma s = new funcionsuma(2,3);
		assertEquals(5, s.sumar(),1);
	}

	@Test
	public void sumaNegativos() {

	}

	@Test
	public void sumaPositivioNegativo() {

	}
}
