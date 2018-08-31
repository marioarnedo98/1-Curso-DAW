package ed;
import static org.junit.Assert.*;

import org.junit.Test;

public class ComplejoTest {


@Test
public void complejo() {
Complejo a1 = new Complejo(2.0,4.0);
Complejo b1=new Complejo(Complejo.conjugado(a1).real,Complejo.conjugado(a1).imag);

Complejo a2=new Complejo(2.0,-4.0);
Complejo b2=new Complejo(Complejo.conjugado(a2).real,Complejo.conjugado(a2).imag);

Complejo a3=new Complejo(2.0,0);
Complejo b3=new Complejo(Complejo.conjugado(a3).real,Complejo.conjugado(a3).imag);

assertEquals(b1,Complejo.conjugado(a1),0);
assertEquals(b2,Complejo.conjugado(a2),0);
assertEquals(b3,Complejo.conjugado(a3),0);


}

private void assertEquals(Complejo b1, Complejo conjugado, int i) {
// TODO Auto-generated method stub

}



}