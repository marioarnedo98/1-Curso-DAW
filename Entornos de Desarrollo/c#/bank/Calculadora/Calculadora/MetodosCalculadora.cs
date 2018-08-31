using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Calculadora
{
    public class MetodosCalculadora
    {

        double numero1;

        double numero2;

        double resultado;

        public MetodosCalculadora(double n1, double n2)
        {
            this.numero1 = n1;
            this.numero2 = n2;
            this.resultado = 0;
        }

        public double getResultado()
        {
            return this.resultado;
        }

        public double getSuma()
        {
            this.resultado = (this.numero1 + this.numero2);
            return this.resultado;
        }

        public double getResta()
        {
            this.resultado = (this.numero1 - this.numero2);
            return this.resultado;
        }

        public double getMultiplicacion()
        {
            this.resultado = (this.numero1 * this.numero2);
            return this.resultado;
        }

        public double getDivision()
        {
            this.resultado = (this.numero1 / this.numero2);
            return this.resultado;
        }
    }
}
