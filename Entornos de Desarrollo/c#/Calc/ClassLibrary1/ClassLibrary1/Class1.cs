using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibrary1
{
    public class Complejo
    {

        private double real;

        private double imag;

        public Complejo()
        {
            this.real = 0;
            this.imag = 0;
        }

        public Complejo(double real, double imag)
        {
            this.real = this.real;
            this.imag = this.imag;
        }

        public static Complejo conjugado(Complejo c)
        {
            return new Complejo(c.real, (c.imag * -1));
        }

        public static Complejo opuesto(Complejo c)
        {
            return new Complejo((c.real * -1), (c.imag * -1));
        }

        public double modulo()
        {
            return Math.Sqrt(((this.real * this.real)
                            + (this.imag * this.imag)));
        }

        public static Complejo suma(Complejo c1, Complejo c2)
        {
            double x = (c1.real + c2.real);
            double y = (c1.imag + c2.imag);
            return new Complejo(x, y);
        }

        public static Complejo producto(Complejo c1, Complejo c2)
        {
            double x = ((c1.real * c2.real)
                        - (c1.imag * c2.imag));
            double y = ((c1.real * c2.imag)
                        + (c1.imag * c2.real));
            return new Complejo(x, y);
        }
    }
}
