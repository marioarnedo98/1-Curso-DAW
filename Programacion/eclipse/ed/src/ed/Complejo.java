package ed;

public class Complejo{
     double real;
     double imag;

  public Complejo() {
     real=0.0;
     imag=0.0;
  }
  public Complejo(double real, double imag){
     this.real=real;
     this.imag=imag;
  }
  public static Complejo conjugado(Complejo c){
     return new Complejo(c.real, -c.imag);
  }
  public static Complejo opuesto(Complejo c){
     return new Complejo(-c.real, -c.imag);
  }
  public double modulo(){
     return Math.sqrt(real*real+imag*imag);
  }

  public static Complejo suma(Complejo c1, Complejo c2){
     double x=c1.real+c2.real;
     double y=c1.imag+c2.imag;
     return new Complejo(x, y);
  }
public static Complejo producto(Complejo c1, Complejo c2){
     double x=c1.real*c2.real-c1.imag*c2.imag;
     double y=c1.real*c2.imag+c1.imag*c2.real;
     return new Complejo(x, y);
  }
}

