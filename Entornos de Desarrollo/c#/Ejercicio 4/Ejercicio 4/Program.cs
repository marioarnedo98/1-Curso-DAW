using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication2
{
    class Program
    {
        static void Main(string[] args)
        {
            {
                int nivel = 5;
                {

                    int a=1;
                    int espacios;
                    for (int i = 1; i <= nivel; i++)
                    {
                        StringBuilder final = new StringBuilder();

                        espacios = nivel - i;
                        a = i + (i - 1);
                        for (int i1 = 0; i1 < espacios; i1++)
                            final.Append(" ");

                        for (int i2 = 0; i2 < a; i2++)
                            final.Append("*");

                        Console.WriteLine(final.ToString());

                    }
                }

            }
            Console.WriteLine("   ***");
            Console.WriteLine("   ***");
            Console.WriteLine(" " + "\n" + "Aprieta Intro para salir");
            Console.ReadLine();
        }
    }
}