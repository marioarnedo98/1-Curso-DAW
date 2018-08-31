 package ed;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class FactorialTest {

	@Test
	void test() {
		// fail("Not yet implemented");
		assertEquals(1, Factorial.factorial(0));
		assertTrue(1 == Factorial.factorial(1));
		assertEquals(24, Factorial.factorial(4));
		assertEquals(720, Factorial.factorial(6));

		boolean excepcionLanzada = false;
		try {
			Factorial.factorial(-1);
		} catch (IllegalArgumentException e) {
			excepcionLanzada = true;
		}
		assertTrue(excepcionLanzada);
	}

}