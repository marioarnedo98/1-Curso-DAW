USE Jardineria
--Ejercicio 1
SELECT Nombre
FROM Productos
WHERE PrecioVenta = 
(SELECT MAX (PrecioVenta) FROM Productos);  
--Ejercicio 2
SELECT NOMBRE FROM Productos
WHERE CodigoProducto= (
SELECT CodigoProducto
FROM DetallePedidos
WHERE Cantidad=(
SELECT MAX(CANTIDAD)
FROM DetallePedidos));

--Ejercicio 3
SELECT NOMBRECLIENTE FROM Clientes
WHERE LimiteCredito>(SELECT SUM(CANTIDAD) FROM Pagos
WHERE Pagos.CodigoCliente=Clientes.CodigoCliente
GROUP BY CodigoCliente);

--EJERCICIO 4
SELECT NOMBRE,CantidadEnStock  FROM Productos
WHERE CantidadEnStock  = (SELECT MAX(CantidadEnStock) FROM Productos) OR
CantidadEnStock = (SELECT MIN(CantidadEnStock) FROM Productos);