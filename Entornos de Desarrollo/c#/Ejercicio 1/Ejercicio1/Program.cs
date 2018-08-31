using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ejercicio1
{
    class Program
    {
        static void Main(string[] args)
        {
            double a = 23;
            double b = 27;
            double c;
            c = Math.Sqrt((a * a + b * b));
            Console.WriteLine("La hipotenusa es ");
            Console.WriteLine(c);
            Console.ReadLine();
        }
    }
}
