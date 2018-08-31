use Jardineria;
SELECT Clientes.NombreCliente, Empleados.Nombre, Empleados.Apellido1 
FROM Clientes INNER JOIN Empleados
ON Clientes.CodigoEmpleadoRepVentas=Empleados.CodigoEmpleado;

--Ejercicio 2
SELECT Clientes.NombreCliente, Empleados.Nombre
FROM Clientes INNER JOIN Empleados 
ON Clientes.CodigoEmpleadoRepVentas=Empleados.CodigoEmpleado
WHERE CodigoCliente NOT IN (SELECT CodigoCliente FROM Pagos);

--Ejercicio 3
SELECT NOMBRE, SUM(DETALLEPEDIDOS.Cantidad), SUM(CANTIDAD*PRECIOUNIDAD) AS TOTAL, SUM((Cantidad*PrecioUnidad)*1.18) AS IVA 
FROM DetallePedidos INNER JOIN Productos
ON DetallePedidos.CodigoProducto=Productos.CodigoProducto
GROUP BY PRODUCTOS.NOMBRE
HAVING SUM(CANTIDAD*PRECIOUNIDAD) >3000;

--Ejercicio 4
SELECT Clientes.NombreCliente, CLIENTES.Ciudad,Oficinas.CodigoOficina, OFICINAS.Ciudad, Oficinas.LineaDireccion1 
FROM Oficinas INNER JOIN Clientes INNER JOIN Empleados
ON Clientes.CodigoEmpleadoRepVentas=Empleados.CodigoEmpleado
ON Empleados.CodigoOficina=OFICINAS.CodigoOficina
WHERE Clientes.Ciudad LIKE 'Fuenlabrada' ;