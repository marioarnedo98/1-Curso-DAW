use Jardineria;
--Ejercicio 1
SELECT Clientes.NombreCliente, COUNT(Pedidos.CodigoPedido)
FROM Pedidos INNER JOIN Clientes
ON Clientes.CodigoCliente=Pedidos.CodigoCliente
GROUP BY Clientes.NombreCliente;

--EJERCICIO 2
SELECT DISTINCT Clientes.NombreCliente, SUM (Pagos.Cantidad)
FROM Pagos INNER JOIN Clientes
ON Clientes.CodigoCliente=Pagos.CodigoCliente
GROUP BY Clientes.NombreCliente;

--EJERCICO 3
SELECT Clientes.NombreCliente,Pedidos.FechaPedido
FROM Clientes INNER JOIN Pedidos
ON Clientes.CodigoCliente=Pedidos.CodigoCliente
WHERE FechaPedido LIKE '2008%';

--EJERCICIO 4
SELECT nombrecliente, concat(nombre,' ',apellido1,' ',apellido2) as empleado 
FROM Clientes inner join Empleados 
ON codigoempleado=codigoempleadorepventas and codigocliente not in 
(SELECT codigocliente FROM Pagos) 
GROUP BY nombrecliente, Nombre,Apellido1,Apellido2;

--EJERCICIO 5
SELECT Clientes.NombreCliente, Empleados.Nombre, Oficinas.Ciudad
FROM Clientes INNER JOIN Empleados
ON Empleados.CodigoEmpleado=Clientes.CodigoEmpleadoRepVentas
INNER JOIN Oficinas
ON Oficinas.CodigoOficina=Empleados.CodigoOficina;

--EJERCICIO 6
SELECT Nombre, CONCAT(Apellido1,Apellido2) AS APELLIDOOS,CodigoOficina,Puesto
FROM Empleados 
WHERE Puesto<>'Representante Ventas';

--EJERCICIO 7
SELECT Oficinas.Ciudad, COUNT(EMPLEADOS.CodigoOficina)
FROM Oficinas INNER JOIN Empleados
ON Oficinas.CodigoOficina=Empleados.CodigoOficina
GROUP BY Oficinas.Ciudad;

--EJERCICIO 8
SELECT e.Nombre, j.Nombre
FROM Empleados e join Empleados j
ON e.CodigoJefe=j.CodigoEmpleado;

--EJERCICIO 9
SELECT Empleados.Nombre, Empleados.Apellido1, Oficinas.Ciudad, Empleados.Puesto
FROM Empleados INNER JOIN Oficinas
ON Oficinas.CodigoOficina=Empleados.CodigoOficina
WHERE Empleados.CodigoEmpleado NOT IN (SELECT Clientes.CodigoEmpleadoRepVentas FROM Clientes);

--EJERCICIO 10
SELECT Gama, AVG(CantidadEnStock)
FROM Productos
GROUP BY Gama;

--EJERCICIO 11
SELECT COUNT (NombreCliente), CLIENTES.Ciudad
FROM Clientes
WHERE CIUDAD IN (SELECT Ciudad FROM Oficinas)
GROUP BY Clientes.Ciudad;

--EJERCICIO 12
SELECT COUNT (NombreCliente), CLIENTES.Ciudad
FROM Clientes
WHERE CIUDAD NOT IN (SELECT Ciudad FROM Oficinas)
GROUP BY Clientes.Ciudad;

--EJERCICIO 13
SELECT NOMBRE, COUNT(Clientes.CodigoEmpleadoRepVentas) AS Dependen
FROM EMPLEADOS INNER JOIN Clientes
ON Empleados.CodigoEmpleado=Clientes.CodigoEmpleadoRepVentas
GROUP BY Nombre;

--EJERCICIO 14
SELECT Clientes.NombreCliente, MAX (DetallePedidos.Cantidad) AS MAXIMO,MIN(DETALLEPEDIDOS.CANTIDAD) AS MINIMO
FROM Clientes INNER JOIN Pedidos
ON Clientes.CodigoCliente=Pedidos.CodigoCliente 
INNER JOIN DetallePedidos
ON Pedidos.CodigoPedido=DetallePedidos.CodigoPedido
GROUP BY Clientes.NombreCliente;