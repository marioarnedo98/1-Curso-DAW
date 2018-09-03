USE Jardineria;
--EJERCICIO 1
SELECT Ciudad, Telefono
FROM Oficinas 
WHERE Pais LIKE 'EEUU';

--EJERCICIO 2
SELECT Nombre, Puesto, CONCAT(Apellido1,' ', Apellido2) AS APELLIDOS, Email, CodigoJefe
FROM Empleados 
WHERE CodigoJefe=(SELECT CodigoEmpleado FROM Empleados WHERE Nombre='Alberto' and Apellido1 = 'Soria');

--EJERCICIO 3
SELECT PUESTO, Nombre, CONCAT (Apellido1,' ',Apellido2) AS Apellidos, Email 
FROM Empleados
WHERE CodigoJefe IS NULL;

--Ejercicio 4
SELECT NOMBRE, Puesto, CONCAT(APELLIDO1, ' ', Apellido2) AS APELLIDOS 
FROM Empleados
WHERE PUESTO NOT LIKE 'Representante Ventas';

--EJERCICIO 5
SELECT COUNT(NombreCliente)
FROM Clientes;

--EJERCICIO 6 
SELECT NombreCliente
FROM Clientes
WHERE PAIS LIKE 'SPAIN'

--EJERCICIO 7
SELECT Clientes.Pais, COUNT(Clientes.NombreCliente) AS CONTADOR_POR_PAISES
FROM Clientes
GROUP BY Clientes.Pais;

--EJERCICIO 8
SELECT Ciudad, COUNT(NombreCliente)
FROM Clientes
WHERE Clientes.Ciudad LIKE 'Madrid'
GROUP BY Ciudad;

--EJERCICIO 9
SELECT CIUDAD, COUNT (NombreCliente)
FROM Clientes
WHERE Ciudad LIKE 'M%'
GROUP BY Ciudad;

--EJERCICIO 10
SELECT Empleados.CodigoEmpleado, Empleados.Nombre ,COUNT(CLIENTES.NombreCliente)
FROM Empleados INNER JOIN Clientes
ON Empleados.CodigoEmpleado=Clientes.CodigoEmpleadoRepVentas
GROUP BY Empleados.CodigoEmpleado, Empleados.Nombre;

--EJERCICIO 11
SELECT COUNT (NOMBRECLIENTE)
FROM Clientes INNER JOIN Empleados
ON Empleados.CodigoEmpleado =  Clientes.CodigoEmpleadoRepVentas
WHERE Puesto NOT LIKE 'Representante Ventas';

--EJERCICIO 12 
SELECT Clientes.NombreCliente, MAX(Pagos.FechaPago) AS RECIENTE, MIN(PAGOS.FechaPago) AS MAS_VIEJA
FROM Pagos INNER JOIN Clientes
ON Clientes.CodigoCliente=pagos.CodigoCliente
GROUP BY Clientes.NombreCliente;

--EJERCICIO 13
SELECT CodigoCliente, FechaPago
FROM Pagos
WHERE FechaPago LIKE '2008%';

--EJERCICIO 14
SELECT DISTINCT ESTADO
FROM Pedidos;

--EJERCICIO 15
SELECT Pedidos.CodigoPedido, Clientes.CodigoCliente, Pedidos.FechaEsperada, Pedidos.FechaEntrega
FROM Pedidos INNER JOIN Clientes
ON Pedidos.CodigoCliente=Clientes.CodigoCliente
WHERE FechaEsperada<FechaEntrega;

--EJERCICIO 16
SELECT CodigoPedido, COUNT(CANTIDAD)
FROM DetallePedidos
GROUP BY CodigoPedido;

--EJERCICIO 17
SELECT DISTINCT TOP 20 CodigoProducto, Cantidad
FROM DetallePedidos
ORDER BY Cantidad DESC;

--EJERCICIO 18
SELECT CodigoPedido, CodigoCliente, FechaEsperada, FechaEntrega
FROM Pedidos
WHERE DATEADD(DAY,2,FechaEntrega)<=FechaEsperada;

--EJERCICIO 19
SELECT (Cantidad*PrecioUnidad) AS BASE_IMPONIBLE,  (Cantidad*PrecioUnidad)*0.18 AS IVA, ((Cantidad*PrecioUnidad)+((Cantidad*PrecioUnidad)*0.18)) AS TOTAL
FROM DetallePedidos;

--EJERCICIO 20
SELECT  (Cantidad*PrecioUnidad) AS BASE_IMPONIBLE,  (Cantidad*PrecioUnidad)*0.18 AS IVA, ((Cantidad*PrecioUnidad)+((Cantidad*PrecioUnidad)*0.18)) AS TOTAL
FROM DetallePedidos
WHERE CodigoProducto LIKE 'FR%'
GROUP BY CodigoProducto, Cantidad, PrecioUnidad;