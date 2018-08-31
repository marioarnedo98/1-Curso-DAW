using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Calculadora.Test
{
    [TestClass]
    public class CalculadoraTest
    {
        [TestMethod]
        public void SumarDosNumerosPositivos()
        {
            Operacion operacion = new Operacion();
            int resultado = operacion.Sumar(2, 5);
            Assert.AreEqual(7, resultado);
        }
        [TestMethod]
        public void SumarDosNumerosNegativos()
        {
            Operacion operacion = new Operacion();
            int resultado = operacion.Sumar(-2, -5);
            Assert.AreEqual(-7, resultado);
        }
        [TestMethod]
        public void SumarDosNumerosNegativosYPostivos()
        {
            Operacion operacion = new Operacion();
            int resultado = operacion.Sumar(-2, 5);
            Assert.AreEqual(3, resultado);
        }

        [TestMethod]
        public void RestarDosNumerosPositivos()
        {
            Operacion operacion = new Operacion();
            int resultado = operacion.Restar(8, 5);
            Assert.AreEqual(3, resultado);
        }
        [TestMethod]
        public void RestarDosNumerosNegativos()
        {
            Operacion operacion = new Operacion();
            int resultado = operacion.Restar(-8, -5);
            Assert.AreEqual(-3, resultado);
        }
        [TestMethod]
        public void RestarDosNumerosNegativosYPositivos()
        {
            Operacion operacion = new Operacion();
            int resultado = operacion.Restar(8, -5);
            Assert.AreEqual(13, resultado);
        }
        [TestMethod]
        public void MultiplicarDosNumerosPositivos()
        {
            Operacion operacion = new Operacion();
            int resultado = operacion.Multiplicar(8, 5);
            Assert.AreEqual(40, resultado);
        }
        [TestMethod]
        public void MultiplicarDosNumerosNegativos()
        {
            Operacion operacion = new Operacion();
            int resultado = operacion.Multiplicar(-8, -5);
            Assert.AreEqual(40, resultado);
        }
        [TestMethod]
        public void MultiplicarDosNumerosNegativosYPositivos()
        {
            Operacion operacion = new Operacion();
            int resultado = operacion.Multiplicar(-8, 5);
            Assert.AreEqual(-40, resultado);
        }
        [TestMethod]
        public void DividirDosNumerosPositivos()
        {
            Operacion operacion = new Operacion();
            float resultado = operacion.Dividir(24, 8);
            Assert.AreEqual(3, resultado);
        }
        [TestMethod]
        public void DividirDosNumerosNegativos()
        {
            Operacion operacion = new Operacion();
            float resultado = operacion.Dividir(-24, -8);
            Assert.AreEqual(3, resultado);
        }
        [TestMethod]
        public void DividirDosNumerosPositivosYNegativos()
        {
            Operacion operacion = new Operacion();
            float resultado = operacion.Dividir(24, -8);
            Assert.AreEqual(-3, resultado);
        }

    }
}