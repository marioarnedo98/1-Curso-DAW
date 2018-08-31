USE JARDINERIA;
--Ejercicio 1
SELECT Clientes.NombreCliente, Empleados.Nombre, Oficinas.Ciudad
FROM Clientes INNER JOIN Empleados
ON Empleados.CodigoEmpleado= Clientes.CodigoEmpleadoRepVentas
INNER JOIN Oficinas
ON Oficinas.CodigoOficina=Empleados.CodigoOficina;

--Ejercicio 2
SELECT Clientes.NombreCliente, Empleados.Nombre, Oficinas.Ciudad
FROM Clientes INNER JOIN Empleados
ON Empleados.CodigoEmpleado= Clientes.CodigoEmpleadoRepVentas
INNER JOIN Oficinas
ON Oficinas.CodigoOficina=Empleados.CodigoOficina
INNER JOIN Pagos
ON Clientes.CodigoCliente=Pagos.CodigoCliente
WHERE Clientes.CodigoCliente NOT IN (SELECT Clientes.CodigoCliente  FROM Pagos)

--Ejercico 3
SELECT a.Nombre, b.Nombre
FROM Empleados a INNER JOIN Empleados b
ON a.CodigoJefe = b.codigoEmpleado;

--EJERCIO 4
SELECT DISTINCT Clientes.NombreCliente 
FROM Clientes INNER JOIN Pedidos
ON Clientes.CodigoCliente = Pedidos.CodigoCliente
WHERE Pedidos.FechaEntrega>Pedidos.FechaEsperada;