using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ejercicio_2
{
    class Program
    {
        static void Main(string[] args)
        {
            int numero = 20;

            if ((numero % 2) == 0)
                Console.WriteLine(numero+" Es Par");
            else
                Console.WriteLine(numero+" Es Impar");
            Console.ReadLine();
        }
    }
}
